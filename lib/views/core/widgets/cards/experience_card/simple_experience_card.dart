import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/experience_card_actor/experience_card_actor_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/share_externally_button.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/share_internally_button.dart';
import 'package:worldon/views/core/widgets/misc/user_image.dart';
import 'package:worldon/views/core/widgets/misc/world_on_plasma.dart';

import 'log_button.dart';
import 'manage_button_builder.dart';

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
    return BlocProvider(
      create: (context) => getIt<ExperienceCardActorBloc>()
        ..add(
          ExperienceCardActorEvent.initialized(experience),
        ),
      child: BlocListener<ExperienceCardActorBloc, ExperienceCardActorState>(
        listener: _experienceCardListener,
        child: InkWell(
          onTap: () => context.read<NavigationActorBloc>().add(
                NavigationActorEvent.experienceNavigationTapped(some(experience)),
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
                    height: MediaQuery.of(context).size.height * _heightMultiplier,
                    width: 320,
                    fit: BoxFit.cover,
                    progressIndicatorBuilder: (context, url, progress) => WorldOnPlasma(),
                  ),
                ),
                Positioned(
                  left: 3,
                  top: 3,
                  child: UserImage(
                    userId: experience.creator.id,
                    imageUrl: experience.creator.imageURL,
                    adminPowers: experience.creator.adminPowers,
                    avatarRadius: 20,
                    checkIconSize: 15,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 5,
                  child: Row(
                    children: [
                      ShareExternallyButton(experience: experience),
                      ShareInternallyButton(experience: experience),
                      LogButton(experience: experience),
                      ManageButtonBuilder(
                        experience: experience,
                        reloadFunction: reloadFunction,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 5,
                  bottom: 5,
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
                          experience.getFormattedCreationDateString,
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
        ),
      ),
    );
  }

  void _experienceCardListener(BuildContext context, ExperienceCardActorState state) => state.maybeMap(
        additionFailure: (state) => FlushbarHelper.createError(
          duration: const Duration(seconds: 2),
          message: state.failure.maybeMap(
              coreData: (failure) => failure.coreDataFailure.maybeMap(
                    serverError: (failure) => failure.errorString,
                    orElse: () => S.of(context).unknownError,
                  ),
              orElse: () => S.of(context).unknownError),
        ).show(context),
        dismissalFailure: (state) => FlushbarHelper.createError(
          duration: const Duration(seconds: 2),
          message: state.failure.maybeMap(
              coreData: (failure) => failure.coreDataFailure.maybeMap(
                    serverError: (failure) => failure.errorString,
                    orElse: () => S.of(context).unknownError,
                  ),
              orElse: () => S.of(context).unknownError),
        ).show(context),
        orElse: () {},
      );
}
