import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:logger/logger.dart';
import 'package:quiver/iterables.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/firebase/firebase_helpers.dart';
import 'package:worldon/data/core/models/item/item_dto.dart';
import 'package:worldon/data/core/models/item/item_fields.dart';
import 'package:worldon/data/core/models/user/user_dto.dart';
import 'package:worldon/data/core/models/user/user_fields.dart';
import 'package:worldon/data/store/failure/store_data_failure.dart';
import 'package:worldon/domain/core/entities/item/item.dart';
import 'package:worldon/domain/core/entities/promotion_plan/promotion_plan.dart';
import 'package:worldon/domain/store/repository/store_repository_interface.dart';

@LazySingleton(as: StoreRepositoryInterface, env: [Environment.prod])
class ProductionStoreRepository implements StoreRepositoryInterface {
  final Logger _logger;
  final FirebaseFirestore _firestore;
  final _inAppPurchaseInstance = InAppPurchase.instance;

  ProductionStoreRepository(
    this._firestore,
    this._logger,
  );

  @override
  Future<Either<Failure, Unit>> buyCoins(int amount) async {
    final _ableToBuy = await _inAppPurchaseInstance.isAvailable();
    if (_ableToBuy) {
      try {
        final _snapshot = await _firestore.coinCollection.doc("coins").get();
        final _coins = _snapshot.data();
        if (amount == 10) {
          final _productDetailsResponse = await _inAppPurchaseInstance.queryProductDetails(
            {_coins!.tenCoinsProductId},
          );
          final _purchaseParam = PurchaseParam(
            productDetails: _productDetailsResponse.productDetails.first,
          );
          await _inAppPurchaseInstance.buyConsumable(
            purchaseParam: _purchaseParam,
          );
          final _userDocument = await _firestore.currentUserReference();
          await _userDocument.update(
            {
              UserFields.coins: FieldValue.increment(1),
            },
          );
        }
        return right(unit);
      } catch (error, _) {
        return left(_onError(error));
      }
    } else {
      _logger.e("In App Purchase is not available");
      return left(
        const Failure.storeData(
          StoreDataFailure.unAvailableStore(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> buyItem(Item item) async {
    try {
      final _boughtItem = item.copyWith(boughtDate: DateTime.now());
      final _user = await _firestore.currentUser();
      if (_user.coins >= _boughtItem.value) {
        _user.items.add(_boughtItem);
        final _jsonUser = UserDto.fromDomain(
          _user.copyWith(
            coins: _user.coins - _boughtItem.value,
          ),
        ).toJson();
        final _userDocument = await _firestore.currentUserReference();
        _userDocument.update(_jsonUser);
        return right(unit);
      } else {
        return left(
          const Failure.storeData(
            StoreDataFailure.notEnoughCoins(),
          ),
        );
      }
    } catch (error, _) {
      return left(_onError(error));
    }
  }

  @override
  Future<Either<Failure, Unit>> buyPromotionPlan(PromotionPlan plan) async {
    final _ableToBuy = await _inAppPurchaseInstance.isAvailable();
    if (_ableToBuy) {
      try {
        final _productDetailsResponse = await _inAppPurchaseInstance.queryProductDetails(
          {
            // The case of buying a "none" should be impossible
            // Even if it happens it should just throw an exception anyway
            plan.productId,
          },
        );
        final _purchaseParam = PurchaseParam(
          productDetails: _productDetailsResponse.productDetails.first,
        );
        await _inAppPurchaseInstance.buyConsumable(purchaseParam: _purchaseParam);
        final _currentUser = await _firestore.currentUser();
        final _updatedUser = _currentUser.copyWith(
          promotionPlan: plan,
        );
        final _jsonUser = UserDto.fromDomain(_updatedUser).toJson();
        final _userDocument = await _firestore.currentUserReference();
        _userDocument.update(_jsonUser);
        return right(unit);
      } catch (error, _) {
        return left(_onError(error));
      }
    } else {
      _logger.e("In App Purchase is not available");
      return left(const Failure.storeData(StoreDataFailure.unAvailableStore()));
    }
  }

  @override
  Stream<Either<Failure, KtList<Item>>> streamOwnedItems() async* {
    // Not sure this makes sense as a stream
    final _userDto = await _firestore.currentUserDto();
    if (_userDto.items.isNotEmpty) {
      final _iterableOfIdLists = partition(
        _userDto.followedUsersIds,
        10,
      );
      final _combinedStreamList = _iterableOfIdLists
          .map(
            (_idList) => _firestore.itemCollection
                .where(
                  ItemFields.id,
                  whereIn: _idList,
                )
                .snapshots(),
          )
          .toList();
      yield* CombineLatestStream(
        _combinedStreamList,
        (List<QuerySnapshot<ItemDto>> values) {
          final _itemList = <Item>[];
          for (final _snapshot in values) {
            for (final _document in _snapshot.docs) {
              final _item = _document.data().toDomain();
              _itemList.add(_item);
            }
          }
          return _itemList;
        },
      ).map(
        (items) {
          if (items.isNotEmpty) {
            return right<Failure, KtList<Item>>(
              items.toImmutableList(),
            );
          } else {
            return left<Failure, KtList<Item>>(
              const Failure.coreData(
                CoreDataFailure.notFoundError(),
              ),
            );
          }
        },
      ).onErrorReturnWith(
        (error, _) => left(_onError(error)),
      );
    } else {
      yield* Stream.value(
        left(
          const Failure.coreData(
            CoreDataFailure.notFoundError(),
          ),
        ),
      );
    }
  }

  @override
  Stream<Either<Failure, KtList<Item>>> streamPurchasableItems() async* {
    // Is it worth it for this to be a stream?
    // The list of items should rarely change
    yield* _firestore.itemCollection
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.map(
            (document) => document.data().toDomain(),
          ),
        )
        .map(
      (items) {
        if (items.isNotEmpty) {
          return right<Failure, KtList<Item>>(
            items.toImmutableList(),
          );
        } else {
          return left<Failure, KtList<Item>>(
            const Failure.coreData(
              CoreDataFailure.notFoundError(),
            ),
          );
        }
      },
    ).onErrorReturnWith(
      (error, _) => left(_onError(error)),
    );
  }

  @override
  Future<Either<Failure, KtList<PromotionPlan>>> loadPromotionPlans() async {
    try {
      final _querySnapshot = await _firestore.promotionPlanCollection.get();
      final _promotionPlans = _querySnapshot.docs
          .map(
            (_document) => _document.data().toDomain(),
          )
          .toImmutableList();
      return right(_promotionPlans);
    } catch (error, _) {
      return left(_onError(error));
    }
  }

  Failure _onError(dynamic error) {
    if (error is FirebaseException) {
      _logger.e("FirebaseException: ${error.message}");
      return Failure.coreData(
        CoreDataFailure.serverError(errorString: "Firebase error: ${error.message}"),
      );
    } else if (error is StateError) {
      _logger.e("StateError: ${error.message}");
      return Failure.coreData(
        CoreDataFailure.serverError(errorString: "State error: ${error.message}"),
      );
    } else {
      _logger.e("Unknown server error:  ${error.runtimeType}");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown data layer error"),
      );
    }
  }
}
