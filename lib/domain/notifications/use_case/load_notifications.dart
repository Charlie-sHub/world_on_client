import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/notification.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/notifications/repository/notification_repository_interface.dart';

class LoadNotifications implements AsyncUseCase<List<Notification>, NoParams> {
  final NotificationRepositoryInterface _repository;

  LoadNotifications(this._repository);

  @override
  Future<Either<Failure, List<Notification>>> call(NoParams params) async {
    return _repository.loadNotifications();
  }
}
