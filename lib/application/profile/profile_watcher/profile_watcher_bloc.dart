import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/is_logged_in_user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/injection.dart';

part 'profile_watcher_bloc.freezed.dart';
part 'profile_watcher_event.dart';
part 'profile_watcher_state.dart';

@injectable
class ProfileWatcherBloc extends Bloc<ProfileWatcherEvent, ProfileWatcherState> {
  ProfileWatcherBloc() : super(const ProfileWatcherState.initial());

  @override
  Stream<ProfileWatcherState> mapEventToState(ProfileWatcherEvent event) async* {
    yield* event.map(
      initializedForeignOrOwn: onInitializedForeignOrOwn,
    );
  }

  Stream<ProfileWatcherState> onInitializedForeignOrOwn(_InitializedForeignOrOwn event) async* {
    yield const ProfileWatcherState.loadInProgress();
    yield* event.userOption.fold(
      () async* {
        final _getLoggedInUser = getIt<GetLoggedInUser>();
        final _loggedInUserOption = await _getLoggedInUser(getIt<NoParams>());
        yield _loggedInUserOption.fold(
          // Maybe GetLoggedInUser should be reworked so it returns possible failures
          () => const ProfileWatcherState.loadFailure(),
          (user) => ProfileWatcherState.own(user),
        );
      },
      (user) async* {
        final _isLoggedInUser = getIt<IsLoggedInUser>();
        final _isOwn = await _isLoggedInUser(
          Params(userToCompareWith: user),
        );
        if (_isOwn) {
          yield ProfileWatcherState.own(user);
        } else {
          yield ProfileWatcherState.foreign(user);
        }
      },
    );
  }
}
