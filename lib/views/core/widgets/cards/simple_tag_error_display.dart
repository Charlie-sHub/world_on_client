import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class SimpleTagErrorDisplay extends StatelessWidget {
  final Tag tag;

  const SimpleTagErrorDisplay({
    Key? key,
    required this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: WorldOnColors.red,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: Text(
            tag.failureOption.fold(
              () => S.of(context).noError,
              (failure) => failure.toString(),
            ),
            style: const TextStyle(
              color: WorldOnColors.red,
            ),
          ),
        ),
      );
}
