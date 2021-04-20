import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/misc/world_on_cached_image.dart';

import 'carousel_builder.dart';

class ExperienceImageGallery extends StatelessWidget {
  const ExperienceImageGallery({
    Key? key,
    required this.imageURLs,
  }) : super(key: key);

  final Set<String> imageURLs;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: CarouselBuilder(
        function: (_, index, realIdx) => InkWell(
          onTap: () => showDialog(
            context: context,
            builder: (context) => Dialog(
              backgroundColor: WorldOnColors.primary,
              child: InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: WorldOnCachedImage(
                    imageURL: imageURLs.elementAt(index),
                  ),
                ),
              ),
            ),
          ),
          child: Image(
            image: CachedNetworkImageProvider(
              imageURLs.elementAt(index),
            ),
            fit: BoxFit.contain,
          ),
        ),
        itemCount: imageURLs.length,
      ),
    );
  }
}
