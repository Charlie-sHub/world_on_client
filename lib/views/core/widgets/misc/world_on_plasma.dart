import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';

class WorldOnPlasma extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xe6000000),
        backgroundBlendMode: BlendMode.darken,
      ),
      child: PlasmaRenderer(
        type: PlasmaType.bubbles,
        particles: 28,
        color: const Color(0xc400ffe2),
        blur: 0.79,
        size: 0.67,
        speed: 2.5,
        blendMode: BlendMode.plus,
        particleType: ParticleType.atlas,
        variation1: 0.22,
        variation2: 0.1,
        variation3: 0.1,
        child: PlasmaRenderer(
          color: const Color(0x44ff002c),
          blur: 0.31,
          speed: 2.24,
          blendMode: BlendMode.plus,
          particleType: ParticleType.atlas,
          variation1: 0.34,
          variation2: 0.37,
          variation3: 0.22,
          child: const WorldOnProgressIndicator(size: 40),
        ),
      ),
    );
  }
}
