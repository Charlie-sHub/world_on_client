import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

import '../../../injection.dart';

part 'user_profile_button_watcher_bloc.freezed.dart';
part 'user_profile_button_watcher_event.dart';
part 'user_profile_button_watcher_state.dart';

@injectable
class UserProfileButtonWatcherBloc extends Bloc<UserProfileButtonWatcherEvent, UserProfileButtonWatcherState> {
  UserProfileButtonWatcherBloc() : super(const UserProfileButtonWatcherState.initial());

  @override
  Stream<UserProfileButtonWatcherState> mapEventToState(
    UserProfileButtonWatcherEvent event,
  ) async* {
    yield* event.map(
      initialized: onInitialized,
    );
  }

  Stream<UserProfileButtonWatcherState> onInitialized(_Initialized event) async* {
    yield const UserProfileButtonWatcherState.actionInProgress();
    final _loggedInUserOption = await getIt<GetLoggedInUser>()(getIt<NoParams>());
    yield _loggedInUserOption.fold(
      () => const UserProfileButtonWatcherState.loadFailure(),
      (_user) => UserProfileButtonWatcherState.loadSuccess(_user.imageURL),
    );
  }
}
