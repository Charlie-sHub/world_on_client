import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/search/search_by_name_form/search_by_name_form_bloc.dart';
import 'package:worldon/application/search/search_tags_by_name_watcher/search_tags_by_name_watcher_bloc.dart';
import 'package:worldon/views/search/widget/search_header.dart';

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
