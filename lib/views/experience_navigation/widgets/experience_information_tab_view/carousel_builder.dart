import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselBuilder extends StatelessWidget {
  final Widget Function(BuildContext, int, int) function;
  final int itemCount;

  const CarouselBuilder({
    Key key,
    @required this.function,
    @required this.itemCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.5,
        disableCenter: true,
        enlargeCenterPage: true,
      ),
      itemCount: itemCount,
      itemBuilder: function,
    );
  }
}
