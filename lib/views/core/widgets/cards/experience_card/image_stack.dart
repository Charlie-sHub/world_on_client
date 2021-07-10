import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/log_button_builder.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/share_externally_button.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/share_internally_button.dart';
import 'package:worldon/views/core/widgets/misc/carousel_builder.dart';
import 'package:worldon/views/core/widgets/misc/world_on_cached_image.dart';

import 'manage_button_builder.dart';

class ImageGalleryStack extends StatelessWidget {
  const ImageGalleryStack({
    Key? key,
    required this.experience,
    required this.reloadFunction,
  }) : super(key: key);

  final Experience experience;
  final Function() reloadFunction;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
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
              itemCount: experience.imageURLs.length,
              function: (index) => InkWell(
                onTap: () => context.read<NavigationActorBloc>().add(
                      NavigationActorEvent.experienceNavigationTapped(
                        some(experience),
                      ),
                    ),
                child: WorldOnCachedImage(
                  imageURL: experience.imageURLs.elementAt(index),
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Row(
              children: [
                ShareExternallyButton(experience: experience),
                ShareInternallyButton(experience: experience),
                LogButtonBuilder(experience: experience),
                ManageButtonBuilder(
                  experience: experience,
                  reloadFunction: reloadFunction,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
