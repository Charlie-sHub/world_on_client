import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/widgets/misc/user_image.dart';
import 'package:worldon/views/core/widgets/misc/world_on_cached_image.dart';

class ImageStack extends StatelessWidget {
  const ImageStack({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WorldOnCachedImage(
          imageURL: experience.imageURLs.first,
        ),
        Positioned(
          left: 1,
          top: 1,
          child: UserImage(
            user: experience.creator,
            avatarRadius: 30,
          ),
        ),
      ],
    );
  }
}
