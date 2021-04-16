import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/rate_experience_difficulty_actor/rate_experience_difficulty_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/common_functions/get_color_by_difficulty.dart';
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
          builder: (context, state) => Card(
            shape: const RoundedRectangleBorder(
              side: BorderSide(
                color: WorldOnColors.primary,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                children: <Widget>[
                  Text(
                    S.of(context).difficultyQuestion,
                    style: const TextStyle(color: WorldOnColors.background),
                  ),
                  Slider(
                    min: 1,
                    max: 10,
                    label: state.difficulty.toString(),
                    activeColor: getColorByDifficulty(state.difficulty),
                    onChanged: (value) => context.read<RateExperienceDifficultyActorBloc>().add(
                          RateExperienceDifficultyActorEvent.difficultyChanged(value.round()),
                        ),
                    value: state.difficulty.ceilToDouble(),
                  ),
                  RaisedButton(
                    color: WorldOnColors.background,
                    onPressed: () => context.read<RateExperienceDifficultyActorBloc>().add(
                          RateExperienceDifficultyActorEvent.difficultyRated(experience),
                        ),
                    child: Text(
                      S.of(context).submitDifficultyRating,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: WorldOnColors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _submittingRatingListener(BuildContext context, RateExperienceDifficultyActorState state) {
    if (state.isSubmitting) {
      FlushbarHelper.createLoading(
        duration: const Duration(seconds: 2),
        message: S.of(context).actionInProgress,
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
              integerOutOfBounds: (failure) => "${S.of(context).difficultyOutOfBounds}: ${failure.failedValue}",
              orElse: () => S.of(context).unknownError,
            ),
            coreData: (failure) => failure.coreDataFailure.maybeMap(
              serverError: (failure) => failure.errorString,
              orElse: () => S.of(context).unknownError,
            ),
            orElse: () => S.of(context).unknownError,
          ),
        ).show(context),
        (_) => null,
      ),
    );
  }
}
