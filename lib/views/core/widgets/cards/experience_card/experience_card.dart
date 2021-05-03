import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/experience_card_actor/experience_card_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/difficulty_display.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/image_stack.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/log_button.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/manage_button_builder.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/participate_button.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/share_button.dart';
import 'package:worldon/views/core/widgets/cards/tag_card/simple_tag_card_builder.dart';
import 'package:worldon/views/core/widgets/misc/experience_done_counter.dart';
import 'package:worldon/views/core/widgets/misc/experience_likes_counter.dart';

// TODO: Implement bloc that checks the distance from the experience
// And show it on the image or somewhere on the card
class ExperienceCard extends StatelessWidget {
  final Experience experience;
  final Function() reloadFunction;

  const ExperienceCard({
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
          shape: experience.isPromoted
              ? RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                  side: const BorderSide(
                    color: WorldOnColors.primary,
                    width: 3,
                  ),
                )
              : null,
          child: Column(
            children: <Widget>[
              ImageStack(experience: experience),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  children: <Widget>[
                    AutoSizeText(
                      experience.title.getOrCrash(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    AutoSizeText(
                      experience.description.getOrCrash(),
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ExperienceLikesCounter(experience: experience),
                        ExperienceDoneCounter(amount: experience.doneBy.length),
                        DifficultyDisplay(difficulty: experience.difficulty.getOrCrash()),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: ParticipateButton(experience: experience),
                        ),
                        LogButton(experience: experience),
                        ShareButton(experience: experience),
                        ManageButtonBuilder(
                          experience: experience,
                          reloadFunction: reloadFunction,
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 3,
                      runSpacing: 3,
                      children: <Widget>[
                        ...experience.tags.getOrCrash().asSet().map(
                              (tag) => SimpleTagCardBuilder(tag: tag),
                            ),
                      ],
                    ),
                  ],
                ),
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
