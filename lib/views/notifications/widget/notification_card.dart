import 'package:flutter/material.dart' hide Notification;
import 'package:worldon/domain/core/entities/notification/notification.dart';

class NotificationCard extends StatelessWidget {
  final Notification notification;

  const NotificationCard({Key key, @required this.notification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(notification.toString());
  }
}
