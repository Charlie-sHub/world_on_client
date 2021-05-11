import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/experience_card_actor/experience_card_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/log_button.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/share_button.dart';
import 'package:worldon/views/core/widgets/misc/world_on_cached_image.dart';

import 'carousel_builder.dart';

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
          CarouselBuilder(
            function: (index) => InkWell(
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
              child: ShaderMask(
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
                child: Image(
                  image: CachedNetworkImageProvider(
                    imageURLs.elementAt(index),
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            itemCount: imageURLs.length,
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Row(
              children: [
                BlocProvider(
                  create: (context) => getIt<ExperienceCardActorBloc>()
                    ..add(
                      ExperienceCardActorEvent.initialized(experience),
                    ),
                  child: LogButton(experience: experience),
                ),
                ShareButton(experience: experience),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
