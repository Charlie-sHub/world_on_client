import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/rate_experience_difficulty_actor/rate_experience_difficulty_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/common_functions/get_color_by_difficulty.dart';
import 'package:worldon/views/core/misc/string_constants.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class RateDifficultyWidget extends StatelessWidget {
  const RateDifficultyWidget({
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
        listener: _submittingRatingListener,
        child: BlocBuilder<RateExperienceDifficultyActorBloc, RateExperienceDifficultyActorState>(
          builder: (context, state) => Column(
            children: <Widget>[
              const Text(
                "How difficult was the experience?",
                style: TextStyle(color: WorldOnColors.background),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Slider(
                      min: 1,
                      max: 10,
                      label: state.difficulty.toString(),
                      activeColor: getColorByDifficulty(state.difficulty),
                      onChanged: (value) => context.bloc<RateExperienceDifficultyActorBloc>().add(
                            RateExperienceDifficultyActorEvent.difficultyChanged(value.round()),
                          ),
                      value: state.difficulty.ceilToDouble(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: RaisedButton(
                      color: WorldOnColors.background,
                      onPressed: () => context.bloc<RateExperienceDifficultyActorBloc>().add(
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

  void _submittingRatingListener(BuildContext context, RateExperienceDifficultyActorState state) {
    if (state.isSubmitting) {
      FlushbarHelper.createLoading(
        duration: const Duration(seconds: 2),
        message: "Action in progress",
        linearProgressIndicator: const LinearProgressIndicator(),
      ).show(context);
    }
    state.failureOrSuccessOption.fold(
      () => null,
      (either) => either.fold(
        (failure) => FlushbarHelper.createError(
          duration: const Duration(seconds: 2),
          message: failure.maybeMap(
            value: (failure) => failure.valueFailure.maybeMap(
              integerOutOfBounds: (failure) => "Invalid difficulty value: ${failure.failedValue}",
              orElse: () => StringConst.unknownError,
            ),
            coreData: (failure) => failure.coreDataFailure.maybeMap(
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
