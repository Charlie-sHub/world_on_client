import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/notification.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/notifications/repository/notification_repository_interface.dart';

class LoadNotifications implements StreamUseCase<List<Notification>, NoParams> {
  final NotificationRepositoryInterface _repository;

  LoadNotifications(this._repository);

  @override
  Stream<Either<Failure, List<Notification>>> call(NoParams params) async* {
    yield* _repository.loadNotifications();
  }
}
