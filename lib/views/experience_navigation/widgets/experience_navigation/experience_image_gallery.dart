import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/experience_add_to_log_actor/experience_add_to_log_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/log_button.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/share_externally_button.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/share_internally_button.dart';
import 'package:worldon/views/core/widgets/misc/world_on_cached_image.dart';

import '../../../core/widgets/misc/carousel_builder.dart';

class ExperienceImageGallery extends StatelessWidget {
  const ExperienceImageGallery({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    final _imageURLs = experience.imageURLs;
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
                        imageURL: _imageURLs.elementAt(index),
                      ),
                    ),
                  ),
                ),
                child: WorldOnCachedImage(
                  imageURL: _imageURLs.elementAt(index),
                ),
              ),
              itemCount: _imageURLs.length,
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Row(
              children: [
                ShareExternallyButton(experience: experience),
                ShareInternallyButton(experience: experience),
                BlocProvider(
                  create: (context) => getIt<ExperienceAddToLogActorBloc>()
                    ..add(
                      ExperienceAddToLogActorEvent.initialized(experience),
                    ),
                  child: LogButton(experience: experience),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
