import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/item/item.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

abstract class StoreRepositoryInterface {
  /// Returns a stream of all the [Item]s that can be purchased
  Stream<Either<Failure, KtList<Item>>> streamPurchasableItems();

  /// Returns a stream of all the [Item]s the current [User] owns
  Stream<Either<Failure, KtList<Item>>> streamOwnedItems();

  /// Updates the [User]'s document decreasing its coins by the value of the given [Item]
  Future<Either<Failure, Unit>> buyItem(Item item);

  /// Processes the purchase of a given amount of coins
  Future<Either<Failure, Unit>> buyCoin();
}
