import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/manage_button_builder.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';

class ProfileExperienceCard extends StatelessWidget {
  const ProfileExperienceCard({
    Key? key,
    required this.experience,
    required this.reloadFunction,
  }) : super(key: key);

  final Experience experience;
  final Function() reloadFunction;
  static const double _heightMultiplier = 0.3;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.read<NavigationActorBloc>().add(
            NavigationActorEvent.experienceNavigationTapped(some(experience)),
          ),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            ShaderMask(
              blendMode: BlendMode.darken,
              shaderCallback: (bounds) => LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.75),
                ],
                stops: const [
                  0,
                  1,
                ],
              ).createShader(bounds),
              child: CachedNetworkImage(
                imageUrl: experience.imageURLs.first,
                height: MediaQuery.of(context).size.height * _heightMultiplier,
                width: 200,
                fit: BoxFit.cover,
                progressIndicatorBuilder: (context, url, progress) => const Padding(
                  padding: EdgeInsets.all(15),
                  child: WorldOnProgressIndicator(),
                ),
              ),
            ),
            Positioned(
              left: 5,
              bottom: 5,
              child: SizedBox(
                width: 160,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      experience.title.getOrCrash(),
                      maxLines: 2,
                      minFontSize: 7,
                      maxFontSize: 10,
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: WorldOnColors.white,
                      ),
                    ),
                    AutoSizeText(
                      experience.getFormattedCreationDateString,
                      style: const TextStyle(
                        fontSize: 10,
                        color: WorldOnColors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 5,
              top: 5,
              child: ManageButtonBuilder(
                experience: experience,
                reloadFunction: reloadFunction,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
