import 'package:flutter/material.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class CriticalErrorDisplay extends StatelessWidget {
  final Failure failure;

  const CriticalErrorDisplay({Key key, @required this.failure}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      // TODO: Refactor the error view
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.error_outline,
              color: WorldOnColors.red,
              size: 70,
            ),
            const SizedBox(height: 10),
            const Text(
              "There's been a critical failure",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              "Details:",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5),
            Text(
              failure.toString(),
              style: const TextStyle(fontSize: 15),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
