import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ErrorCard extends StatelessWidget {
  final String valueFailureString;
  final String entityType;

  const ErrorCard({
    Key key,
    @required this.valueFailureString,
    @required this.entityType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: WorldOnColors.red,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            Text(
              "${S.of(context).invalid} $entityType",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
                color: WorldOnColors.white,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "${S.of(context).details}: ",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                color: WorldOnColors.white,
              ),
            ),
            const SizedBox(height: 5),
            AutoSizeText(
              valueFailureString,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 12,
                color: WorldOnColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
