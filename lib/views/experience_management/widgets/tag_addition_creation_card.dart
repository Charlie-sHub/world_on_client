import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:worldon/application/search/search_by_name_form/search_by_name_form_bloc.dart';
import 'package:worldon/application/search/search_tags_by_name_watcher/search_tags_by_name_watcher_bloc.dart';
import 'package:worldon/application/search/tag_selector/tag_selector_bloc.dart';
import 'package:worldon/application/tag_management/tag_management_form/tag_management_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/misc/tag_addition_card/tag_search_header.dart';
import 'package:worldon/views/core/widgets/misc/tag_addition_card/tag_selection.dart';
import 'package:worldon/views/core/widgets/misc/tag_addition_card/tags_found_view.dart';
import 'package:worldon/views/tag_management/widgets/tag_management_form.dart';

class TagAdditionCreationCard extends HookWidget {
  final Function tagChangeFunction;
  final Option<TagSet> tagSetOption;

  const TagAdditionCreationCard({
    Key key,
    @required this.tagSetOption,
    @required this.tagChangeFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textEditingController = useTextEditingController();
    return MultiBlocProvider(
      providers: [
        //This is a bit of a frankenstein monster of a widget, should probably be reviewed, there must be a better way to do this
        BlocProvider(create: (context) => getIt<SearchByNameFormBloc>()),
        BlocProvider(create: (context) => getIt<SearchTagsByNameWatcherBloc>()),
        BlocProvider(create: (context) => getIt<TagSelectorBloc>()..add(TagSelectorEvent.initialized(tagSetOption))),
        BlocProvider(create: (context) => getIt<TagManagementFormBloc>()),
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
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: BlocListener<TagManagementFormBloc, TagManagementFormState>(
                    listenWhen: (previous, current) => previous.failureOrSuccessOption != current.failureOrSuccessOption,
                    listener: (context, state) => _tagCreationListener(
                      context,
                      state,
                      _textEditingController,
                    ),
                    child: TagManagementForm(textController: _textEditingController),
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

  void _tagCreationListener(
    BuildContext context,
    TagManagementFormState state,
    TextEditingController _textEditingController,
  ) =>
      state.failureOrSuccessOption.fold(
        () => null,
        (either) => either.fold(
          (failure) => failure.maybeMap(
            coreData: (_coreDataFailure) => _coreDataFailure.coreDataFailure.maybeMap(
              nameAlreadyInUse: (_) => FlushbarHelper.createError(
                duration: const Duration(seconds: 2),
                message: S.of(context).tagCreationNameAlreadyInUse,
              ).show(context),
              serverError: (failure) => FlushbarHelper.createError(
                duration: const Duration(seconds: 2),
                message: failure.errorString,
              ).show(context),
              orElse: () => FlushbarHelper.createError(
                duration: const Duration(seconds: 2),
                message: S.of(context).unknownCoreDataError,
              ).show(context),
            ),
            orElse: () => FlushbarHelper.createError(
              duration: const Duration(seconds: 2),
              message: S.of(context).unknownError,
            ).show(context),
          ),
          (_) {
            context.read<TagSelectorBloc>().add(
                  TagSelectorEvent.addedTag(state.tag),
                );
            _textEditingController.clear();
            context.read<TagManagementFormBloc>().add(
                  TagManagementFormEvent.initialized(none()),
                );
            FlushbarHelper.createSuccess(
              duration: const Duration(seconds: 2),
              message: S.of(context).tagCreationSuccessMessage,
            ).show(context);
          },
        ),
      );
}
