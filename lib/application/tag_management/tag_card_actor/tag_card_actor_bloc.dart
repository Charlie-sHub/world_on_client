import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/tag_management/use_case/add_tag_to_interests.dart' as add_tag_to_interests;
import 'package:worldon/domain/tag_management/use_case/dismiss_tag_from_interests.dart' as dismiss_tag_from_interests;
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
      initialized: onInitialized,
      dismissedFromInterests: onDismissedFromInterests,
      addedToInterests: onAddedToInterests,
    );
  }

  Stream<TagCardActorState> onAddedToInterests(_AddedToInterests event) async* {
    yield const TagCardActorState.actionInProgress();
    final _addToInterests = getIt<add_tag_to_interests.AddTagToInterests>();
    final _failureOrUnit = await _addToInterests(
      add_tag_to_interests.Params(tag: event.tag),
    );
    yield _failureOrUnit.fold(
      (failure) => TagCardActorState.additionFailure(failure),
      (_) => const TagCardActorState.additionSuccess(),
    );
  }

  Stream<TagCardActorState> onDismissedFromInterests(_DismissedFromInterests event) async* {
    yield const TagCardActorState.actionInProgress();
    final _dismissFromInterests = getIt<dismiss_tag_from_interests.DismissTagFromInterests>();
    final _failureOrUnit = await _dismissFromInterests(
      dismiss_tag_from_interests.Params(tag: event.tag),
    );
    yield _failureOrUnit.fold(
      (failure) => TagCardActorState.dismissalFailure(failure),
      (_) => const TagCardActorState.dismissalSuccess(),
    );
  }

  Stream<TagCardActorState> onInitialized(_Initialized event) async* {
    final _getLoggedInUser = getIt<GetLoggedInUser>();
    final _userOption = await _getLoggedInUser(getIt<NoParams>());
    final _user = _userOption.fold(
      () => User.empty(),
      id,
    );
    if (_user.interests.contains(event.tag)) {
      yield const TagCardActorState.inInterests();
    } else {
      yield const TagCardActorState.notInInterests();
    }
  }
}
