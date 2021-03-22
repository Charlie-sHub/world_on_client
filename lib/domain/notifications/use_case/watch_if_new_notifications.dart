import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/notifications/repository/notification_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class WatchIfNewNotifications implements StreamUseCase<bool, NoParams> {
  final NotificationRepositoryInterface _repository;

  WatchIfNewNotifications(this._repository);

  @override
  Stream<Either<Failure, bool>> call(NoParams params) async* {
    yield* _repository.watchIfNewNotifications();
  }
}
