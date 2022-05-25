import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/log_button_builder.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/manage_button_builder.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/share_externally_button.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/share_internally_button.dart';
import 'package:worldon/views/core/widgets/misc/user_avatar_follow_checker.dart';
import 'package:worldon/views/core/widgets/misc/world_on_plasma.dart';

class SimpleExperienceCard extends StatelessWidget {
  const SimpleExperienceCard({
    Key? key,
    required this.experience,
    required this.reloadFunction,
  }) : super(key: key);

  final Experience experience;
  final Function() reloadFunction;
  static const double _heightMultiplier = 0.32;

  @override
  Widget build(BuildContext context) {
    final _imageHeight = MediaQuery.of(context).size.height * _heightMultiplier;
    return InkWell(
      onTap: () => context.read<NavigationActorBloc>().add(
            NavigationActorEvent.experienceNavigationTapped(
              some(experience),
            ),
          ),
      child: Card(
        clipBehavior: Clip.antiAlias,
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
                  Colors.black.withOpacity(0.6),
                ],
                stops: const [
                  0,
                  1,
                ],
              ).createShader(bounds),
              child: CachedNetworkImage(
                imageUrl: experience.imageURLs.first,
                height: _imageHeight,
                width: 320,
                fit: BoxFit.cover,
                progressIndicatorBuilder: (_, __, ___) => WorldOnPlasma(),
              ),
            ),
            Positioned(
              left: 3,
              top: 3,
              child: UserAvatarFollowChecker(
                user: experience.creator,
                checkIconSize: 15,
                avatarRadius: 20,
              ),
            ),
            Positioned(
              right: 0,
              bottom: 10,
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
            Positioned(
              left: 10,
              bottom: 10,
              child: SizedBox(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      experience.title.getOrCrash(),
                      maxLines: 2,
                      minFontSize: 10,
                      maxFontSize: 15,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: WorldOnColors.white,
                      ),
                    ),
                    AutoSizeText(
                      experience.creator.username.getOrCrash(),
                      minFontSize: 8,
                      maxFontSize: 12,
                      style: const TextStyle(
                        fontSize: 12,
                        color: WorldOnColors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
