import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

import 'moor_notification_with_relations.dart';

part 'moor_notifications_dao.g.dart';

@UseDao(
  tables: [
    MoorNotifications,
    MoorUsers,
  ],
)
class MoorNotificationsDao extends DatabaseAccessor<Database> with _$MoorNotificationsDaoMixin {
  MoorNotificationsDao(Database db) : super(db);

  Future<void> deleteNotification(int notificationId) async => delete(moorNotifications).where((_moorNotifications) => _moorNotifications.id.equals(notificationId));

  Future<int> deleteAllNotifications() => delete(moorNotifications).go();

  Future insertNotification(Insertable<MoorNotification> notification) => into(moorNotifications).insert(notification);

  Future<Stream<List<MoorNotificationWithRelations>>> watchNotifications() async {
    final _receiver = await db.moorUsersDao.getLoggedInUser();
    final _contentQuery = select(moorNotifications).join(
      [
        innerJoin(
          moorUsers,
          moorUsers.id.equalsExp(moorNotifications.senderId),
        ),
      ],
    )..where(moorNotifications.receiverId.equals(_receiver.id));
    return _contentQuery.watch().map(
          (_rows) => _rows
              .map(
                (_row) => MoorNotificationWithRelations(
                  notification: _row.readTable(moorNotifications),
                  sender: _row.readTable(moorUsers),
                  receiver: _receiver,
                ),
              )
              .toList(),
        );
  }
}
