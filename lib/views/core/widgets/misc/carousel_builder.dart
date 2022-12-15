import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class CarouselBuilder extends StatelessWidget {
  final Widget Function(int) function;
  final int itemCount;

  const CarouselBuilder({
    Key? key,
    required this.function,
    required this.itemCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => CarouselSlider.builder(
        itemCount: itemCount,
        unlimitedMode: true,
        slideIndicator: CircularSlideIndicator(
          padding: const EdgeInsets.only(bottom: 15),
          currentIndicatorColor: WorldOnColors.white,
          indicatorBackgroundColor: WorldOnColors.white.withOpacity(0.5),
          indicatorRadius: 3,
          itemSpacing: 15,
        ),
        slideBuilder: function,
      );
}
