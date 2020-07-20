import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/experience_card_actor/experience_card_actor_bloc.dart';
import 'package:worldon/application/search/search_by_name_form/search_by_name_form_bloc.dart';
import 'package:worldon/application/search/search_experiences_by_difficulty/search_experiences_by_difficulty_bloc.dart';
import 'package:worldon/application/search/search_experiences_by_name_watcher/search_experiences_by_name_watcher_bloc.dart';
import 'package:worldon/application/search/search_experiences_by_tags/search_experiences_by_tags_bloc.dart';
import 'package:worldon/application/search/search_tags_by_name_watcher/search_tags_by_name_watcher_bloc.dart';
import 'package:worldon/application/search/search_users_by_name_watcher/search_users_by_name_watcher_bloc.dart';
import 'package:worldon/application/tag_management/tag_card_actor/tag_card_actor_bloc.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/common_functions/experience_card_listener.dart';
import 'package:worldon/views/core/misc/common_functions/tag_card_listener.dart';
import 'package:worldon/views/core/misc/string_constants.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/critical_error_display.dart';
import 'package:worldon/views/core/widget/experience_card.dart';
import 'package:worldon/views/core/widget/experience_error_card.dart';
import 'package:worldon/views/core/widget/tag_card.dart';
import 'package:worldon/views/core/widget/tag_error_card.dart';
import 'package:worldon/views/core/widget/world_on_progress_indicator.dart';
import 'package:worldon/views/search/widget/search_something.dart';

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
        BlocProvider(create: (context) => getIt<ExperienceCardActorBloc>()),
        BlocProvider(create: (context) => getIt<TagCardActorBloc>()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<SearchByNameFormBloc, SearchByNameFormState>(
            listener: searchFormListener,
          ),
          const BlocListener<ExperienceCardActorBloc, ExperienceCardActorState>(
            listener: experienceCardListener,
          ),
          const BlocListener<TagCardActorBloc, TagCardActorState>(
            listener: tagCardListener,
          ),
        ],
        child: BlocBuilder<SearchByNameFormBloc, SearchByNameFormState>(
          builder: (context, state) => Padding(
            padding: const EdgeInsets.all(5),
            child: DefaultTabController(
              length: 3,
              child: Form(
                autovalidate: state.showErrorMessages,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 50,
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
                    Container(
                      // Don't like the idea of having this hardcoded, but i can't find any other way to thing out the tabBar
                      height: 52,
                      child: const SearchTabBar(),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          BlocBuilder<SearchExperiencesByNameWatcherBloc, SearchExperiencesByNameWatcherState>(
                            builder: (context, state) => state.map(
                              initial: (_) => SearchSomething(),
                              searchInProgress: (_) => WorldOnProgressIndicator(),
                              searchSuccess: (state) => ListView.builder(
                                padding: const EdgeInsets.all(10),
                                itemCount: state.experiencesFound.size,
                                itemBuilder: (context, index) {
                                  final _experience = state.experiencesFound[index];
                                  if (_experience.isValid) {
                                    return ExperienceCard(experience: _experience);
                                  } else {
                                    return ExperienceErrorCard(experience: _experience);
                                  }
                                },
                              ),
                              searchFailure: (state) => CriticalErrorDisplay(failure: state.failure),
                            ),
                          ),
                          Icon(Icons.directions_transit),
                          BlocBuilder<SearchTagsByNameWatcherBloc, SearchTagsByNameWatcherState>(
                            builder: (context, state) => state.map(
                              initial: (_) => SearchSomething(),
                              searchInProgress: (_) => WorldOnProgressIndicator(),
                              searchSuccess: (state) => BlocProvider(
                                create: (context) => getIt<TagCardActorBloc>(),
                                child: ListView.builder(
                                  padding: const EdgeInsets.all(10),
                                  itemCount: state.tagsFound.size,
                                  itemBuilder: (context, index) {
                                    final _tag = state.tagsFound[index];
                                    if (_tag.isValid) {
                                      return TagCard(tag: _tag);
                                    } else {
                                      // Maybe the error cards should be unified into one
                                      return TagErrorCard(tag: _tag);
                                    }
                                  },
                                ),
                              ),
                              searchFailure: (state) => CriticalErrorDisplay(failure: state.failure),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void searchFormListener(BuildContext context, SearchByNameFormState state) {
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
  }
}

class SearchTabBar extends StatelessWidget {
  const SearchTabBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelPadding: const EdgeInsets.all(2),
      indicatorColor: WorldOnColors.primary,
      tabs: [
        Tab(
          iconMargin: const EdgeInsets.all(2),
          icon: Icon(Icons.explore),
          text: "Experiences",
        ),
        Tab(
          iconMargin: const EdgeInsets.all(2),
          icon: Icon(Icons.account_circle),
          text: "Users",
        ),
        Tab(
          iconMargin: const EdgeInsets.all(2),
          icon: Icon(Icons.local_offer),
          text: "Tags",
        ),
      ],
    );
  }
}
