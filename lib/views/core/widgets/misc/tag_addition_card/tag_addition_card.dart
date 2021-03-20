import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/search/search_by_name_form/search_by_name_form_bloc.dart';
import 'package:worldon/application/search/search_tags_by_name_watcher/search_tags_by_name_watcher_bloc.dart';
import 'package:worldon/application/search/tag_selector/tag_selector_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/misc/tag_addition_card/tag_search_header.dart';
import 'package:worldon/views/core/widgets/misc/tag_addition_card/tag_selection.dart';
import 'package:worldon/views/core/widgets/misc/tag_addition_card/tags_found_view.dart';

import '../../../../../injection.dart';

class TagAdditionCard extends StatelessWidget {
  final Function tagChangeFunction;

  const TagAdditionCard({
    Key key,
    @required this.tagChangeFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<SearchByNameFormBloc>()),
        BlocProvider(create: (context) => getIt<SearchTagsByNameWatcherBloc>()),
        BlocProvider(create: (context) => getIt<TagSelectorBloc>()),
      ],
      child: BlocListener<TagSelectorBloc, TagSelectorState>(
        listener: (context, state) => tagChangeFunction(context.read<TagSelectorBloc>().state.tagsSelected),
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
                Text(
                  S.of(context).searchTags,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
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
                Text(
                  S.of(context).tagAdditionFound,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 5),
                const TagsFoundView(),
                const SizedBox(height: 10),
                Text(
                  S.of(context).tagAdditionSelected,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 5),
                const TagSelection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
