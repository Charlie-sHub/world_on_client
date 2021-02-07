import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/item/item.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/store/repository/store_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class BuyItem implements AsyncUseCase<Unit, Params> {
  final StoreRepositoryInterface _repository;

  BuyItem(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.buyItem(params.item);
  }
}

class Params {
  final Item item;

  Params({@required this.item});
}
