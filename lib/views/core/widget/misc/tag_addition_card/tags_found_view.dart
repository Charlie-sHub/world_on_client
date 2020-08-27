import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/search/search_by_name_form/search_by_name_form_bloc.dart';
import 'package:worldon/application/search/search_tags_by_name_watcher/search_tags_by_name_watcher_bloc.dart';
import 'package:worldon/application/search/tag_selector/tag_selector_bloc.dart';
import 'package:worldon/views/core/widget/cards/simple_tag_display.dart';
import 'package:worldon/views/core/widget/cards/simple_tag_error_display.dart';
import 'package:worldon/views/core/widget/error/error_display.dart';
import 'package:worldon/views/core/widget/misc/world_on_progress_indicator.dart';
import 'package:worldon/views/search/widget/search_something.dart';

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
          onTap: () async =>
            context.bloc<SearchTagsByNameWatcherBloc>().add(
              SearchTagsByNameWatcherEvent.watchTagsFoundByNameStarted(
                // Don't really like getting the search term that way
                // but it seems better than having this widget as a child of the SearchByNameFormBloc BlocConsumer
                context
                  .bloc<SearchByNameFormBloc>()
                  .state
                  .searchTerm,
              ),
            ),
          child: ErrorDisplay(failure: state.failure),
        ),
      ),
    );
  }
}
