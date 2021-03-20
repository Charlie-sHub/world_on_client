import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/recommended_experiences_watcher/recommended_experiences_watcher_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/experience_card.dart';
import 'package:worldon/views/core/widgets/error/error_display.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';

import '../../../../injection.dart';

class RecommendedExperiencesBody extends StatelessWidget {
  const RecommendedExperiencesBody({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RecommendedExperiencesWatcherBloc>()
        ..add(
          const RecommendedExperiencesWatcherEvent.watchRecommendedExperiencesStarted(),
        ),
      child: BlocBuilder<RecommendedExperiencesWatcherBloc, RecommendedExperiencesWatcherState>(
        builder: (context, state) => state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const WorldOnProgressIndicator(),
          loadSuccess: (state) => RefreshIndicator(
            onRefresh: () async => context.read<RecommendedExperiencesWatcherBloc>().add(
                  const RecommendedExperiencesWatcherEvent.watchRecommendedExperiencesStarted(),
                ),
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(5),
              itemCount: state.experiences.size,
              itemBuilder: (context, index) {
                final _experience = state.experiences[index];
                if (_experience.isValid) {
                  return ExperienceCard(
                    experience: _experience,
                    key: Key(_experience.id.toString()),
                  );
                } else {
                  return ErrorCard(
                    entityType: S.of(context).experience,
                    valueFailureString: _experience.failureOption.fold(
                        () => S.of(context).noError,
                        (failure) => failure.toString(),
                    ),
                  );
                }
              },
            ),
          ),
          loadFailure: (state) => ErrorDisplay(
            retryFunction: () => context.read<RecommendedExperiencesWatcherBloc>().add(
                  const RecommendedExperiencesWatcherEvent.watchRecommendedExperiencesStarted(),
                ),
            failure: state.failure,
            specificMessage: some(S.of(context).notFoundErrorRecommendations),
          ),
        ),
      ),
    );
  }
}
