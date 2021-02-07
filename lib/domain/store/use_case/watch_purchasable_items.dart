import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/item/item.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/store/repository/store_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class WatchPurchasableItems implements StreamUseCase<KtList<Item>, NoParams> {
  final StoreRepositoryInterface _repository;

  WatchPurchasableItems(this._repository);

  @override
  Stream<Either<Failure, KtList<Item>>> call(NoParams params) async* {
    yield* _repository.streamPurchasableItems();
  }
}
