import 'package:flutter/material.dart' hide Notification;
import 'package:worldon/domain/core/entities/notification/notification.dart';

class NotificationErrorCard extends StatelessWidget {
  final Notification notification;

  const NotificationErrorCard({Key key, @required this.notification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
