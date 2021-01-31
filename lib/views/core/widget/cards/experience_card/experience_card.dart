import 'package:auto_size_text/auto_size_text.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/experience_card_actor/experience_card_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/use_case/is_logged_in_user.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/cards/experience_card/delete_button_builder.dart';
import 'package:worldon/views/core/widget/cards/experience_card/difficulty_display.dart';
import 'package:worldon/views/core/widget/cards/experience_card/image_stack.dart';
import 'package:worldon/views/core/widget/cards/experience_card/log_button.dart';
import 'package:worldon/views/core/widget/cards/experience_card/participate_button.dart';
import 'package:worldon/views/core/widget/cards/experience_card/report_button.dart';
import 'package:worldon/views/core/widget/cards/simple_tag_display.dart';
import 'package:worldon/views/core/widget/misc/experience_done_counter.dart';
import 'package:worldon/views/core/widget/misc/experience_likes_counter.dart';

class ExperienceCard extends StatelessWidget {
  final Experience experience;
  
  const ExperienceCard({Key key, @required this.experience}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      getIt<ExperienceCardActorBloc>()
        ..add(
          ExperienceCardActorEvent.initialized(experience),
        ),
      child: BlocListener<ExperienceCardActorBloc, ExperienceCardActorState>(
        listener: _experienceCardListener,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: <Widget>[
                ImageStack(experience: experience),
                Column(
                  children: <Widget>[
                    const SizedBox(height: 10),
                    AutoSizeText(
                      experience.title.getOrCrash(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: WorldOnColors.background,
                      ),
                    ),
                    const SizedBox(height: 10),
                    AutoSizeText(
                      experience.description.getOrCrash(),
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontSize: 10,
                        color: WorldOnColors.background,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ExperienceLikesCounter(experience: experience),
                        ExperienceDoneCounter(experience: experience),
                        DifficultyDisplay(experience: experience),
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
                        const ReportButton(),
                        DeleteButtonBuilder(experience: experience),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 5,
                      children: <Widget>[
                        ...experience.tags.getOrCrash().asSet().map(
                            (tag) => SimpleTagDisplay(tag: tag),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
  // TODO: Customize snackbars
  // And ensure they show above the navigation bar
  void _experienceCardListener(BuildContext context, ExperienceCardActorState state) =>
    state.maybeMap(
      additionFailure: (state) =>
        FlushbarHelper.createError(
          duration: const Duration(seconds: 2),
          message: state.failure.maybeMap(
            coreData: (failure) =>
              failure.coreDataFailure.maybeMap(
                serverError: (failure) => failure.errorString,
                orElse: () =>
                S
                  .of(context)
                  .unknownError,
              ),
            orElse: () =>
            S
              .of(context)
              .unknownError,
          ),
        ).show(context),
      dismissalFailure: (state) =>
        FlushbarHelper.createError(
          duration: const Duration(seconds: 2),
          message: state.failure.maybeMap(
            coreData: (failure) =>
              failure.coreDataFailure.maybeMap(
                serverError: (failure) => failure.errorString,
                orElse: () =>
                S
                  .of(context)
                  .unknownError,
              ),
            orElse: () =>
            S
              .of(context)
              .unknownError,
          ),
        ).show(context),
      orElse: () => null,
    );
}
