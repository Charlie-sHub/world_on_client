import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/search/search_by_name_form/search_by_name_form_bloc.dart';
import 'package:worldon/application/search/search_tags_by_name_watcher/search_tags_by_name_watcher_bloc.dart';
import 'package:worldon/application/search/tag_selector/tag_selector_bloc.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/cards/simple_tag_display.dart';
import 'package:worldon/views/core/widget/cards/simple_tag_error_display.dart';
import 'package:worldon/views/core/widget/critical_error_display.dart';
import 'package:worldon/views/core/widget/world_on_progress_indicator.dart';
import 'package:worldon/views/search/widget/search_header.dart';
import 'package:worldon/views/search/widget/search_something.dart';

import '../../../../injection.dart';

class TagAdditionCard extends StatelessWidget {
  final Function tagChangeEvent;

  const TagAdditionCard({
    Key key,
    @required this.tagChangeEvent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<SearchByNameFormBloc>()),
        BlocProvider(create: (context) => getIt<SearchTagsByNameWatcherBloc>()),
        BlocProvider(create: (context) => getIt<TagSelectorBloc>()),
      ],
      child: Card(
        color: WorldOnColors.background,
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            color: WorldOnColors.primary,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              const Text(
                "Select Tags",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.all(5),
                child: TagSearchHeader(),
              ),
              const SizedBox(height: 5),
              const Text(
                "Tags Found",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 5),
              const TagsFoundView(),
              const SizedBox(height: 10),
              const Text(
                "Tags Selected",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 5),
              TagSelection(
                tagChangeEvent: tagChangeEvent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TagSelection extends StatelessWidget {
  final Function tagChangeEvent;

  const TagSelection({
    Key key,
    @required this.tagChangeEvent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TagSelectorBloc, TagSelectorState>(
      listener: (context, state) => tagChangeEvent,
      builder: (context, state) => Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.3,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.start,
                spacing: 5,
                runSpacing: 2,
                children: <Widget>[
                  ...state.tagsSelected.asSet().map(
                    (tag) {
                      if (tag.isValid) {
                        return InkWell(
                          onTap: () => context.bloc<TagSelectorBloc>().add(
                                TagSelectorEvent.removedTag(tag),
                              ),
                          child: SimpleTagDisplay(tag: tag),
                        );
                      } else {
                        return SimpleTagErrorDisplay(tag: tag);
                      }
                    },
                  ),
                ],
              ),
              if (state.tagsSelected.size >= TagSet.maxLength)
                Text(
                  "You can't add more than ${TagSet.maxLength} tags",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: WorldOnColors.red,
                    fontWeight: FontWeight.bold,
                  ),
                )
              else if (state.tagsSelected.size <= 0)
                Text(
                  "No tags selected",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: WorldOnColors.red,
                  ),
                )
              else
                Container(),
            ],
          ),
        ),
      ),
    );
  }
}

class TagsFoundView extends StatelessWidget {
  const TagsFoundView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchTagsByNameWatcherBloc, SearchTagsByNameWatcherState>(
      builder: (context, state) => state.map(
        initial: (_) => SearchSomething(),
        searchInProgress: (_) => WorldOnProgressIndicator(),
        searchSuccess: (state) => Container(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height * 0.1,
            maxHeight: MediaQuery.of(context).size.height * 0.3,
          ),
          child: SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 5,
              runSpacing: 5,
              children: <Widget>[
                ...state.tagsFound.asList().map(
                  (tag) {
                    if (tag.isValid) {
                      return InkWell(
                        onTap: () => context.bloc<TagSelectorBloc>().add(
                              TagSelectorEvent.addedTag(tag),
                            ),
                        child: SimpleTagDisplay(tag: tag),
                      );
                    } else {
                      return SimpleTagErrorDisplay(tag: tag);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
        searchFailure: (state) => InkWell(
          onTap: () async => context.bloc<SearchTagsByNameWatcherBloc>().add(
                SearchTagsByNameWatcherEvent.watchTagsFoundByNameStarted(
                  // Don't really like getting the search term that way
                  // but it seems better than having this widget as a child of the SearchByNameFormBloc BlocConsumer
                  context.bloc<SearchByNameFormBloc>().state.searchTerm,
                ),
              ),
          child: CriticalErrorDisplay(failure: state.failure),
        ),
      ),
    );
  }
}

class TagSearchHeader extends StatelessWidget {
  const TagSearchHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchByNameFormBloc, SearchByNameFormState>(
      listener: (context, state) {
        if (state.isSubmitting) {
          context.bloc<SearchTagsByNameWatcherBloc>().add(
                SearchTagsByNameWatcherEvent.watchTagsFoundByNameStarted(state.searchTerm),
              );
        }
      },
      builder: (context, state) => const SearchHeader(),
    );
  }
}
