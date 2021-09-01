import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/recommended_experiences_watcher/recommended_experiences_watcher_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/core/widgets/error/critical_error_display.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';
import 'package:worldon/views/profile/widgets/profile_experiences_tab_view/profile_experience_card.dart';

import '../../../../injection.dart';

class RecommendedExperiencesBottomBar extends StatelessWidget {
  const RecommendedExperiencesBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: BlocProvider(
        create: (context) => getIt<RecommendedExperiencesWatcherBloc>()
          ..add(
            const RecommendedExperiencesWatcherEvent.watchRecommendedExperiencesStarted(),
          ),
        child: BlocBuilder<RecommendedExperiencesWatcherBloc, RecommendedExperiencesWatcherState>(
          builder: (context, state) => state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const WorldOnProgressIndicator(
              size: 30,
            ),
            loadSuccess: (state) => ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.experiences.size,
              itemBuilder: (context, index) {
                final _experience = state.experiences[index];
                if (_experience.isValid) {
                  return ProfileExperienceCard(
                    experience: _experience,
                    key: Key(_experience.id.toString()),
                    reloadFunction: () => context.read<RecommendedExperiencesWatcherBloc>().add(
                          const RecommendedExperiencesWatcherEvent.watchRecommendedExperiencesStarted(),
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
            loadFailure: (state) => InkWell(
              onTap: () => context.read<RecommendedExperiencesWatcherBloc>().add(
                    const RecommendedExperiencesWatcherEvent.watchRecommendedExperiencesStarted(),
                  ),
              child: Center(
                child: state.failure.maybeMap(
                  coreData: (failure) => failure.coreDataFailure.maybeMap(
                    notFoundError: (_) => Text(
                      S.of(context).notFoundError,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    orElse: () {},
                  ),
                  orElse: () => CriticalErrorDisplay(failure: state.failure),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
