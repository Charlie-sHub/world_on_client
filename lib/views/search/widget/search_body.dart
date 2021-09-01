import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/search/search_by_name_form/search_by_name_form_bloc.dart';
import 'package:worldon/application/search/search_experiences_by_difficulty/search_experiences_by_difficulty_bloc.dart';
import 'package:worldon/application/search/search_experiences_by_name_watcher/search_experiences_by_name_watcher_bloc.dart';
import 'package:worldon/application/search/search_experiences_by_tags/search_experiences_by_tags_bloc.dart';
import 'package:worldon/application/search/search_tags_by_name_watcher/search_tags_by_name_watcher_bloc.dart';
import 'package:worldon/application/search/search_users_by_name_watcher/search_users_by_name_watcher_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/search/widget/experience_results_view.dart';
import 'package:worldon/views/search/widget/search_header.dart';
import 'package:worldon/views/search/widget/tag_results_view.dart';
import 'package:worldon/views/search/widget/user_results_view.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);
  static const double _separation = 5;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<SearchByNameFormBloc>()),
        BlocProvider(create: (context) => getIt<SearchUsersByNameWatcherBloc>()),
        BlocProvider(create: (context) => getIt<SearchExperiencesByNameWatcherBloc>()),
        BlocProvider(create: (context) => getIt<SearchTagsByNameWatcherBloc>()),
        BlocProvider(create: (context) => getIt<SearchExperiencesByDifficultyBloc>()),
        BlocProvider(create: (context) => getIt<SearchExperiencesByTagsBloc>()),
      ],
      child: BlocConsumer<SearchByNameFormBloc, SearchByNameFormState>(
        listenWhen: (previous, current) => current.isSubmitting,
        listener: _searchFormListener,
        buildWhen: (previous, current) => previous.showErrorMessages != current.showErrorMessages,
        builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SearchHeader(),
                  const SizedBox(height: _separation),
                  AutoSizeText(
                    S.of(context).searchTags.toUpperCase(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: _separation),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: const TagResultsView(),
                  ),
                  AutoSizeText(
                    S.of(context).experiences.toUpperCase(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: _separation),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.32,
                    child: ExperienceResultsView(searchTerm: state.searchTerm),
                  ),
                  const SizedBox(height: _separation),
                  AutoSizeText(
                    S.of(context).searchUsers.toUpperCase(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: _separation),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: UserResultsView(searchTerm: state.searchTerm),
                  ),
                  const SizedBox(height: kBottomNavigationBarHeight),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _searchFormListener(BuildContext context, SearchByNameFormState state) {
    if (state.searchTerm.value.isRight()) {
      context.read<SearchUsersByNameWatcherBloc>().add(
            SearchUsersByNameWatcherEvent.watchUsersFoundByNameStarted(
              state.searchTerm,
            ),
          );
      context.read<SearchExperiencesByNameWatcherBloc>().add(
            SearchExperiencesByNameWatcherEvent.watchExperiencesFoundByNameStarted(
              state.searchTerm,
            ),
          );
      context.read<SearchTagsByNameWatcherBloc>().add(
            SearchTagsByNameWatcherEvent.watchTagsFoundByNameStarted(
              state.searchTerm,
            ),
          );
    }
  }
}
