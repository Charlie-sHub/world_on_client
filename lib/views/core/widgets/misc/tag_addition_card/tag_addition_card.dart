import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:worldon/application/search/search_by_name_form/search_by_name_form_bloc.dart';
import 'package:worldon/application/search/search_tags_by_name_watcher/search_tags_by_name_watcher_bloc.dart';
import 'package:worldon/application/search/tag_selector/tag_selector_bloc.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/misc/tag_addition_card/tag_search_header.dart';
import 'package:worldon/views/core/widgets/misc/tag_addition_card/tags_found_view.dart';

// I guess this widget could be use when search by tags is implemented
// It doesn't make sense to create tags to then search by them
@Deprecated("Use the TagCreationAdditionCard instead")
class TagAdditionCard extends StatelessWidget {
  final Function(KtSet<Tag> tag) tagChangeFunction;

  @Deprecated("Use the TagCreationAdditionCard instead")
  const TagAdditionCard({
    Key? key,
    required this.tagChangeFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<SearchByNameFormBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<SearchTagsByNameWatcherBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<TagSelectorBloc>(),
          ),
        ],
        child: BlocListener<TagSelectorBloc, TagSelectorState>(
          listener: (context, state) => tagChangeFunction(
            context.read<TagSelectorBloc>().state.tagsSelected,
          ),
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
                  // const TagSelection(),
                ],
              ),
            ),
          ),
        ),
      );
}
