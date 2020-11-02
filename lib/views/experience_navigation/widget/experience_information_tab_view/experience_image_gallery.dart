import 'package:flutter/material.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
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
      child: experience.imageAssetsOption.fold(
        () => CarouselBuilder(
          function: (_, index) => Image(
            image: AssetImage(experience.imageURLs.elementAt(index)),
            fit: BoxFit.fill,
          ),
          itemCount: experience.imageURLs.length,
        ),
        (_assetList) => CarouselBuilder(
          function: (_, index) => AssetThumb(
            asset: _assetList.elementAt(index),
            width: 500,
            height: 500,
          ),
          itemCount: experience.imageURLs.length,
        ),
      ),
    );
  }
}
