import 'package:flutter/material.dart';

class MessagesButton extends StatelessWidget {
  const MessagesButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.message,
        size: 30,
      ),
      onPressed: () {
        // TODO: Navigate to MessagesPage
      },
    );
  }
}
