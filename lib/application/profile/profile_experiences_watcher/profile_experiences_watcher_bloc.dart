import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/profile/use_case/watch_experiences_created.dart'
    as load_experiences_created;
import 'package:worldon/domain/profile/use_case/watch_experiences_done.dart'
    as load_experiences_done;
import 'package:worldon/domain/profile/use_case/watch_experiences_liked.dart'
    as load_experiences_liked;
import 'package:worldon/injection.dart';

part 'profile_experiences_watcher_bloc.freezed.dart';
part 'profile_experiences_watcher_event.dart';
part 'profile_experiences_watcher_state.dart';

@injectable
class ProfileExperiencesWatcherBloc extends Bloc<ProfileExperiencesWatcherEvent,
    ProfileExperiencesWatcherState> {
  ProfileExperiencesWatcherBloc()
      : super(const ProfileExperiencesWatcherState.initial()) {
    on<_WatchExperiencesDoneStarted>(_onWatchExperiencesDoneStarted);
    on<_WatchExperiencesLikedStarted>(_onWatchExperiencesLikedStarted);
    on<_WatchExperiencesCreatedStarted>(_onWatchExperiencesCreatedStarted);
    on<_ExperiencesReceived>(_onExperiencesReceived);
  }

  StreamSubscription<Either<Failure, KtList<Experience>>>?
      _experienceStreamSubscription;

  FutureOr<void> _onWatchExperiencesDoneStarted(
    _WatchExperiencesDoneStarted event,
    Emitter emit,
  ) async {
    emit(const ProfileExperiencesWatcherState.loadInProgress());
    await _experienceStreamSubscription?.cancel();
    _experienceStreamSubscription =
        getIt<load_experiences_done.WatchExperiencesDone>()(
      load_experiences_done.Params(userId: event.id),
    ).listen(
      (failureOrExperiences) => add(
        ProfileExperiencesWatcherEvent.experiencesReceived(
          failureOrExperiences,
        ),
      ),
    );
  }

  FutureOr<void> _onWatchExperiencesLikedStarted(
    _WatchExperiencesLikedStarted event,
    Emitter emit,
  ) async {
    emit(const ProfileExperiencesWatcherState.loadInProgress());
    await _experienceStreamSubscription?.cancel();
    _experienceStreamSubscription =
        getIt<load_experiences_liked.WatchExperiencesLiked>()(
      load_experiences_liked.Params(userId: event.id),
    ).listen(
      (failureOrExperiences) => add(
        ProfileExperiencesWatcherEvent.experiencesReceived(
          failureOrExperiences,
        ),
      ),
    );
  }

  FutureOr<void> _onWatchExperiencesCreatedStarted(
    _WatchExperiencesCreatedStarted event,
    Emitter emit,
  ) async {
    emit(const ProfileExperiencesWatcherState.loadInProgress());
    await _experienceStreamSubscription?.cancel();
    _experienceStreamSubscription =
        getIt<load_experiences_created.WatchExperiencesCreated>()(
      load_experiences_created.Params(userId: event.id),
    ).listen(
      (failureOrExperiences) => add(
        ProfileExperiencesWatcherEvent.experiencesReceived(
          failureOrExperiences,
        ),
      ),
    );
  }

  FutureOr<void> _onExperiencesReceived(
    _ExperiencesReceived event,
    Emitter emit,
  ) {
    emit(
      event.failureOrExperiences.fold(
        (failure) => ProfileExperiencesWatcherState.loadFailure(failure),
        (experiences) =>
            ProfileExperiencesWatcherState.loadSuccess(experiences),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _experienceStreamSubscription?.cancel();
    return super.close();
  }
}
