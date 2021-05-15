import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';

class WorldOnPlasma extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          tileMode: TileMode.mirror,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xfff40bbf),
            Color(0xff21f3ec),
          ],
          stops: [
            0,
            1,
          ],
        ),
        backgroundBlendMode: BlendMode.srcOver,
      ),
      child: PlasmaRenderer(
        type: PlasmaType.bubbles,
        particles: 36,
        color: const Color(0x44ffffff),
        size: 0.51,
        speed: 5.39,
        blendMode: BlendMode.plus,
        particleType: ParticleType.atlas,
        child: const WorldOnProgressIndicator(size: 40),
      ),
    );
  }
}
