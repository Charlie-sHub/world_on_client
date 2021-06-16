import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/core/entities/notification/notification_type_enum.dart';
import 'package:worldon/domain/core/entities/user/simple_user.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/notifications/use_case/send_notification.dart' as send_notification;
import 'package:worldon/domain/profile/use_case/block_user.dart' as block_user;
import 'package:worldon/domain/profile/use_case/un_block_user.dart' as un_block_user;
import 'package:worldon/injection.dart';

part 'block_actor_bloc.freezed.dart';
part 'block_actor_event.dart';
part 'block_actor_state.dart';

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
    final _failureOrUnit = await getIt<un_block_user.UnBlockUser>()(
      un_block_user.Params(blockedId: event.user.id),
    );
    yield* _failureOrUnit.fold(
      (failure) async* {
        yield BlockActorState.unBlockFailure(failure);
      },
      (_) async* {
        final _currentUserOption = await getIt<GetLoggedInUser>()(NoParams());
        final _currentUser = _currentUserOption.fold(
          () => throw UnAuthenticatedError,
          id,
        );
        getIt<send_notification.SendNotification>()(
          send_notification.Params(
            notification: Notification.empty().copyWith(
              sender: SimpleUser.fromUser(_currentUser),
              receiverId: event.user.id,
              description: EntityDescription("${_currentUser.username.getOrCrash()} unblocked you"),
              type: NotificationType.unblock,
            ),
          ),
        );
        yield const BlockActorState.unBlockSuccess();
        yield const BlockActorState.blocksNot();
      },
    );
  }

  Stream<BlockActorState> _onBlocked(_Blocked event) async* {
    yield const BlockActorState.actionInProgress();
    final _failureOrUnit = await getIt<block_user.BlockUser>()(
      block_user.Params(blockedId: event.user.id),
    );
    yield* _failureOrUnit.fold(
      (failure) async* {
        yield BlockActorState.blockFailure(failure);
      },
      (_) async* {
        final _currentUserOption = await getIt<GetLoggedInUser>()(NoParams());
        final _currentUser = _currentUserOption.fold(
          () => throw UnAuthenticatedError,
          id,
        );
        getIt<send_notification.SendNotification>()(
          send_notification.Params(
            notification: Notification.empty().copyWith(
              sender: SimpleUser.fromUser(_currentUser),
              receiverId: event.user.id,
              description: EntityDescription("${_currentUser.username.getOrCrash()} blocked you"),
              type: NotificationType.block,
            ),
          ),
        );
        yield const BlockActorState.blockSuccess();
        yield const BlockActorState.blocks();
      },
    );
  }

  Stream<BlockActorState> _onInitialized(_Initialized event) async* {
    final _loggedInUserOption = await getIt<GetLoggedInUser>()(getIt<NoParams>());
    final _loggedInUser = _loggedInUserOption.fold(
      () => throw UnAuthenticatedError(),
      id,
    );
    if (_loggedInUser.blockedUsersIds.contains(event.user.id)) {
      yield const BlockActorState.blocks();
    } else {
      yield const BlockActorState.blocksNot();
    }
  }
}
