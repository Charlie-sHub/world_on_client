import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/log_button_builder.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/share_externally_button.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/share_internally_button.dart';
import 'package:worldon/views/core/widgets/misc/carousel_builder.dart';
import 'package:worldon/views/core/widgets/misc/world_on_cached_image.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_navigation/experience_information/exit_experience_button.dart';

class ExperienceImageGallery extends StatelessWidget {
  const ExperienceImageGallery({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    final imageURLs = experience.imageURLs;
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Stack(
        children: [
          ShaderMask(
            blendMode: BlendMode.darken,
            shaderCallback: (bounds) => LinearGradient(
              begin: Alignment.center,
              end: Alignment.topCenter,
              colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.4),
              ],
              stops: const [
                0,
                1,
              ],
            ).createShader(bounds),
            child: CarouselBuilder(
              function: (index) => InkWell(
                onTap: () => showDialog(
                  context: context,
                  builder: (context) => Dialog(
                    clipBehavior: Clip.antiAlias,
                    child: InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: WorldOnCachedImage(
                        imageURL: imageURLs.elementAt(index),
                      ),
                    ),
                  ),
                ),
                child: WorldOnCachedImage(
                  imageURL: imageURLs.elementAt(index),
                ),
              ),
              itemCount: imageURLs.length,
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            top: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ExitExperienceButton(),
                Row(
                  children: [
                    ShareExternallyButton(experience: experience),
                    ShareInternallyButton(experience: experience),
                    LogButtonBuilder(experience: experience),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
