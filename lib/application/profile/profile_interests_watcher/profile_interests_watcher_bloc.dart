import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/profile/use_case/load_user_interests.dart';

import '../../../injection.dart';

part 'profile_interests_watcher_bloc.freezed.dart';

part 'profile_interests_watcher_event.dart';

part 'profile_interests_watcher_state.dart';

@injectable
class ProfileInterestsWatcherBloc extends Bloc<ProfileInterestsWatcherEvent, ProfileInterestsWatcherState> {
  ProfileInterestsWatcherBloc() : super(const ProfileInterestsWatcherState.initial());

  @override
  Stream<ProfileInterestsWatcherState> mapEventToState(ProfileInterestsWatcherEvent event) async* {
    yield* event.map(
      watchInterestsStarted: onWatchInterestsStarted,
    );
  }

  Stream<ProfileInterestsWatcherState> onWatchInterestsStarted(_WatchInterestsStarted event) async* {
    yield const ProfileInterestsWatcherState.loadInProgress();
    final _loadInterests = getIt<LoadUserInterests>();
    yield* _loadInterests(
      Params(
        userId: event.user.id,
      ),
    ).map(
      (failureOrTags) => failureOrTags.fold(
        (failure) => ProfileInterestsWatcherState.loadFailure(failure),
        (tags) => ProfileInterestsWatcherState.loadSuccess(tags),
      ),
    );
  }
}
