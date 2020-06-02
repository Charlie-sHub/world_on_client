import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/notifications/repository/notification_repository.dart';

class CheckNotification implements AsyncUseCase<Unit, Params> {
  final NotificationRepository _repository;

  const CheckNotification(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.checkNotification(params.id);
  }
}

class Params {
  final int id;

  Params({@required this.id});
}
