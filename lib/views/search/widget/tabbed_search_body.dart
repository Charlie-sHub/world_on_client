import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/search/search_by_name_form/search_by_name_form_bloc.dart';
import 'package:worldon/application/search/search_experiences_by_difficulty/search_experiences_by_difficulty_bloc.dart';
import 'package:worldon/application/search/search_experiences_by_name_watcher/search_experiences_by_name_watcher_bloc.dart';
import 'package:worldon/application/search/search_experiences_by_tags/search_experiences_by_tags_bloc.dart';
import 'package:worldon/application/search/search_tags_by_name_watcher/search_tags_by_name_watcher_bloc.dart';
import 'package:worldon/application/search/search_users_by_name_watcher/search_users_by_name_watcher_bloc.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/search/widget/experience_results_view.dart';
import 'package:worldon/views/search/widget/search_header.dart';
import 'package:worldon/views/search/widget/search_tab_bar.dart';
import 'package:worldon/views/search/widget/user_results_view.dart';

class TabbedSearchBody extends StatelessWidget {
  const TabbedSearchBody({Key? key}) : super(key: key);

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
        listenWhen: (previous, current) => previous.isSubmitting != current.isSubmitting,
        listener: _searchFormListener,
        buildWhen: (previous, current) => previous.showErrorMessages != current.showErrorMessages,
        builder: (context, state) => Padding(
          padding: const EdgeInsets.all(5),
          child: DefaultTabController(
            length: 3,
            child: Column(
              children: <Widget>[
                const SearchHeader(),
                const SizedBox(height: 5),
                const SearchTabBar(),
                Expanded(
                  child: TabBarView(
                    children: [
                      ExperienceResultsView(searchTerm: state.searchTerm),
                      UserResultsView(searchTerm: state.searchTerm),
                      // SearchTagsTabView(searchTerm: state.searchTerm),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
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
