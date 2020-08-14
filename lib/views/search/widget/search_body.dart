import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/search/search_by_name_form/search_by_name_form_bloc.dart';
import 'package:worldon/application/search/search_experiences_by_difficulty/search_experiences_by_difficulty_bloc.dart';
import 'package:worldon/application/search/search_experiences_by_name_watcher/search_experiences_by_name_watcher_bloc.dart';
import 'package:worldon/application/search/search_experiences_by_tags/search_experiences_by_tags_bloc.dart';
import 'package:worldon/application/search/search_tags_by_name_watcher/search_tags_by_name_watcher_bloc.dart';
import 'package:worldon/application/search/search_users_by_name_watcher/search_users_by_name_watcher_bloc.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/search/widget/search_experiences_tab_bar_view.dart';
import 'package:worldon/views/search/widget/search_header.dart';
import 'package:worldon/views/search/widget/search_tab_bar.dart';
import 'package:worldon/views/search/widget/search_tags_tab_view.dart';
import 'package:worldon/views/search/widget/search_users_tab_view/search_users_tab_view.dart';

// TODO: Implement search experiences by difficulty and by tags
class SearchBody extends StatelessWidget {
  const SearchBody({Key key}) : super(key: key);

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
        listener: _searchFormListener,
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
                      SearchExperiencesTabView(searchTerm: state.searchTerm),
                      SearchUsersTabView(searchTerm: state.searchTerm),
                      SearchTagsTabView(searchTerm: state.searchTerm),
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
    if (state.isSubmitting) {
      context.bloc<SearchUsersByNameWatcherBloc>().add(
            SearchUsersByNameWatcherEvent.watchUsersFoundByUsernameStarted(state.searchTerm),
          );
      context.bloc<SearchExperiencesByNameWatcherBloc>().add(
            SearchExperiencesByNameWatcherEvent.watchExperiencesFoundByNameStarted(state.searchTerm),
          );
      context.bloc<SearchTagsByNameWatcherBloc>().add(
            SearchTagsByNameWatcherEvent.watchTagsFoundByNameStarted(state.searchTerm),
          );
    }
  }
}
