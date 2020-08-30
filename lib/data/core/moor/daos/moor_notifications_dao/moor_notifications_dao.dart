import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/failures/error.dart';

import '../../tables/moor_notifications.dart';
import '../../tables/moor_users.dart';
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

  Future<int> insertNotification(Insertable<MoorNotification> notification) => into(moorNotifications).insert(notification);

  Future<MoorNotification> getNotificationById(int id) async {
    final _contentQuery = select(moorNotifications)..where((_notifications) => _notifications.id.equals(id));
    return _contentQuery.getSingle();
  }

  Future<int> deleteNotification(Insertable<MoorNotification> notification) async => delete(moorNotifications).delete(notification);

  Future<int> deleteAllNotifications() => delete(moorNotifications).go();

  Stream<List<MoorNotificationWithRelations>> watchNotifications() async* {
    final _receiverOption = await db.moorUsersDao.getLoggedInUser();
    final _receiver = _receiverOption.fold(
      () => throw UnAuthenticatedError,
      (_moorUserWithRelations) => _moorUserWithRelations.user,
    );
    final _contentQuery = select(moorNotifications).join(
      [
        innerJoin(
          moorUsers,
          moorUsers.id.equalsExp(moorNotifications.senderId),
        ),
      ],
    )..where(moorNotifications.receiverId.equals(_receiver.id));
    yield* _contentQuery.watch().map(
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
