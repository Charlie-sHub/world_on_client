import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/core/entities/notification/notification_type_enum.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/notifications/use_case/send_notification.dart';
import 'package:worldon/injection.dart';

part 'share_experience_internally_bloc.freezed.dart';
part 'share_experience_internally_event.dart';
part 'share_experience_internally_state.dart';

@injectable
class ShareExperienceInternallyBloc extends Bloc<ShareExperienceInternallyEvent,
    ShareExperienceInternallyState> {
  ShareExperienceInternallyBloc()
      : super(ShareExperienceInternallyState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_RemovedUser>(_onRemovedUser);
    on<_AddedUser>(_onAddedUser);
    on<_Shared>(_onShared);
  }

  void _onInitialized(_Initialized event, Emitter emit) {
    emit(
      state.copyWith(
        experience: event.experience,
      ),
    );
  }

  void _onRemovedUser(_RemovedUser event, Emitter emit) {
    final users = state.users.minusElement(event.user);
    emit(
      state.copyWith(
        users: users,
      ),
    );
  }

  void _onAddedUser(_AddedUser event, Emitter emit) {
    final users = state.users.plusElement(event.user);
    emit(
      state.copyWith(
        users: users,
      ),
    );
  }

  FutureOr<void> _onShared(_Shared event, Emitter emit) async {
    final currentUserOption = await getIt<GetLoggedInUser>()(
      NoParams(),
    );
    final currentUser = currentUserOption.fold(
      () => throw UnAuthenticatedError,
      id,
    );
    for (final userReceiver in state.users.dart) {
      getIt<SendNotification>()(
        Params(
          notification: Notification.empty().copyWith(
            sender: currentUser.simplified,
            receiverId: userReceiver.id,
            description: EntityDescription(
              "${currentUser.username.getOrCrash()} shared",
            ),
            type: NotificationType.share,
            experienceOption: some(state.experience),
          ),
        ),
      );
    }
    emit(
      state.copyWith(
        submitted: false,
      ),
    );
  }
}
