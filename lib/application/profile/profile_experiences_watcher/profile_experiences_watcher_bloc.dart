import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/profile/use_case/watch_experiences_created.dart' as load_experiences_created;
import 'package:worldon/domain/profile/use_case/watch_experiences_done.dart' as load_experiences_done;
import 'package:worldon/domain/profile/use_case/watch_experiences_liked.dart' as load_experiences_liked;
import 'package:worldon/injection.dart';

part 'profile_experiences_watcher_bloc.freezed.dart';

part 'profile_experiences_watcher_event.dart';

part 'profile_experiences_watcher_state.dart';

@injectable
class ProfileExperiencesWatcherBloc extends Bloc<ProfileExperiencesWatcherEvent, ProfileExperiencesWatcherState> {
  StreamSubscription<Either<Failure, KtList<Experience>>> _experienceStreamSubscription;

  ProfileExperiencesWatcherBloc() : super(const ProfileExperiencesWatcherState.initial());

  @override
  Stream<ProfileExperiencesWatcherState> mapEventToState(ProfileExperiencesWatcherEvent event) async* {
    yield* event.map(
      watchExperiencesDoneStarted: onWatchExperiencesDoneStarted,
      watchExperiencesLikedStarted: onWatchExperiencesLikedStarted,
      watchExperiencesCreatedStarted: onWatchExperiencesCreatedStarted,
      experiencesReceived: onExperiencesReceived,
    );
  }

  Stream<ProfileExperiencesWatcherState> onWatchExperiencesDoneStarted(_WatchExperiencesDoneStarted event) async* {
    yield const ProfileExperiencesWatcherState.loadInProgress();
    await _experienceStreamSubscription?.cancel();
    final _loadExperiencesDone = getIt<load_experiences_done.WatchExperiencesDone>();
    _experienceStreamSubscription = _loadExperiencesDone(
      load_experiences_done.Params(userId: event.user.id),
    ).listen(
      (failureOrExperiences) => add(
        ProfileExperiencesWatcherEvent.experiencesReceived(failureOrExperiences),
      ),
    );
  }

  Stream<ProfileExperiencesWatcherState> onWatchExperiencesLikedStarted(_WatchExperiencesLikedStarted event) async* {
    yield const ProfileExperiencesWatcherState.loadInProgress();
    await _experienceStreamSubscription?.cancel();
    final _loadExperiencesLiked = getIt<load_experiences_liked.WatchExperiencesLiked>();
    _experienceStreamSubscription = _loadExperiencesLiked(
      load_experiences_liked.Params(userId: event.user.id),
    ).listen(
        (failureOrExperiences) =>
        add(
          ProfileExperiencesWatcherEvent.experiencesReceived(failureOrExperiences),
        ),
    );
  }

  Stream<ProfileExperiencesWatcherState> onWatchExperiencesCreatedStarted(_WatchExperiencesCreatedStarted event) async* {
    yield const ProfileExperiencesWatcherState.loadInProgress();
    await _experienceStreamSubscription?.cancel();
    final _loadExperiencesCreated = getIt<load_experiences_created.WatchExperiencesCreated>();
    _experienceStreamSubscription = _loadExperiencesCreated(
      load_experiences_created.Params(
        userId: event.user.id,
      ),
    ).listen(
        (failureOrExperiences) =>
        add(
          ProfileExperiencesWatcherEvent.experiencesReceived(failureOrExperiences),
        ),
    );
  }

  Stream<ProfileExperiencesWatcherState> onExperiencesReceived(_ExperiencesReceived event) async* {
    yield event.failureOrExperiences.fold(
      (failure) => ProfileExperiencesWatcherState.loadFailure(failure),
      (experiences) => ProfileExperiencesWatcherState.loadSuccess(experiences),
    );
  }

  @override
  Future<void> close() async {
    await _experienceStreamSubscription?.cancel();
    return super.close();
  }
}
