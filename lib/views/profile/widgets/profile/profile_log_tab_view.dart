import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_log/experience_log_watcher/experience_log_watcher_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/core/widgets/error/error_display.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';
import 'package:worldon/views/profile/widgets/profile_experiences_tab_view/profile_experience_card.dart';

import '../../../../injection.dart';

class ProfileLogTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ExperienceLogWatcherBloc>()
        ..add(
          const ExperienceLogWatcherEvent.watchExperiencesLogStarted(),
        ),
      child: BlocBuilder<ExperienceLogWatcherBloc, ExperienceLogWatcherState>(
        builder: (context, state) => state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const WorldOnProgressIndicator(
            size: 50,
          ),
          loadSuccess: (state) => GridView.builder(
            physics: const ClampingScrollPhysics(),
            padding: const EdgeInsets.only(
              bottom: kFloatingActionButtonMargin + 50,
              left: 10,
              right: 10,
              top: 10,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemCount: state.experiences.size,
            itemBuilder: (context, index) {
              final _experience = state.experiences[index];
              if (_experience.isValid) {
                return ProfileExperienceCard(
                  experience: _experience,
                  key: Key(_experience.id.toString()),
                  reloadFunction: () => context.read<ExperienceLogWatcherBloc>().add(
                        const ExperienceLogWatcherEvent.watchExperiencesLogStarted(),
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
          loadFailure: (state) => ErrorDisplay(
            retryFunction: () => context.read<ExperienceLogWatcherBloc>().add(
                  const ExperienceLogWatcherEvent.watchExperiencesLogStarted(),
                ),
            failure: state.failure,
            specificMessage: some(S.of(context).notFoundErrorExperiencesToDo),
          ),
        ),
      ),
    );
  }
}
