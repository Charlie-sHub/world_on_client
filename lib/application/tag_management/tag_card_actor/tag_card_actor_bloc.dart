import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
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
  TagCardActorBloc() : super(const TagCardActorState.initial());

  @override
  Stream<TagCardActorState> mapEventToState(TagCardActorEvent event) async* {
    yield* event.map(
      initialized: _onInitialized,
      dismissedFromInterests: _onDismissedFromInterests,
      addedToInterests: _onAddedToInterests,
    );
  }

  Stream<TagCardActorState> _onAddedToInterests(_AddedToInterests event) async* {
    yield const TagCardActorState.actionInProgress();
    final _failureOrUnit = await getIt<add_tag_to_interests.AddTagToInterests>()(
      add_tag_to_interests.Params(tag: event.tag),
    );
    yield _failureOrUnit.fold(
      (failure) => TagCardActorState.additionFailure(failure),
      (_) => const TagCardActorState.additionSuccess(),
    );
  }

  Stream<TagCardActorState> _onDismissedFromInterests(_DismissedFromInterests event) async* {
    yield const TagCardActorState.actionInProgress();
    final _failureOrUnit = await getIt<dismiss_tag_from_interests.DismissTagFromInterests>()(
      dismiss_tag_from_interests.Params(tag: event.tag),
    );
    yield _failureOrUnit.fold(
      (failure) => TagCardActorState.dismissalFailure(failure),
      (_) => const TagCardActorState.dismissalSuccess(),
    );
  }

  Stream<TagCardActorState> _onInitialized(_Initialized event) async* {
    if (event.interestsIds.contains(event.tag.id)) {
      yield const TagCardActorState.inInterests();
    } else {
      yield const TagCardActorState.notInInterests();
    }
  }
}
