import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class SimpleTagDisplay extends StatelessWidget {
  final Tag tag;

  const SimpleTagDisplay({
    Key? key,
    required this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      elevation: 5,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      backgroundColor: Colors.blueGrey,
      label: Text(
        tag.name.getOrCrash(),
        style: const TextStyle(
          color: WorldOnColors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
