import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/search/search_by_name_form/search_by_name_form_bloc.dart';
import 'package:worldon/application/search/search_tags_by_name_watcher/search_tags_by_name_watcher_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widgets/cards/simple_tag_error_display.dart';
import 'package:worldon/views/core/widgets/cards/tag_card/simple_tag_card_builder.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';
import 'package:worldon/views/search/widget/search_error_display.dart';

class SearchTagsTabView extends StatelessWidget {
  const SearchTagsTabView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchTagsByNameWatcherBloc, SearchTagsByNameWatcherState>(
      builder: (context, state) => state.map(
        initial: (_) => Container(),
        searchInProgress: (_) => const WorldOnProgressIndicator(),
        searchSuccess: (state) => ListView.builder(
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          itemCount: state.tagsFound.size,
          itemBuilder: (context, index) {
            final _tag = state.tagsFound.get(index);
            if (_tag.isValid) {
              return SimpleTagCardBuilder(tag: _tag);
            } else {
              return SimpleTagErrorDisplay(tag: _tag);
            }
          },
        ),
        searchFailure: (state) => SearchErrorDisplay(
          retryFunction: () => context.read<SearchTagsByNameWatcherBloc>().add(
                SearchTagsByNameWatcherEvent.watchTagsFoundByNameStarted(
                  context.read<SearchByNameFormBloc>().state.searchTerm,
                ),
              ),
          failure: state.failure,
          specificMessage: some(S.of(context).notFoundErrorSearch),
        ),
      ),
    );
  }
}
