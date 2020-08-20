import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

part 'moor_notifications_dao.g.dart';

@UseDao(tables: [MoorNotifications])
class MoorNotificationsDao extends DatabaseAccessor<Database> with _$MoorNotificationsDaoMixin {
  MoorNotificationsDao(Database db) : super(db);

  Future deleteNotification(Insertable<MoorNotification> notification) => delete(moorNotifications).delete(notification);

  Stream<List<MoorNotification>> watchNotifications(int userId) {
    final _contentQuery = select(moorNotifications)..where((moorNotifications) => moorNotifications.receiverId.equals(userId));
    return _contentQuery.watch();
  }
}
