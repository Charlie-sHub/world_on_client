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
        Text(
          S.of(context).notFoundError,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Text(
          specificMessage,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.grey,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
