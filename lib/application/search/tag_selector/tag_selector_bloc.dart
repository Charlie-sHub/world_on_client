import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';

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
    final _mutableKtList = state.tagsSelected.toMutableList();
    _mutableKtList.remove(event.tag);
    yield state.copyWith(
      tagsSelected: _mutableKtList.toList(),
    );
  }

  Stream<TagSelectorState> onAddedTag(_AddedTag event) async* {
    final _mutableKtList = state.tagsSelected.toMutableList();
    _mutableKtList.add(event.tag);
    yield state.copyWith(
      tagsSelected: _mutableKtList.toList(),
    );
  }
}
