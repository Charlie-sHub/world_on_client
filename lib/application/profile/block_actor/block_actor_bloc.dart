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
import 'package:worldon/domain/profile/use_case/block_user.dart' as block_user;
import 'package:worldon/domain/profile/use_case/un_block_user.dart' as un_block_user;
import 'package:worldon/injection.dart';

part 'block_actor_bloc.freezed.dart';
part 'block_actor_event.dart';
part 'block_actor_state.dart';

// TODO: Move to core
@injectable
class BlockActorBloc extends Bloc<BlockActorEvent, BlockActorState> {
  BlockActorBloc() : super(const BlockActorState.initial());

  @override
  Stream<BlockActorState> mapEventToState(BlockActorEvent event) async* {
    yield* event.map(
      initialized: _onInitialized,
      blocked: _onBlocked,
      unBlocked: _onUnBlocked,
    );
  }

  Stream<BlockActorState> _onUnBlocked(_UnBlocked event) async* {
    yield const BlockActorState.actionInProgress();
    final _unBlockUser = getIt<un_block_user.UnBlockUser>();
    final _failureOrUnit = await _unBlockUser(
      un_block_user.Params(blockedId: event.user.id),
    );
    yield* _failureOrUnit.fold(
      (failure) async* {
        yield BlockActorState.unBlockFailure(failure);
      },
      (_) async* {
        yield const BlockActorState.unBlockSuccess();
        yield const BlockActorState.blocksNot();
      },
    );
  }

  Stream<BlockActorState> _onBlocked(_Blocked event) async* {
    yield const BlockActorState.actionInProgress();
    final _blockUser = getIt<block_user.BlockUser>();
    final _failureOrUnit = await _blockUser(
      block_user.Params(blockedId: event.user.id),
    );
    yield* _failureOrUnit.fold(
      (failure) async* {
        yield BlockActorState.blockFailure(failure);
      },
      (_) async* {
        yield const BlockActorState.blockSuccess();
        yield const BlockActorState.blocks();
      },
    );
  }

  // TODO: check if the user in the card is the logged in user and have a state to show that
  // So the user can't even attempt to block itself
  Stream<BlockActorState> _onInitialized(_Initialized event) async* {
    final _getLoggedInUser = getIt<GetLoggedInUser>();
    final _loggedInUserOption = await _getLoggedInUser(getIt<NoParams>());
    final _loggedInUser = _loggedInUserOption.fold(
      () => throw UnAuthenticatedError(),
      id,
    );
    if (_loggedInUser.blockedUsers.contains(event.user)) {
      yield const BlockActorState.blocks();
    } else {
      yield const BlockActorState.blocksNot();
    }
  }
}
