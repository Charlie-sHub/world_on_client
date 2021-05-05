import 'package:flutter/material.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class WorldOnProgressIndicator extends StatelessWidget {
  const WorldOnProgressIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 60,
        height: 60,
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(WorldOnColors.primary),
          strokeWidth: 6,
        ),
      ),
    );
  }
}
