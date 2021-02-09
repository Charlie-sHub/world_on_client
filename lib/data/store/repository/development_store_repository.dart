import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/item/item.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/store/repository/store_repository_interface.dart';

@LazySingleton(as: StoreRepositoryInterface, env: [Environment.dev])
class DevelopmentStoreRepository implements StoreRepositoryInterface {
  @override
  Future<Either<Failure, Unit>> buyCoins(int amount) {
    // TODO: implement buyCoins
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> buyItem(Item item) {
    // TODO: implement buyItem
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Item>>> streamOwnedItems() {
    // TODO: implement streamOwnedItems
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Item>>> streamPurchasableItems() {
    // TODO: implement streamPurchasableItems
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> loadCurrentUser() {
    // TODO: implement loadCurrentUser
    throw UnimplementedError();
  }
}
