import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/notifications/repository/notification_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class DeleteNotification implements AsyncUseCase<Unit, Params> {
  final NotificationRepositoryInterface _repository;

  DeleteNotification(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.deleteNotification(params.id);
  }
}

class Params {
  final UniqueId id;

  Params({required this.id});
}
