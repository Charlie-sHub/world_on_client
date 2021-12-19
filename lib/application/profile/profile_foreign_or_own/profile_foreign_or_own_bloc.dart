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

@injectable
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
    event.userIdOption.fold(
      () async {
        final _loggedInUserOption =
            await getIt<GetLoggedInUser>()(getIt<NoParams>());
        emit(
          _loggedInUserOption.fold(
            // Maybe GetLoggedInUser should be reworked so it returns possible failures
            () => const ProfileForeignOrOwnState.loadFailure(),
            (user) => ProfileForeignOrOwnState.own(user),
          ),
        );
      },
      (userId) async {
        final _isOwn = await getIt<is_logged_in_user.IsLoggedInUser>()(
          is_logged_in_user.Params(userToCompareWithId: userId),
        );
        if (_isOwn) {
          final _own = await getIt<load_user.LoadUser>()(
            load_user.Params(id: userId),
          );
          emit(
            _own.fold(
              (_) => const ProfileForeignOrOwnState.loadFailure(),
              (_ownUser) => ProfileForeignOrOwnState.own(_ownUser),
            ),
          );
        } else {
          final _foreignUser = await getIt<load_user.LoadUser>()(
            load_user.Params(id: userId),
          );
          emit(
            _foreignUser.fold(
              (_) => const ProfileForeignOrOwnState.loadFailure(),
              (_foreignUser) => ProfileForeignOrOwnState.foreign(_foreignUser),
            ),
          );
        }
      },
    );
  }
}
