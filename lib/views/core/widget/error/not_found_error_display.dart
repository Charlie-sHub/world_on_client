import 'package:flutter/material.dart';

class NotFoundErrorDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Icon(
          Icons.sentiment_dissatisfied,
          color: Colors.grey,
          size: 70,
        ),
        SizedBox(height: 10),
        Text(
          "There's nothing to show",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
