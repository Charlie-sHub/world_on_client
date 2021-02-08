import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:worldon/data/core/misc/firebase_helpers.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';
import 'package:logger/logger.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/models/coins/coins_dto.dart';
import 'package:worldon/data/core/models/item/item_dto.dart';
import 'package:worldon/data/core/models/user/user_dto.dart';
import 'package:worldon/data/store/failure/store_data_failure.dart';
import 'package:worldon/domain/core/entities/item/item.dart';
import 'package:worldon/domain/store/repository/store_repository_interface.dart';

// TODO: Make IOS friendly version of this repository
// The code must be slightly different for IOS
@LazySingleton(as: StoreRepositoryInterface, env: [Environment.prod])
class ProductionStoreRepository implements StoreRepositoryInterface {
  final _logger = Logger();
  final FirebaseFirestore _firestore;
  final _inAppPurchaseInstance = InAppPurchaseConnection.instance;

  ProductionStoreRepository(this._firestore);

  @override
  Future<Either<Failure, Unit>> buyCoin() async {
    try {
      final _coins = CoinsDto.fromFirestore(
        await _firestore.getCoinProductIds(),
      );
      final _productDetailsResponse = await _inAppPurchaseInstance.queryProductDetails(
        {_coins.oneCoinProductId},
      );
      final _purchaseParam = PurchaseParam(
        productDetails: _productDetailsResponse.productDetails.first,
      );
      await _inAppPurchaseInstance.buyConsumable(purchaseParam: _purchaseParam);
      final _userDocument = await _firestore.userDocument();
      await _userDocument.update(
        {
          "coins": FieldValue.increment(1),
        },
      );
      return right(unit);
    } catch (error) {
      return left(_onError(error));
    }
  }

  @override
  Future<Either<Failure, Unit>> buyItem(Item item) async {
    try {
      final _user = await _firestore.currentUser();
      if (_user.coins >= item.value) {
        final _jsonUser = UserDto.fromDomain(
          _user.copyWith(
            coins: _user.coins - item.value,
            // Doing this is pretty dumb, transforming to KtSet to then Set again
            items: _user.items.toImmutableSet().plusElement(item).asSet(),
          ),
        ).toJson();
        await _firestore.userCollection.doc(_user.id.getOrCrash()).update(_jsonUser);
        return right(unit);
      } else {
        return left(
          const Failure.storeData(
            StoreDataFailure.notEnoughCoins(),
          ),
        );
      }
    } catch (error) {
      return left(_onError(error));
    }
  }

  @override
  Stream<Either<Failure, KtList<Item>>> streamOwnedItems() async* {
    // TODO: Should this be a stream?
    // The list of items will be pretty static considering it's obtained from an attribute of the user
    // Maybe if a way could be found of listening to the user's document changes
    // So each time its list of items changes the stream would update
    // a stream subscription of _userDocument.snapshots() could work for that
    final _userDocument = await _firestore.userDocument();
    final _userDto = UserDto.fromFirestore(await _userDocument.get());
    if (_userDto.items.isNotEmpty) {
      yield* _firestore.itemCollection
          .where(
            "id",
            whereIn: _userDto.items.map((item) => item.id).toList(),
          )
          .snapshots()
          .map(
            (snapshot) => snapshot.docs.map(
              (document) => ItemDto.fromFirestore(document).toDomain(),
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
        (error) => left(_onError(error)),
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
            (document) => ItemDto.fromFirestore(document).toDomain(),
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
      (error) => left(_onError(error)),
    );
  }

  Failure _onError(dynamic error) {
    if (error is FirebaseException) {
      _logger.e("FirebaseException: ${error.message}");
      return Failure.coreData(
        CoreDataFailure.serverError(errorString: "Firebase error: ${error.message}"),
      );
    } else {
      _logger.e("Unknown server error:  ${error.runtimeType}");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown server error"),
      );
    }
  }
}
