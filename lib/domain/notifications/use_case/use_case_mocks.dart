import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/notifications/use_case/check_notification.dart';
import 'package:worldon/domain/notifications/use_case/delete_user_notifications.dart';
import 'package:worldon/domain/notifications/use_case/send_notification.dart';
import 'package:worldon/domain/notifications/use_case/watch_notifications.dart';

import 'delete_notification.dart';

@LazySingleton(as: CheckNotification, env: [Environment.test])
class MockCheckNotification extends Mock implements CheckNotification {}

@LazySingleton(as: DeleteNotification, env: [Environment.test])
class MockDeleteNotification extends Mock implements DeleteNotification {}

@LazySingleton(as: DeleteUserNotifications, env: [Environment.test])
class MockDeleteUserNotifications extends Mock implements DeleteUserNotifications {}

@LazySingleton(as: WatchNotifications, env: [Environment.test])
class MockLoadNotifications extends Mock implements WatchNotifications {}

@LazySingleton(as: SendNotification, env: [Environment.test])
class MockSendNotification extends Mock implements SendNotification {}
