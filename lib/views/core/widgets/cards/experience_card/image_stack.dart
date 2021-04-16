import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/widgets/misc/user_image.dart';
import 'package:worldon/views/core/widgets/misc/world_on_cached_image.dart';

class ImageStack extends StatelessWidget {
  const ImageStack({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: WorldOnCachedImage(
            imageURL: experience.imageURLs.first,
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: UserImage(user: experience.creator),
          ),
        ),
      ],
    );
  }
}
