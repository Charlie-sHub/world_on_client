import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/use_case/follow_user.dart' as follow_user;
import 'package:worldon/domain/profile/use_case/un_follow_user.dart' as un_follow_user;
import 'package:worldon/injection.dart';

part 'follow_actor_bloc.freezed.dart';
part 'follow_actor_event.dart';
part 'follow_actor_state.dart';

@injectable
class FollowActorBloc extends Bloc<FollowActorEvent, FollowActorState> {
  FollowActorBloc() : super(const FollowActorState.initial());

  @override
  Stream<FollowActorState> mapEventToState(FollowActorEvent event) async* {
    yield* event.map(
      initialized: onInitialized,
      followed: onFollowed,
      unFollowed: onUnFollowed,
    );
  }

  Stream<FollowActorState> onUnFollowed(_UnFollowed event) async* {
    yield const FollowActorState.actionInProgress();
    final _unFollowUser = getIt<un_follow_user.UnFollowUser>();
    final _failureOrUnit = await _unFollowUser(
      un_follow_user.Params(userToUnFollowId: event.user.id),
    );
    yield* _failureOrUnit.fold(
      (failure) async* {
        yield FollowActorState.unFollowFailure(failure);
      },
      (_) async* {
        yield const FollowActorState.unFollowSuccess();
        yield const FollowActorState.followsNot();
      },
    );
  }

  Stream<FollowActorState> onFollowed(_Followed event) async* {
    yield const FollowActorState.actionInProgress();
    final _followUser = getIt<follow_user.FollowUser>();
    final _failureOrUnit = await _followUser(
      follow_user.Params(userToFollowId: event.user.id),
    );
    yield* _failureOrUnit.fold(
      (failure) async* {
        yield FollowActorState.followFailure(failure);
      },
      (_) async* {
        yield const FollowActorState.followSuccess();
        yield const FollowActorState.follows();
      },
    );
  }

  // TODO: check if the user in the card is the logged in user and have a state to show that
  // So the user can't even attempt to follow itself
  Stream<FollowActorState> onInitialized(_Initialized event) async* {
    final _getLoggedInUser = getIt<GetLoggedInUser>();
    final _loggedInUserOption = await _getLoggedInUser(getIt<NoParams>());
    final _loggedInUser = _loggedInUserOption.fold(
      () => throw UnAuthenticatedError(),
      id,
    );
    if (_loggedInUser.followedUsers.contains(event.user)) {
      yield const FollowActorState.follows();
    } else {
      yield const FollowActorState.followsNot();
    }
  }
}
