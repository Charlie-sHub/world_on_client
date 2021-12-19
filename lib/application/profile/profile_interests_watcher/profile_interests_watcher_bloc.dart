import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/profile/use_case/watch_user_interests.dart';
import 'package:worldon/injection.dart';

part 'profile_interests_watcher_bloc.freezed.dart';
part 'profile_interests_watcher_event.dart';
part 'profile_interests_watcher_state.dart';

@injectable
class ProfileInterestsWatcherBloc
    extends Bloc<ProfileInterestsWatcherEvent, ProfileInterestsWatcherState> {
  ProfileInterestsWatcherBloc()
      : super(const ProfileInterestsWatcherState.initial()) {
    on<_WatchInterestsStarted>(_onWatchInterestsStarted);
    on<_ResultsReceived>(_onResultsReceived);
  }

  StreamSubscription<Either<Failure, KtList<Tag>>>?
      _userInterestsStreamSubscription;

  void _onResultsReceived(_ResultsReceived event, Emitter emit) {
    emit(
      event.failureOrTags.fold(
        (failure) => ProfileInterestsWatcherState.loadFailure(failure),
        (tags) => ProfileInterestsWatcherState.loadSuccess(tags),
      ),
    );
  }

  FutureOr<void> _onWatchInterestsStarted(
    _WatchInterestsStarted event,
    Emitter emit,
  ) async {
    emit(const ProfileInterestsWatcherState.loadInProgress());
    await _userInterestsStreamSubscription?.cancel();
    _userInterestsStreamSubscription = getIt<WatchUserInterests>()(
      Params(userId: event.id),
    ).listen(
      (_failureOrTags) =>
          add(ProfileInterestsWatcherEvent.resultsReceived(_failureOrTags)),
    );
  }

  @override
  Future<void> close() async {
    await _userInterestsStreamSubscription?.cancel();
    return super.close();
  }
}
