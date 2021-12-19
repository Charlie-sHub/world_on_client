import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
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
  TagSelectorBloc() : super(TagSelectorState.initial()) {
    on<_AddedTag>(_onAddedTag);
    on<_RemovedTag>(_onRemovedTag);
    on<_Initialized>(_onInitialized);
  }

  FutureOr<void> _onInitialized(_Initialized event, Emitter emit) async {
    emit(
      event.tagsEitherOption.fold(
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
      ),
    );
  }

  void _onRemovedTag(_RemovedTag event, Emitter emit) {
    emit(
      state.copyWith(
        tagsSelected: state.tagsSelected.minusElement(event.tag).toSet(),
      ),
    );
  }

  void _onAddedTag(_AddedTag event, Emitter emit) {
    if (state.tagsSelected.size < TagSet.maxLength) {
      emit(
        state.copyWith(
          tagsSelected: state.tagsSelected.plusElement(event.tag).toSet(),
        ),
      );
    }
  }
}
