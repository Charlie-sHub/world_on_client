import 'package:flutter/material.dart';
import 'package:sa3_liquid/sa3_liquid.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';

class WorldOnPlasma extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        backgroundBlendMode: BlendMode.darken,
      ),
      child: const PlasmaRenderer(
        type: PlasmaType.bubbles,
        particles: 28,
        color: Color(0x81172F77),
        speed: 1.5,
        blur: 0.79,
        size: 0.67,
        blendMode: BlendMode.plus,
        particleType: ParticleType.atlas,
        variation1: 0.22,
        variation2: 0.1,
        variation3: 0.1,
        child: PlasmaRenderer(
          color: Color(0x2fff002c),
          speed: 0.7,
          blendMode: BlendMode.plus,
          particleType: ParticleType.atlas,
          variation1: 0.34,
          variation2: 0.37,
          variation3: 0.22,
          child: WorldOnProgressIndicator(size: 40),
        ),
      ),
    );
  }
}
