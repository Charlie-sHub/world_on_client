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
import 'package:worldon/domain/profile/use_case/follow_user.dart'
    as follow_user;
import 'package:worldon/domain/profile/use_case/un_follow_user.dart'
    as un_follow_user;
import 'package:worldon/injection.dart';

part 'follow_actor_bloc.freezed.dart';
part 'follow_actor_event.dart';
part 'follow_actor_state.dart';

@injectable
class FollowActorBloc extends Bloc<FollowActorEvent, FollowActorState> {
  FollowActorBloc() : super(const FollowActorState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_Followed>(_onFollowed);
    on<_UnFollowed>(_onUnFollowed);
  }

  FutureOr<void> _onUnFollowed(_UnFollowed event, Emitter emit) async {
    emit(const FollowActorState.actionInProgress());
    final _failureOrUnit = await getIt<un_follow_user.UnFollowUser>()(
      un_follow_user.Params(userToUnFollowId: event.userToUnFollowId),
    );
    _failureOrUnit.fold(
      (failure) {
        emit(FollowActorState.unFollowFailure(failure));
      },
      (_) {
        getIt<send_notification.SendNotification>()(
          send_notification.Params(
            notification: Notification.empty().copyWith(
              sender: event.currentUser,
              receiverId: event.userToUnFollowId,
              description: EntityDescription(
                "${event.currentUser.username.getOrCrash()} unfollowed you",
              ),
              type: NotificationType.unfollow,
            ),
          ),
        );
        emit(const FollowActorState.unFollowSuccess());
        emit(const FollowActorState.followsNot());
      },
    );
  }

  FutureOr<void> _onFollowed(_Followed event, Emitter emit) async {
    emit(const FollowActorState.actionInProgress());
    final _failureOrUnit = await getIt<follow_user.FollowUser>()(
      follow_user.Params(
        followedId: event.userToFollowId,
        currentUserId: event.currentUser.id,
      ),
    );
    _failureOrUnit.fold(
      (failure) {
        emit(FollowActorState.followFailure(failure));
      },
      (_) {
        getIt<send_notification.SendNotification>()(
          send_notification.Params(
            notification: Notification.empty().copyWith(
              sender: event.currentUser,
              receiverId: event.userToFollowId,
              description: EntityDescription(
                "${event.currentUser.username.getOrCrash()} is following you",
              ),
              type: NotificationType.follow,
            ),
          ),
        );
        emit(const FollowActorState.followSuccess());
        emit(const FollowActorState.follows());
      },
    );
  }

  void _onInitialized(_Initialized event, Emitter emit) {
    if (event.followedUsersIds.contains(event.userId)) {
      emit(const FollowActorState.follows());
    } else {
      emit(const FollowActorState.followsNot());
    }
  }
}
