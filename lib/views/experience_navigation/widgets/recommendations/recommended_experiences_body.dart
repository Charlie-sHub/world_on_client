import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/recommended_experiences_watcher/recommended_experiences_watcher_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/expansion_experience_card.dart';
import 'package:worldon/views/core/widgets/error/error_display.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';

class RecommendedExperiencesBody extends StatelessWidget {
  const RecommendedExperiencesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => getIt<RecommendedExperiencesWatcherBloc>()
          ..add(
            const RecommendedExperiencesWatcherEvent
                .watchRecommendedExperiencesStarted(),
          ),
        child: BlocBuilder<RecommendedExperiencesWatcherBloc,
            RecommendedExperiencesWatcherState>(
          builder: (context, state) => state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const WorldOnProgressIndicator(
              size: 60,
            ),
            loadSuccess: (state) => RefreshIndicator(
              onRefresh: () async =>
                  context.read<RecommendedExperiencesWatcherBloc>().add(
                        const RecommendedExperiencesWatcherEvent
                            .watchRecommendedExperiencesStarted(),
                      ),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(
                  bottom: kFloatingActionButtonMargin + 50,
                  left: 5,
                  right: 5,
                  top: 5,
                ),
                itemCount: state.experiences.size,
                itemBuilder: (context, index) {
                  final _experience = state.experiences[index];
                  if (_experience.isValid) {
                    return ExpansionExperienceCard(
                      experience: _experience,
                      key: Key(_experience.id.toString()),
                      reloadFunction: () =>
                          context.read<RecommendedExperiencesWatcherBloc>().add(
                                const RecommendedExperiencesWatcherEvent
                                    .watchRecommendedExperiencesStarted(),
                              ),
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
              retryFunction: () =>
                  context.read<RecommendedExperiencesWatcherBloc>().add(
                        const RecommendedExperiencesWatcherEvent
                            .watchRecommendedExperiencesStarted(),
                      ),
              failure: state.failure,
              specificMessage: some(S.of(context).notFoundErrorRecommendations),
            ),
          ),
        ),
      );
}
