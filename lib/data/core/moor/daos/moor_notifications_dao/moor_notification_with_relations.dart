import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

class MoorNotificationWithRelations {
  final MoorNotification notification;
  final MoorUser sender;
  final MoorUser receiver;

  MoorNotificationWithRelations({
    @required this.notification,
    @required this.sender,
    @required this.receiver,
  });
}
