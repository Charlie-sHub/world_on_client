import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/notification.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/notifications/repository/notification_repository_interface.dart';

class SendNotification implements AsyncUseCase<Unit, Params> {
  final NotificationRepositoryInterface _repository;

  const SendNotification(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.sendNotification(params.notification);
  }
}

class Params {
  final Notification notification;

  Params({@required this.notification});
}
