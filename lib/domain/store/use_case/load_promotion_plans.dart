import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/promotion_plan/promotion_plan.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/store/repository/store_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class LoadPromotionPlans implements AsyncUseCase<KtList<PromotionPlan>, NoParams> {
  final StoreRepositoryInterface _repository;

  LoadPromotionPlans(this._repository);

  @override
  Future<Either<Failure, KtList<PromotionPlan>>> call(NoParams params) async {
    return _repository.loadPromotionPlans();
  }
}
