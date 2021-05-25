import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
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
class ShareExperienceInternallyBloc extends Bloc<ShareExperienceInternallyEvent, ShareExperienceInternallyState> {
  ShareExperienceInternallyBloc() : super(ShareExperienceInternallyState.initial());

  @override
  Stream<ShareExperienceInternallyState> mapEventToState(ShareExperienceInternallyEvent event) async* {
    yield* event.map(
      initialized: _onInitialized,
      removedUser: _onRemovedUser,
      addedUser: _onAddedUser,
      shared: _onShared,
    );
  }

  Stream<ShareExperienceInternallyState> _onInitialized(_Initialized event) async* {
    yield state.copyWith(
      experience: event.experience,
    );
  }

  Stream<ShareExperienceInternallyState> _onRemovedUser(_RemovedUser event) async* {
    final _users = state.users.minusElement(event.user);
    yield state.copyWith(
      users: _users,
    );
  }

  Stream<ShareExperienceInternallyState> _onAddedUser(_AddedUser event) async* {
    final _users = state.users.plusElement(event.user);
    yield state.copyWith(
      users: _users,
    );
  }

  Stream<ShareExperienceInternallyState> _onShared(_Shared event) async* {
    final _currentUserOption = await getIt<GetLoggedInUser>()(
      NoParams(),
    );
    final _currentUser = _currentUserOption.fold(
      () => throw UnAuthenticatedError,
      id,
    );
    for (final _user in state.users.dart) {
      getIt<SendNotification>()(
        Params(
          notification: Notification.empty().copyWith(
            sender: _currentUser,
            receiver: _user,
            description: EntityDescription("${_currentUser.username.getOrCrash()} shared"),
            type: NotificationType.share,
            experienceOption: some(state.experience),
          ),
        ),
      );
    }
    yield state.copyWith(
      submitted: false,
    );
  }
}
