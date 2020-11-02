import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class SimpleTagDisplay extends StatelessWidget {
  final Tag tag;

  const SimpleTagDisplay({
    Key key,
    @required this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: WorldOnColors.accent,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: Text(
          tag.name.getOrCrash(),
          style: const TextStyle(
            color: WorldOnColors.accent,
          ),
        ),
      ),
    );
  }
}
