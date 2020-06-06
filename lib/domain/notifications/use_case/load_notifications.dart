import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/notification.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/notifications/repository/notification_repository_interface.dart';

class LoadNotifications implements AsyncUseCase<List<Notification>, Params> {
  final NotificationRepositoryInterface _repository;

  const LoadNotifications(this._repository);

  @override
  Future<Either<Failure, List<Notification>>> call(Params params) async {
    return _repository.loadNotifications(params.userId);
  }
}

class Params {
  final int userId;

  Params({@required this.userId});
}
