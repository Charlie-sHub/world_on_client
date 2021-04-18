import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/search/search_experiences_by_name_watcher/search_experiences_by_name_watcher_bloc.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/experience_card.dart';
import 'package:worldon/views/core/widgets/error/error_display.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';
import 'package:worldon/views/search/widget/search_something.dart';

class SearchExperiencesTabView extends StatelessWidget {
  final SearchTerm searchTerm;

  const SearchExperiencesTabView({
    Key? key,
    required this.searchTerm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchExperiencesByNameWatcherBloc, SearchExperiencesByNameWatcherState>(
      builder: (context, state) => state.map(
        initial: (_) => SearchSomething(),
        searchInProgress: (_) => const WorldOnProgressIndicator(),
        searchSuccess: (state) => ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(10),
          itemCount: state.experiencesFound.size,
          itemBuilder: (context, index) {
            final _experience = state.experiencesFound[index];
            if (_experience.isValid) {
              return ExperienceCard(
                experience: _experience,
                key: Key(_experience.id.toString()),
                reloadFunction: () => context.read<SearchExperiencesByNameWatcherBloc>().add(
                      SearchExperiencesByNameWatcherEvent.watchExperiencesFoundByNameStarted(searchTerm),
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
        searchFailure: (state) => ErrorDisplay(
          retryFunction: () => context.read<SearchExperiencesByNameWatcherBloc>().add(
                SearchExperiencesByNameWatcherEvent.watchExperiencesFoundByNameStarted(searchTerm),
              ),
          failure: state.failure,
          specificMessage: some(S.of(context).notFoundErrorSearch),
        ),
      ),
    );
  }
}
