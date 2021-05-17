import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/is_logged_in_user.dart' as is_logged_in_user;
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/use_case/load_user.dart' as load_user;
import 'package:worldon/injection.dart';

part 'profile_foreign_or_own_bloc.freezed.dart';
part 'profile_foreign_or_own_event.dart';
part 'profile_foreign_or_own_state.dart';

@injectable
class ProfileForeignOrOwnBloc extends Bloc<ProfileForeignOrOwnEvent, ProfileForeignOrOwnState> {
  ProfileForeignOrOwnBloc() : super(const ProfileForeignOrOwnState.initial());

  @override
  Stream<ProfileForeignOrOwnState> mapEventToState(ProfileForeignOrOwnEvent event) async* {
    yield* event.map(
      initializedForeignOrOwn: _onInitializedForeignOrOwn,
    );
  }

  Stream<ProfileForeignOrOwnState> _onInitializedForeignOrOwn(_InitializedForeignOrOwn event) async* {
    yield const ProfileForeignOrOwnState.loadInProgress();
    yield* event.userOption.fold(
      () async* {
        final _loggedInUserOption = await getIt<GetLoggedInUser>()(getIt<NoParams>());
        yield _loggedInUserOption.fold(
          // Maybe GetLoggedInUser should be reworked so it returns possible failures
          () => const ProfileForeignOrOwnState.loadFailure(),
          (user) => ProfileForeignOrOwnState.own(user),
        );
      },
      (user) async* {
        final _isOwn = await getIt<is_logged_in_user.IsLoggedInUser>()(
          is_logged_in_user.Params(userToCompareWith: user),
        );
        if (_isOwn) {
          final _own = await getIt<load_user.LoadUser>()(
            load_user.Params(id: user.id),
          );
          yield _own.fold(
            (_) => const ProfileForeignOrOwnState.loadFailure(),
            (_ownUser) => ProfileForeignOrOwnState.own(_ownUser),
          );
        } else {
          final _foreignUser = await getIt<load_user.LoadUser>()(
            load_user.Params(id: user.id),
          );
          yield _foreignUser.fold(
            (_) => const ProfileForeignOrOwnState.loadFailure(),
            (_foreignUser) => ProfileForeignOrOwnState.foreign(_foreignUser),
          );
        }
      },
    );
  }
}
