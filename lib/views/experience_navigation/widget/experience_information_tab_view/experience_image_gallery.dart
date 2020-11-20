import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';

import 'carousel_builder.dart';

class ExperienceImageGallery extends StatelessWidget {
  const ExperienceImageGallery({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: CarouselBuilder(
        function: (_, index) => Image(
          image: NetworkImage(experience.imageURLs.elementAt(index)),
          fit: BoxFit.fill,
        ),
        itemCount: experience.imageURLs.length,
      ),
    );
  }
}
