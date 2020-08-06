import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';

part 'tag_selector_bloc.freezed.dart';
part 'tag_selector_event.dart';
part 'tag_selector_state.dart';

@injectable
class TagSelectorBloc extends Bloc<TagSelectorEvent, TagSelectorState> {
  TagSelectorBloc() : super(TagSelectorState.initial());

  @override
  Stream<TagSelectorState> mapEventToState(TagSelectorEvent event) async* {
    yield* event.map(
      addedTag: onAddedTag,
      removedTag: onSubtractedTag,
    );
  }

  Stream<TagSelectorState> onSubtractedTag(_RemovedTag event) async* {
    final _mutableKtSet = state.tagsSelected.toMutableSet();
    _mutableKtSet.remove(event.tag);
    yield state.copyWith(
      tagsSelected: _mutableKtSet.toSet(),
    );
  }

  Stream<TagSelectorState> onAddedTag(_AddedTag event) async* {
    if (state.tagsSelected.size < TagSet.maxLength) {
      final _mutableKtSet = state.tagsSelected.toMutableSet();
      _mutableKtSet.add(event.tag);
      yield state.copyWith(
        tagsSelected: _mutableKtSet.toSet(),
      );
    }
  }
}
