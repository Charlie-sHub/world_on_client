import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icon_shadow/icon_shadow.dart';
import 'package:worldon/application/experience_navigation/experience_finish_actor/experience_finish_actor_bloc.dart';
import 'package:worldon/application/experience_navigation/experience_like_actor/experience_like_actor_bloc.dart';
import 'package:worldon/application/experience_navigation/experience_navigation_watcher/experience_navigation_watcher_bloc.dart';
import 'package:worldon/application/experience_navigation/rate_experience_difficulty_actor/rate_experience_difficulty_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/common_functions/get_color_by_difficulty.dart';
import 'package:worldon/views/core/misc/string_constants.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/critical_error_display.dart';
import 'package:worldon/views/core/widget/world_on_progress_indicator.dart';

import 'rewards_list_view.dart';

class ExperienceFinish extends StatelessWidget {
  final Experience experience;

  const ExperienceFinish({Key key, @required this.experience}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ExperienceFinishActorBloc>()
        ..add(
          ExperienceFinishActorEvent.finishedExperience(experience),
        ),
      child: BlocBuilder<ExperienceFinishActorBloc, ExperienceFinishActorState>(
        builder: (context, state) => state.map(
          initial: (_) => Container(),
          actionInProgress: (_) => WorldOnProgressIndicator(),
          finishSuccess: (_) => FinishSuccessView(experience: experience),
          finishFailure: (state) => InkWell(
            onTap: () async => context.bloc<ExperienceFinishActorBloc>().add(
                  ExperienceFinishActorEvent.finishedExperience(experience),
                ),
            child: CriticalErrorDisplay(failure: state.failure),
          ),
        ),
      ),
    );
  }
}

class FinishSuccessView extends StatelessWidget {
  final Experience experience;

  const FinishSuccessView({Key key, @required this.experience}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: WorldOnColors.white,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: AutoSizeText(
                experience.title.getOrCrash(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: WorldOnColors.background,
                  fontSize: 28,
                ),
              ),
            ),
          ),
          // TODO: Check that all the AutoSizeText have bounds
          // https://pub.dev/packages/auto_size_text#troubleshooting
          const Text(
            "Experience Finished!",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: WorldOnColors.background,
              fontSize: 25,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              // TODO: Figure out way to calculate how well the User did the Experience
              // ANd show the appropriate amount of stars
              WorldOnStar(),
              WorldOnStar(),
              WorldOnStar(),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              "Rewards:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: WorldOnColors.background,
              ),
            ),
          ),
          RewardsListView(experience: experience),
          ExperiencedGainedText(experience: experience),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const Text(
                "Did you like it?",
                style: TextStyle(color: WorldOnColors.background),
              ),
              Row(
                children: <Widget>[
                  LikeDislikeButtonBuilder(experience: experience),
                  Text(
                    experience.likedBy.length.toString(),
                    style: const TextStyle(color: WorldOnColors.background),
                  ),
                ],
              ),
            ],
          ),
          RateDifficulty(experience: experience),
          const FinishButton(),
        ],
      ),
    );
  }
}

class ExperiencedGainedText extends StatelessWidget {
  const ExperiencedGainedText({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: AutoSizeText.rich(
          TextSpan(
            text: "You've gained: ",
            children: <TextSpan>[
              TextSpan(
                text: "${experience.difficulty.getOrCrash() * 1000}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: WorldOnColors.primary,
                  shadows: [
                    Shadow(
                      offset: Offset(1, 1),
                      blurRadius: 3,
                    )
                  ],
                ),
              ),
              const TextSpan(text: " experience points!"),
            ],
          ),
          style: const TextStyle(
            color: WorldOnColors.background,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

class FinishButton extends StatelessWidget {
  const FinishButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: RaisedButton(
        color: WorldOnColors.primary,
        onPressed: () => context.bloc<ExperienceNavigationWatcherBloc>().add(
              ExperienceNavigationWatcherEvent.initialized(none()),
            ),
        child: const Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            "Finish",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: WorldOnColors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class LikeDislikeButtonBuilder extends StatelessWidget {
  const LikeDislikeButtonBuilder({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ExperienceLikeActorBloc>()
        ..add(
          ExperienceLikeActorEvent.initialized(experience),
        ),
      child: BlocBuilder<ExperienceLikeActorBloc, ExperienceLikeActorState>(
        builder: (context, state) => AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          transitionBuilder: (child, animation) => ScaleTransition(
            scale: animation,
            child: child,
          ),
          child: state.map(
            initial: (_) => Container(),
            actionInProgress: (_) => const CircularProgressIndicator(),
            likes: (_) => DislikeExperienceButton(experience: experience),
            neutral: (_) => LikeExperienceButton(experience: experience),
            likeSuccess: (_) => DislikeExperienceButton(experience: experience),
            likeFailure: (_) => LikeExperienceButton(experience: experience),
          ),
        ),
      ),
    );
  }
}

class RateDifficulty extends StatelessWidget {
  const RateDifficulty({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RateExperienceDifficultyActorBloc>()
        ..add(
          RateExperienceDifficultyActorEvent.difficultyChanged(experience.difficulty.getOrCrash()),
        ),
      child: BlocListener<RateExperienceDifficultyActorBloc, RateExperienceDifficultyActorState>(
        listener: (context, state) => difficultyRatingListener,
        child: BlocBuilder<RateExperienceDifficultyActorBloc, RateExperienceDifficultyActorState>(
          builder: (context, state) =>
            Column(
              children: <Widget>[
                const Text(
                  "How difficult was the experience?",
                  style: TextStyle(color: WorldOnColors.background),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          trackHeight: 5,
                          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12),
                          overlayShape: const RoundSliderOverlayShape(),
                          showValueIndicator: ShowValueIndicator.always,
                        ),
                        child: Slider(
                          min: 1,
                          max: 10,
                          label: state.difficulty.toString(),
                          activeColor: getColorByDifficulty(state.difficulty),
                          onChanged: (value) =>
                            context.bloc<RateExperienceDifficultyActorBloc>().add(
                              RateExperienceDifficultyActorEvent.difficultyChanged(value.round()),
                            ),
                          value: state.difficulty.ceilToDouble(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: RaisedButton(
                        color: WorldOnColors.background,
                        onPressed: () =>
                          context.bloc<RateExperienceDifficultyActorBloc>().add(
                            RateExperienceDifficultyActorEvent.difficultyRated(experience),
                          ),
                        child: const Text(
                          "Submit rating",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: WorldOnColors.white,
                          ),
                        ),
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

  void difficultyRatingListener(RateExperienceDifficultyActorState state, BuildContext context) {
    if (state.isSubmitting) {
      FlushbarHelper.createLoading(
        duration: const Duration(seconds: 2),
        message: "Action in progress",
        linearProgressIndicator: const LinearProgressIndicator(),
      ).show(context);
    }
    state.failureOrSuccessOption.fold(
        () => null,
        (either) =>
        either.fold(
            (failure) =>
            FlushbarHelper.createError(
              duration: const Duration(seconds: 2),
              message: failure.maybeMap(
                value: (failure) =>
                  failure.valueFailure.maybeMap(
                    integerOutOfBounds: (failure) => "Invalid difficulty value: ${failure.failedValue}",
                    orElse: () => StringConst.unknownError,
                  ),
                coreData: (failure) =>
                  failure.coreDataFailure.maybeMap(
                    serverError: (failure) => failure.errorString,
                    orElse: () => StringConst.unknownError,
                  ),
                orElse: () => StringConst.unknownError,
              ),
            ).show(context),
            (_) => null,
      ),
    );
  }
}

class DislikeExperienceButton extends StatelessWidget {
  const DislikeExperienceButton({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: FaIcon(
        FontAwesomeIcons.heart,
        color: Colors.grey,
      ),
      onPressed: () => context.bloc<ExperienceLikeActorBloc>().add(
            ExperienceLikeActorEvent.liked(experience),
          ),
    );
  }
}

class LikeExperienceButton extends StatelessWidget {
  const LikeExperienceButton({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: FaIcon(
        FontAwesomeIcons.solidHeart,
        color: WorldOnColors.red,
      ),
      onPressed: () => context.bloc<ExperienceLikeActorBloc>().add(
            ExperienceLikeActorEvent.liked(experience),
          ),
    );
  }
}

class WorldOnStar extends StatelessWidget {
  const WorldOnStar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconShadowWidget(
      Icon(
        Icons.star,
        size: 50,
        color: WorldOnColors.primary,
      ),
      showShadow: true,
      shadowColor: Colors.black,
    );
  }
}
