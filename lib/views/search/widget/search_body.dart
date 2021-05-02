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
import 'package:worldon/views/search/widget/search_experiences_tab_bar_view.dart';
import 'package:worldon/views/search/widget/search_header.dart';
import 'package:worldon/views/search/widget/search_tags_tab_view.dart';
import 'package:worldon/views/search/widget/search_users_tab_view/search_users_tab_view.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);
  
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
        builder: (context, state) => Column(
          children: [
            const SearchHeader(),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    S.of(context).searchTags,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.10,
                    child: const SearchTagsTabView(),
                  ),
                  const SizedBox(height: 5),
                  AutoSizeText(
                    S.of(context).experiences,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.26,
                    child: SearchExperiencesTabView(searchTerm: state.searchTerm),
                  ),
                  const SizedBox(height: 5),
                  AutoSizeText(
                    S.of(context).searchUsers,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: SearchUsersTabView(searchTerm: state.searchTerm),
                  ),
                ],
              ),
            ),
          ],
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
