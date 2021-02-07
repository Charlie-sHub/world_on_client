import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';

class NotFoundErrorDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Icon(
          Icons.sentiment_dissatisfied,
          color: Colors.grey,
          size: 70,
        ),
        const SizedBox(height: 10),
        Text(
          S.of(context).notFoundError,
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
