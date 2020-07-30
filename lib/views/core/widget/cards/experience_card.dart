import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/experience_card_actor/experience_card_actor_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/common_functions/get_color_by_difficulty.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/cards/simple_tag_display.dart';
import 'package:worldon/views/core/widget/misc/experience_done_counter.dart';
import 'package:worldon/views/core/widget/misc/experience_likes_counter.dart';
import 'package:worldon/views/core/widget/misc/user_image.dart';

class ExperienceCard extends StatelessWidget {
  final Experience experience;

  const ExperienceCard({Key key, @required this.experience}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ExperienceCardActorBloc>()
        ..add(
          ExperienceCardActorEvent.initialized(experience),
        ),
      child: BlocListener<ExperienceCardActorBloc, ExperienceCardActorState>(
        listener: experienceCardListener,
        child: Card(
          shape: const RoundedRectangleBorder(),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: <Widget>[
                ImageStack(experience: experience),
                Column(
                  children: <Widget>[
                    const SizedBox(height: 10),
                    AutoSizeText(
                      experience.name.getOrCrash(),
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ParticipateButton(experience: experience),
                        LogButton(experience: experience),
                        const ReportButton(),
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
}

class DifficultyDisplay extends StatelessWidget {
  const DifficultyDisplay({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const Text(
          "Difficulty: ",
          style: TextStyle(color: WorldOnColors.background),
        ),
        const SizedBox(width: 5),
        Text(
          experience.difficulty.getOrCrash().toString(),
          style: TextStyle(
            color: getColorByDifficulty(experience.difficulty.getOrCrash()),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class ReportButton extends StatelessWidget {
  const ReportButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.error_outline,
        size: 30,
        color: WorldOnColors.background,
      ),
      onPressed: () => FlushbarHelper.createInformation(
        message: "This is just a placeholder",
      ).show(context),
    );
  }
}

class LogButton extends StatelessWidget {
  const LogButton({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExperienceCardActorBloc, ExperienceCardActorState>(
      builder: (context, state) => AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (child, animation) => ScaleTransition(
          scale: animation,
          child: child,
        ),
        child: state.map(
          initial: (_) => Container(),
          actionInProgress: (_) => const CircularProgressIndicator(),
          inLog: (_) => DismissFromLogButton(experience: experience),
          notInLog: (_) => AddToLogButton(experience: experience),
          additionSuccess: (_) => DismissFromLogButton(experience: experience),
          additionFailure: (_) => AddToLogButton(experience: experience),
          dismissalSuccess: (_) => AddToLogButton(experience: experience),
          dismissalFailure: (_) => DismissFromLogButton(experience: experience),
        ),
      ),
    );
  }
}

class ParticipateButton extends StatelessWidget {
  const ParticipateButton({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: WorldOnColors.primary,
      onPressed: () => context.bloc<NavigationActorBloc>().add(
            NavigationActorEvent.experienceNavigationTapped(some(experience)),
          ),
      child: const Text(
        "Participate",
        style: TextStyle(
          color: WorldOnColors.white,
        ),
      ),
    );
  }
}

class ImageStack extends StatelessWidget {
  const ImageStack({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Stack(
        children: <Widget>[
          const Image(
            // TODO: Change to the real image from the experience
            image: AssetImage('assets/experience_placeholder_image.jpg'),
            fit: BoxFit.fill,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  UserImage(user: experience.creator),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Icon(
                      Icons.place,
                      size: 30,
                    ),
                    const AutoSizeText(
                      "500m",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: WorldOnColors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AddToLogButton extends StatelessWidget {
  const AddToLogButton({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: WorldOnColors.background,
      onPressed: () => context.bloc<ExperienceCardActorBloc>().add(
            ExperienceCardActorEvent.addedExperienceToLog(experience),
          ),
      child: const Text(
        "Add to Log",
        style: TextStyle(
          color: WorldOnColors.white,
        ),
      ),
    );
  }
}

class DismissFromLogButton extends StatelessWidget {
  const DismissFromLogButton({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: WorldOnColors.red,
      onPressed: () => context.bloc<ExperienceCardActorBloc>().add(
            ExperienceCardActorEvent.dismissedExperienceFromLog(experience),
          ),
      child: const Text(
        "Dismiss from Log",
        style: TextStyle(
          color: WorldOnColors.white,
        ),
      ),
    );
  }
}

// TODO: Customize snackbars
// And ensure they show above the navigation bar
void experienceCardListener(BuildContext context, ExperienceCardActorState state) =>
  state.maybeMap(
    actionInProgress: (_) =>
      FlushbarHelper.createLoading(
        message: "Action in progress",
        linearProgressIndicator: const LinearProgressIndicator(),
      ).show(context),
    additionFailure: (state) =>
      FlushbarHelper.createError(
        message: state.failure.maybeMap(
          coreData: (failure) =>
            failure.coreDataFailure.maybeMap(
              serverError: (failure) => failure.errorString,
              orElse: () => "Unknown Error",
            ),
          orElse: () => "Unknown Error",
        ),
      ).show(context),
    dismissalFailure: (state) =>
      FlushbarHelper.createError(
        message: state.failure.maybeMap(
          coreData: (failure) =>
            failure.coreDataFailure.maybeMap(
              serverError: (failure) => failure.errorString,
              orElse: () => "Unknown Error",
            ),
          orElse: () => "Unknown Error",
        ),
      ).show(context),
    orElse: () => null,
  );
