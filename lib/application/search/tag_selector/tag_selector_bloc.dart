import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/tag_management/use_case/get_tags.dart';
import 'package:worldon/injection.dart';

part 'tag_selector_bloc.freezed.dart';
part 'tag_selector_event.dart';
part 'tag_selector_state.dart';

@injectable
class TagSelectorBloc extends Bloc<TagSelectorEvent, TagSelectorState> {
  TagSelectorBloc() : super(TagSelectorState.initial());

  @override
  Stream<TagSelectorState> mapEventToState(TagSelectorEvent event) async* {
    yield* event.map(
      addedTag: _onAddedTag,
      removedTag: _onSubtractedTag,
      initialized: _onInitialized,
    );
  }

  Stream<TagSelectorState> _onInitialized(_Initialized event) async* {
    yield await event.tagsEitherOption.fold(
      () => state,
      (_eitherTags) => _eitherTags.fold(
        (_tagSet) => state.copyWith(
          tagsSelected: _tagSet.getOrCrash(),
        ),
        (_idSet) async {
          final _failureOrTags = await getIt<GetTags>()(
            Params(tagIds: _idSet),
          );
          return _failureOrTags.fold(
            (_) => state,
            (_tagSet) => state.copyWith(
              tagsSelected: _tagSet,
            ),
          );
        },
      ),
    );
  }

  Stream<TagSelectorState> _onSubtractedTag(_RemovedTag event) async* {
    yield state.copyWith(
      tagsSelected: state.tagsSelected.minusElement(event.tag).toSet(),
    );
  }

  Stream<TagSelectorState> _onAddedTag(_AddedTag event) async* {
    if (state.tagsSelected.size < TagSet.maxLength) {
      yield state.copyWith(
        tagsSelected: state.tagsSelected.plusElement(event.tag).toSet(),
      );
    }
  }
}
