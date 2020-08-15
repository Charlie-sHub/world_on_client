import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

part 'moor_notifications_dao.g.dart';

@UseDao(tables: [MoorNotifications])
class MoorNotificationsDao extends DatabaseAccessor<Database> with _$MoorNotificationsDaoMixin {
  MoorNotificationsDao(Database db) : super(db);

  // TODO: Rework it so it takes the an id as parameter
  // so delete(select... where id: id) or something like that
  Future deleteNotification(Insertable<MoorNotification> notification) => delete(moorNotifications).delete(notification);

  Stream<List<MoorNotification>> watchNotifications(MoorUser user) {
    // TODO: Implement this method
    return null;
  }
}
