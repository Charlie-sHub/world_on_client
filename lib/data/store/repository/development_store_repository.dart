import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/item/item.dart';
import 'package:worldon/domain/core/entities/promotion_plan/promotion_plan.dart';
import 'package:worldon/domain/store/repository/store_repository_interface.dart';

@LazySingleton(as: StoreRepositoryInterface, env: [Environment.dev])
class DevelopmentStoreRepository implements StoreRepositoryInterface {
  @override
  Future<Either<Failure, Unit>> buyCoins(int amount) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> buyItem(Item item) {
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Item>>> streamOwnedItems() {
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Item>>> streamPurchasableItems() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> buyPromotionPlan(PromotionPlan plan) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, KtList<PromotionPlan>>> loadPromotionPlans() {
    throw UnimplementedError();
  }
}
