import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/notifications/repository/notification_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class LoadNotifications implements StreamUseCase<KtList<Notification>, NoParams> {
  final NotificationRepositoryInterface _repository;

  LoadNotifications(this._repository);

  @override
  Stream<Either<Failure, KtList<Notification>>> call(NoParams params) async* {
    yield* _repository.loadNotifications();
  }
}
