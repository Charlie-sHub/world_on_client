import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/search/search_tags_by_name_watcher/search_tags_by_name_watcher_bloc.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widget/cards/error_card.dart';
import 'package:worldon/views/core/widget/cards/tag_card/tag_card.dart';
import 'package:worldon/views/core/widget/error/error_display.dart';
import 'package:worldon/views/core/widget/misc/world_on_progress_indicator.dart';
import 'package:worldon/views/search/widget/search_something.dart';

class SearchTagsTabView extends StatelessWidget {
  final SearchTerm searchTerm;

  const SearchTagsTabView({
    Key key,
    @required this.searchTerm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchTagsByNameWatcherBloc, SearchTagsByNameWatcherState>(
      builder: (context, state) => state.map(
        initial: (_) => SearchSomething(),
        searchInProgress: (_) => const WorldOnProgressIndicator(),
        searchSuccess: (state) => ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(10),
          itemCount: state.tagsFound.size,
          itemBuilder: (context, index) {
            final _tag = state.tagsFound[index];
            if (_tag.isValid) {
              return TagCard(
                tag: _tag,
                key: Key(_tag.id.toString()),
              );
            } else {
              return ErrorCard(
                entityType: S.of(context).tag,
                valueFailureString: _tag.failureOption.fold(
                  () => S.of(context).noError,
                  (failure) => failure.toString(),
                ),
              );
            }
          },
        ),
        searchFailure: (state) => ErrorDisplay(
          retryFunction: () => context.bloc<SearchTagsByNameWatcherBloc>().add(
                SearchTagsByNameWatcherEvent.watchTagsFoundByNameStarted(searchTerm),
              ),
          failure: state.failure,
        ),
      ),
    );
  }
}
