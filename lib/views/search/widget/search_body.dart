import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/search/search_by_name_form/search_by_name_form_bloc.dart';
import 'package:worldon/application/search/search_experiences_by_difficulty/search_experiences_by_difficulty_bloc.dart';
import 'package:worldon/application/search/search_experiences_by_name_watcher/search_experiences_by_name_watcher_bloc.dart';
import 'package:worldon/application/search/search_experiences_by_tags/search_experiences_by_tags_bloc.dart';
import 'package:worldon/application/search/search_tags_by_name_watcher/search_tags_by_name_watcher_bloc.dart';
import 'package:worldon/application/search/search_users_by_name_watcher/search_users_by_name_watcher_bloc.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/string_constants.dart';

class SearchBody extends StatelessWidget {
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
        listener: (context, state) {
          if (state.isSubmitting) {
            context.bloc<SearchUsersByNameWatcherBloc>().add(
                  // What to do with the users found by name?
                  SearchUsersByNameWatcherEvent.watchUsersFoundByUsernameStarted(state.searchTerm),
                );
            context.bloc<SearchExperiencesByNameWatcherBloc>().add(
                  SearchExperiencesByNameWatcherEvent.watchExperiencesFoundByNameStarted(state.searchTerm),
                );
            context.bloc<SearchTagsByNameWatcherBloc>().add(
                  SearchTagsByNameWatcherEvent.watchTagsFoundByNameStarted(state.searchTerm),
                );
          }
        },
        builder: (context, state) => Padding(
          padding: const EdgeInsets.all(5),
          child: Form(
            autovalidate: state.showErrorMessages,
            child: Column(
              children: <Widget>[
                Container(
                  height: 55,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          onChanged: (value) => context.bloc<SearchByNameFormBloc>().add(
                                SearchByNameFormEvent.searchTermChanged(value),
                              ),
                          decoration: const InputDecoration(
                            labelText: "Search",
                          ),
                          validator: (_) => context.bloc<SearchByNameFormBloc>().state.searchTerm.value.fold(
                                (failure) => failure.maybeMap(
                                  emptyString: (_) => "The search term can't be empty",
                                  orElse: () => StringConst.unknownError,
                                ),
                                (_) => null,
                              ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.search,
                          size: 35,
                        ),
                        onPressed: () => context.bloc<SearchByNameFormBloc>().add(
                              const SearchByNameFormEvent.submitted(),
                            ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                DefaultTabController(
                  length: 3,
                  child: TabBar(
                    onTap: (index) {},
                    tabs: [
                      Tab(
                        icon: Icon(Icons.account_circle),
                        text: "Users",
                      ),
                      Tab(
                        icon: Icon(Icons.explore),
                        text: "Experiences",
                      ),
                      Tab(
                        icon: Icon(Icons.local_offer),
                        text: "Tags",
                      ),
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
}
