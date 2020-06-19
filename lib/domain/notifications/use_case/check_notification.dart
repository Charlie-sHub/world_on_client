import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/notifications/repository/notification_repository_interface.dart';

class CheckNotification implements AsyncUseCase<Unit, Params> {
  final NotificationRepositoryInterface _repository;

  CheckNotification(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.checkNotification(params.id);
  }
}

class Params {
  final int id;

  Params({@required this.id});
}
