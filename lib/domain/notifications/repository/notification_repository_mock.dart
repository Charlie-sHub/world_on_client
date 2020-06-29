import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/notifications/repository/notification_repository_interface.dart';

@LazySingleton(
  as: NotificationRepositoryInterface,
  env: Environment.test,
)
class MockNotificationRepository extends Mock implements NotificationRepositoryInterface {}
