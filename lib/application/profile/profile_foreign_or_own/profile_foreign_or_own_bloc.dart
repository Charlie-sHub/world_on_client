import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/is_logged_in_user.dart'
    as is_logged_in_user;
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/profile/use_case/load_user.dart' as load_user;
import 'package:worldon/injection.dart';

part 'profile_foreign_or_own_bloc.freezed.dart';
part 'profile_foreign_or_own_event.dart';
part 'profile_foreign_or_own_state.dart';

@lazySingleton
class ProfileForeignOrOwnBloc
    extends Bloc<ProfileForeignOrOwnEvent, ProfileForeignOrOwnState> {
  ProfileForeignOrOwnBloc() : super(const ProfileForeignOrOwnState.initial()) {
    on<_InitializedForeignOrOwn>(_onInitializedForeignOrOwn);
  }

  FutureOr<void> _onInitializedForeignOrOwn(
    _InitializedForeignOrOwn event,
    Emitter emit,
  ) async {
    emit(const ProfileForeignOrOwnState.loadInProgress());
    await event.userIdOption.fold(
      () async {
        final loggedInUserOption = await getIt<GetLoggedInUser>()(
          getIt<NoParams>(),
        );
        emit(
          loggedInUserOption.fold(
            // Maybe GetLoggedInUser should be reworked so it returns possible failures
            () => const ProfileForeignOrOwnState.loadFailure(),
            (user) => ProfileForeignOrOwnState.own(user),
          ),
        );
      },
      (userId) async {
        final isOwn = await getIt<is_logged_in_user.IsLoggedInUser>()(
          is_logged_in_user.Params(userToCompareWithId: userId),
        );
        if (isOwn) {
          final own = await getIt<load_user.LoadUser>()(
            load_user.Params(id: userId),
          );
          emit(
            own.fold(
              (_) => const ProfileForeignOrOwnState.loadFailure(),
              (ownUser) => ProfileForeignOrOwnState.own(ownUser),
            ),
          );
        } else {
          final foreignUser = await getIt<load_user.LoadUser>()(
            load_user.Params(id: userId),
          );
          emit(
            foreignUser.fold(
              (_) => const ProfileForeignOrOwnState.loadFailure(),
              (foreignUser) => ProfileForeignOrOwnState.foreign(foreignUser),
            ),
          );
        }
      },
    );
  }
}
