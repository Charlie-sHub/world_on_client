import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';

class NotFoundErrorDisplay extends StatelessWidget {
  final String specificMessage;

  const NotFoundErrorDisplay({
    Key? key,
    required this.specificMessage,
  }) : super(key: key);

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
        const SizedBox(height: 15),
        Text(
          S.of(context).notFoundError,
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Text(
          specificMessage,
          style: const TextStyle(
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
