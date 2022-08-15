import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/injection.dart';

part 'user_profile_button_watcher_bloc.freezed.dart';
part 'user_profile_button_watcher_event.dart';
part 'user_profile_button_watcher_state.dart';

@Deprecated(
  "Better to use WatchCurrentUserBloc and get the image url from there",
)
@injectable
class UserProfileButtonWatcherBloc
    extends Bloc<UserProfileButtonWatcherEvent, UserProfileButtonWatcherState> {
  @Deprecated(
    "Better to use WatchCurrentUserBloc and get the image url from there",
  )
  UserProfileButtonWatcherBloc()
      : super(
          const UserProfileButtonWatcherState.initial(),
        ) {
    on<_Initialized>(_onInitialized);
  }

  FutureOr<void> _onInitialized(_Initialized event, Emitter emit) async {
    emit(const UserProfileButtonWatcherState.actionInProgress());
    final loggedInUserOption =
        await getIt<GetLoggedInUser>()(getIt<NoParams>());
    emit(
      loggedInUserOption.fold(
        () => const UserProfileButtonWatcherState.loadFailure(),
        (user) => UserProfileButtonWatcherState.loadSuccess(user.imageURL),
      ),
    );
  }
}
