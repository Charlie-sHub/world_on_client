import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/promotion_plan/promotion_plan.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/store/repository/store_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class BuyPromotionPlan implements AsyncUseCase<Unit, Params> {
  final StoreRepositoryInterface _repository;

  BuyPromotionPlan(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async =>
      _repository.buyPromotionPlan(params.plan);
}

class Params {
  final PromotionPlan plan;

  Params({required this.plan});
}
