import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/notifications/use_case/check_notification.dart';
import 'package:worldon/domain/notifications/use_case/delete_user_notifications.dart';
import 'package:worldon/domain/notifications/use_case/load_notifications.dart';
import 'package:worldon/domain/notifications/use_case/send_notification.dart';

@LazySingleton(as: CheckNotification, env: Environment.test)
class MockCheckNotification extends Mock implements CheckNotification {}

@LazySingleton(as: DeleteUserNotifications, env: Environment.test)
class MockDeleteUserNotifications extends Mock implements DeleteUserNotifications {}

@LazySingleton(as: LoadNotifications, env: Environment.test)
class MockLoadNotifications extends Mock implements LoadNotifications {}

@LazySingleton(as: SendNotification, env: Environment.test)
class MockSendNotification extends Mock implements SendNotification {}
