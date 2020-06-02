import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/notifications/repository/notification_repository.dart';

class DeleteUserNotifications implements AsyncUseCase<Unit, Params> {
  final NotificationRepository _repository;

  const DeleteUserNotifications(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.deleteUserNotifications(params.userId);
  }
}

class Params {
  final int userId;

  Params({@required this.userId});
}
