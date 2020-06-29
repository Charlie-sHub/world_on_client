import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/notifications/repository/notification_repository_interface.dart';

@lazySingleton
class DeleteUserNotifications implements AsyncUseCase<Unit, NoParams> {
  final NotificationRepositoryInterface _repository;
  
  DeleteUserNotifications(this._repository);
  
  @override
  Future<Either<Failure, Unit>> call(NoParams params) async {
    return _repository.deleteUserNotifications();
  }
}
