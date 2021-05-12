import 'package:flutter/material.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class WorldOnProgressIndicator extends StatelessWidget {
  const WorldOnProgressIndicator({
    Key? key,
    required this.size,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: size,
        height: size,
        child: const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(WorldOnColors.primary),
          strokeWidth: 6,
        ),
      ),
    );
  }
}
