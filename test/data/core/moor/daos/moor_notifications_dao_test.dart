import 'package:flutter_test/flutter_test.dart';
import 'package:moor/moor.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_notification.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/data/core/moor/converters/domain_notification_to_moor_notification.dart';
import 'package:worldon/data/core/moor/converters/domain_user_to_moor_user_companion.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';

import '../../../../test_descriptions.dart';

void main() {
  Database _database;
  setUp(
    () {
      _database = Database.test(VmDatabase.memory());
    },
  );
  tearDown(
    () async {
      await _database.close();
    },
  );
  final _notification = getValidNotification();

  final _user = getValidUser();
  final _moorUserRicky = domainUserToMoorUserCompanion(_user).copyWith(
    isLoggedIn: const Value(false),
  );
  final _moorUserCharlie = _moorUserRicky.copyWith(
    name: const Value("Carlos"),
    username: const Value("charlie"),
    email: const Value("wew@lad.lel"),
    description: const Value("Why even live?"),
    isLoggedIn: const Value(true),
  );
  test(
    "Should insert a notification",
    () async {
      // Arrange
      await _database.moorUsersDao.insertUser(_moorUserRicky);
      await _database.moorUsersDao.insertUser(_moorUserCharlie);
      final _notificationCompanion = domainNotificationToMoorNotification(_notification).copyWith(
        senderId: Value(_moorUserCharlie.id.value),
        receiverId: Value(_moorUserRicky.id.value),
      );
      // Act
      await _database.moorNotificationsDao.insertNotification(_notificationCompanion);
      final _moorNotification = await _database.moorNotificationsDao.getNotificationById(_notificationCompanion.id.value);
      // Assert
      expect(_moorNotification.toCompanion(true), _notificationCompanion);
    },
  );
  group(
    TestDescription.groupDeletion,
    () {
      test(
        "Should delete a notification",
        () async {
          // Arrange
          await _database.moorUsersDao.insertUser(_moorUserRicky);
          await _database.moorUsersDao.insertUser(_moorUserCharlie);
          final _notificationCompanion = domainNotificationToMoorNotification(_notification).copyWith(
            senderId: Value(_moorUserCharlie.id.value),
            receiverId: Value(_moorUserRicky.id.value),
          );
          // Act
          await _database.moorNotificationsDao.insertNotification(_notificationCompanion);
          final _moorNotification = await _database.moorNotificationsDao.getNotificationById(_notificationCompanion.id.value);
          final _deletedAmount = await _database.moorNotificationsDao.deleteNotification(_moorNotification);
          // Assert
          expect(_deletedAmount, 1);
        },
      );
      test(
        "Should delete all notifications",
        () async {
          // Arrange
          await _database.moorUsersDao.insertUser(_moorUserRicky);
          await _database.moorUsersDao.insertUser(_moorUserCharlie);
          final _notificationsList = _createNotificationList(_notification, _moorUserCharlie.id.value, _moorUserRicky.id.value);
          // Act
          for (final _moorNotification in _notificationsList) {
            await _database.moorNotificationsDao.insertNotification(_moorNotification);
          }
          final _deletedAmount = await _database.moorNotificationsDao.deleteAllNotifications();
          // Assert
          expect(_deletedAmount, _notificationsList.length);
        },
      );
    },
  );
  test(
    "Should emit a stream of all notifications of a user",
    () async {
      // Arrange
      await _database.moorUsersDao.insertUser(_moorUserRicky);
      await _database.moorUsersDao.insertUser(_moorUserCharlie);
      final _notificationsList = _createNotificationList(_notification, _moorUserCharlie.id.value, _moorUserRicky.id.value);
      final _userNotificationsList = [];
      // Act
      for (final _moorNotification in _notificationsList) {
        await _database.moorNotificationsDao.insertNotification(_moorNotification);
        if (_moorNotification.receiverId.value == _moorUserCharlie.id.value) {
          _userNotificationsList.add(_moorNotification.copyWith(id: Value(_moorNotification.id.value)));
        }
      }
      final _notificationListStream = _database.moorNotificationsDao.watchNotifications();
      // Assert
      expectLater(
        _notificationListStream.map(
          (_moorNotificationWithRelationsList) => _moorNotificationWithRelationsList
              .map(
                (_moorNotificationWithRelations) => _moorNotificationWithRelations.notification.toCompanion(true),
              )
              .toList(),
        ),
        emitsInOrder([_userNotificationsList]),
      );
    },
  );
}

List<MoorNotificationsCompanion> _createNotificationList(Notification notification, String someId, String otherId) {
  return [
    domainNotificationToMoorNotification(notification).copyWith(
      senderId: Value(someId),
      receiverId: Value(otherId),
    ),
    domainNotificationToMoorNotification(notification).copyWith(
      senderId: Value(otherId),
      receiverId: Value(someId),
    ),
  ];
}
