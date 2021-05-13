import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

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
            Color(0xfff44336),
            Color(0xff2196f3),
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
        particles: 24,
        color: const Color(0x26474747),
        blur: 0.54,
        size: 1.2,
        speed: 3.22,
        offset: 0.58,
        blendMode: BlendMode.plus,
        particleType: ParticleType.atlas,
        variation1: 0.53,
        variation2: 0.22,
        variation3: 0.8,
        rotation: -0.45,
      ),
    );
  }
}
