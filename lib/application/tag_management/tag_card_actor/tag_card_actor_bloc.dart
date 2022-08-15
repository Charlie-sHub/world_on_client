import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/tag_management/use_case/add_tag_to_interests.dart'
    as add_tag_to_interests;
import 'package:worldon/domain/tag_management/use_case/dismiss_tag_from_interests.dart'
    as dismiss_tag_from_interests;
import 'package:worldon/injection.dart';

part 'tag_card_actor_bloc.freezed.dart';
part 'tag_card_actor_event.dart';
part 'tag_card_actor_state.dart';

@injectable
class TagCardActorBloc extends Bloc<TagCardActorEvent, TagCardActorState> {
  TagCardActorBloc() : super(const TagCardActorState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_DismissedFromInterests>(_onDismissedFromInterests);
    on<_AddedToInterests>(_onAddedToInterests);
  }

  FutureOr<void> _onAddedToInterests(
    _AddedToInterests event,
    Emitter emit,
  ) async {
    emit(const TagCardActorState.actionInProgress());
    final failureOrUnit =
        await getIt<add_tag_to_interests.AddTagToInterests>()(
      add_tag_to_interests.Params(tag: event.tag),
    );
    emit(
      failureOrUnit.fold(
        (failure) => TagCardActorState.additionFailure(failure),
        (_) => const TagCardActorState.additionSuccess(),
      ),
    );
  }

  FutureOr<void> _onDismissedFromInterests(
    _DismissedFromInterests event,
    Emitter emit,
  ) async {
    emit(const TagCardActorState.actionInProgress());
    final failureOrUnit =
        await getIt<dismiss_tag_from_interests.DismissTagFromInterests>()(
      dismiss_tag_from_interests.Params(tag: event.tag),
    );
    emit(
      failureOrUnit.fold(
        (failure) => TagCardActorState.dismissalFailure(failure),
        (_) => const TagCardActorState.dismissalSuccess(),
      ),
    );
  }

  void _onInitialized(_Initialized event, Emitter emit) {
    if (event.interestsIds.contains(event.tag.id)) {
      emit(const TagCardActorState.inInterests());
    } else {
      emit(const TagCardActorState.notInInterests());
    }
  }
}
