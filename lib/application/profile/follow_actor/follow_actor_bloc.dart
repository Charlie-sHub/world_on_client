import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/profile/use_case/follow_user.dart' as follow_user;
import 'package:worldon/domain/profile/use_case/follows_user.dart' as follows_user;
import 'package:worldon/domain/profile/use_case/un_follow_user.dart' as un_follow_user;
import 'package:worldon/injection.dart';

part 'follow_actor_bloc.freezed.dart';
part 'follow_actor_event.dart';
part 'follow_actor_state.dart';

// TODO: Move to core
@injectable
class FollowActorBloc extends Bloc<FollowActorEvent, FollowActorState> {
  FollowActorBloc() : super(const FollowActorState.initial());

  final _logger = Logger();

  @override
  Stream<FollowActorState> mapEventToState(FollowActorEvent event) async* {
    yield* event.map(
      initialized: _onInitialized,
      followed: _onFollowed,
      unFollowed: _onUnFollowed,
    );
  }

  Stream<FollowActorState> _onUnFollowed(_UnFollowed event) async* {
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

  Stream<FollowActorState> _onFollowed(_Followed event) async* {
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

  Stream<FollowActorState> _onInitialized(_Initialized event) async* {
    final _followsUser = getIt<follows_user.FollowsUser>();
    final _followsUserResult = await _followsUser(
      follows_user.Params(userId: event.user.id),
    );
    yield _followsUserResult.fold(
      (failure) => FollowActorState.followFailure(failure),
      (_follows) {
        if (_follows) {
          return const FollowActorState.follows();
        } else {
          return const FollowActorState.followsNot();
        }
      },
    );
  }
}
