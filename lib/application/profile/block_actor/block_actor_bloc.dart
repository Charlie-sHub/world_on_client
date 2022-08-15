import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/core/entities/notification/notification_type_enum.dart';
import 'package:worldon/domain/core/entities/user/simple_user.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/notifications/use_case/send_notification.dart'
    as send_notification;
import 'package:worldon/domain/profile/use_case/block_user.dart' as block_user;
import 'package:worldon/domain/profile/use_case/un_block_user.dart'
    as un_block_user;
import 'package:worldon/injection.dart';

part 'block_actor_bloc.freezed.dart';
part 'block_actor_event.dart';
part 'block_actor_state.dart';

@injectable
class BlockActorBloc extends Bloc<BlockActorEvent, BlockActorState> {
  BlockActorBloc() : super(const BlockActorState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_Blocked>(_onBlocked);
    on<_UnBlocked>(_onUnBlocked);
  }

  FutureOr<void> _onUnBlocked(_UnBlocked event, Emitter emit) async {
    emit(const BlockActorState.actionInProgress());
    final failureOrUnit = await getIt<un_block_user.UnBlockUser>()(
      un_block_user.Params(blockedId: event.userToUnBlockId),
    );
    failureOrUnit.fold(
      (failure) {
        emit(BlockActorState.unBlockFailure(failure));
      },
      (_) {
        getIt<send_notification.SendNotification>()(
          send_notification.Params(
            notification: Notification.empty().copyWith(
              sender: event.currentUser,
              receiverId: event.userToUnBlockId,
              description: EntityDescription(
                "${event.currentUser.username.getOrCrash()} unblocked you",
              ),
              type: NotificationType.unblock,
            ),
          ),
        );
        emit(const BlockActorState.unBlockSuccess());
        emit(const BlockActorState.blocksNot());
      },
    );
  }

  FutureOr<void> _onBlocked(_Blocked event, Emitter emit) async {
    emit(const BlockActorState.actionInProgress());
    final failureOrUnit = await getIt<block_user.BlockUser>()(
      block_user.Params(
        blockedId: event.userToBlockId,
        currentUserId: event.currentUser.id,
      ),
    );
    failureOrUnit.fold(
      (failure) {
        emit(BlockActorState.blockFailure(failure));
      },
      (_) {
        getIt<send_notification.SendNotification>()(
          send_notification.Params(
            notification: Notification.empty().copyWith(
              sender: event.currentUser,
              receiverId: event.userToBlockId,
              description: EntityDescription(
                "${event.currentUser.username.getOrCrash()} blocked you",
              ),
              type: NotificationType.block,
            ),
          ),
        );
        emit(const BlockActorState.blockSuccess());
        emit(const BlockActorState.blocks());
      },
    );
  }

  void _onInitialized(_Initialized event, Emitter emit) {
    if (event.blockedUsersIds.contains(event.userToCheckId)) {
      emit(const BlockActorState.blocks());
    } else {
      emit(const BlockActorState.blocksNot());
    }
  }
}
