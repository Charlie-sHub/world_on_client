import 'package:flutter/material.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class CriticalErrorDisplay extends StatelessWidget {
  final Failure failure;

  const CriticalErrorDisplay({
    Key? key,
    required this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Icon(
            Icons.error_outline,
            color: WorldOnColors.red,
            size: 70,
          ),
          const SizedBox(height: 10),
          Text(
            S.of(context).criticalErrorDisplayTitle,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            "${S.of(context).details}: ",
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 5),
          Text(
            failure.toString(),
            style: const TextStyle(fontSize: 15),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 50),
          Text(
            S.of(context).criticalErrorDisplayRetry,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
