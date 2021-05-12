import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/experience_card_actor/experience_card_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/log_button.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/participate_button.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/share_button.dart';
import 'package:worldon/views/core/widgets/cards/tag_card/simple_tag_card_builder.dart';
import 'package:worldon/views/core/widgets/misc/carousel_builder.dart';
import 'package:worldon/views/core/widgets/misc/difficulty_display.dart';
import 'package:worldon/views/core/widgets/misc/experience_done_counter.dart';
import 'package:worldon/views/core/widgets/misc/experience_likes_counter.dart';
import 'package:worldon/views/core/widgets/misc/experience_points_view.dart';
import 'package:worldon/views/core/widgets/misc/user_image.dart';
import 'package:worldon/views/core/widgets/misc/world_on_cached_image.dart';

import 'manage_button_builder.dart';

// TODO: Implement bloc that checks the distance from the experience
// And show it on the image or somewhere on the card
class ExpansionExperienceCard extends StatelessWidget {
  final Experience experience;
  final Function() reloadFunction;

  const ExpansionExperienceCard({
    Key? key,
    required this.experience,
    required this.reloadFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ExperienceCardActorBloc>()
        ..add(
          ExperienceCardActorEvent.initialized(experience),
        ),
      child: BlocListener<ExperienceCardActorBloc, ExperienceCardActorState>(
        listener: _experienceCardListener,
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: <Widget>[
              SizedBox(
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
                        function: (index) => WorldOnCachedImage(
                          imageURL: experience.imageURLs.elementAt(index),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Row(
                        children: [
                          LogButton(experience: experience),
                          ShareButton(experience: experience),
                          ManageButtonBuilder(
                            experience: experience,
                            reloadFunction: reloadFunction,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ExpansionTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 5,
                        bottom: 5,
                        top: 5,
                      ),
                      child: UserImage(
                        user: experience.creator,
                        avatarRadius: 25,
                        checkIconSize: 17,
                      ),
                    ),
                    Flexible(
                      flex: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40,
                            child: AutoSizeText(
                              experience.title.getOrCrash(),
                              minFontSize: 10,
                              maxFontSize: 15,
                              maxLines: 5,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          FittedBox(
                            child: AutoSizeText(
                              "@${experience.creator.username.getOrCrash()}",
                              minFontSize: 9,
                              maxFontSize: 14,
                              style: const TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    ExperienceLikesCounter(experience: experience),
                  ],
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        AutoSizeText(
                          experience.description.getOrCrash(),
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ExperienceDoneCounter(amount: experience.doneBy.length),
                                DifficultyDisplay(difficulty: experience.difficulty.getOrCrash()),
                                ExperiencePointsView(difficulty: experience.difficulty.getOrCrash()),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: ParticipateButton(
                                experience: experience,
                                size: 60,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.08,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            clipBehavior: Clip.none,
                            children: <Widget>[
                              ...experience.tags.getOrCrash().asSet().map(
                                    (tag) => SimpleTagCardBuilder(tag: tag),
                                  ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // TODO: Customize snackbars
  // And ensure they show above the navigation bar
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
