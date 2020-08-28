import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/tag_management/use_case/delete_tag.dart';
import 'package:worldon/injection.dart';

part 'tag_management_actor_bloc.freezed.dart';
part 'tag_management_actor_event.dart';
part 'tag_management_actor_state.dart';

/// As it controls the deletion of [Tag]s this [Bloc] is meant administrative purposes
@injectable
class TagManagementActorBloc extends Bloc<TagManagementActorEvent, TagManagementActorState> {
  TagManagementActorBloc() : super(const TagManagementActorState.initial());

  @override
  Stream<TagManagementActorState> mapEventToState(TagManagementActorEvent event) async* {
    yield* event.map(
      deleted: _onDeleted,
    );
  }

  Stream<TagManagementActorState> _onDeleted(_Deleted event) async* {
    yield const TagManagementActorState.actionInProgress();
    final _deleteTag = getIt<DeleteTag>();
    final _eitherFailureOrSuccess = await _deleteTag(
      Params(tag: event.tag),
    );
    yield _eitherFailureOrSuccess.fold(
      (failure) => TagManagementActorState.deletionFailure(failure),
      (_) => const TagManagementActorState.deletionSuccess(),
    );
  }
}
