import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/application/experience_log/experience_log_watcher/experience_log_watcher_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/experience_log/use_case/watch_user_log.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../test_descriptions.dart';

void main() {
  WatchUserLog loadUserLog;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      loadUserLog = getIt<WatchUserLog>();
    },
  );
  final experienceList = KtList.of(Experience.empty());
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<ExperienceLogWatcherBloc>(),
    expect: [],
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () {
      when(loadUserLog.call(any)).thenAnswer((realInvocation) => createStream(right(experienceList)));
      return getIt<ExperienceLogWatcherBloc>();
    },
    act: (bloc) async {
      bloc.add(const ExperienceLogWatcherEvent.watchExperiencesLogStarted());
      bloc.add(ExperienceLogWatcherEvent.resultsReceived(right(experienceList)));
    },
    verify: (_) async {
      verify(loadUserLog.call(any));
      verifyNoMoreInteractions(loadUserLog);
    },
    expect: [
      const ExperienceLogWatcherState.loadInProgress(),
      ExperienceLogWatcherState.loadSuccess(experienceList),
    ],
  );
  blocTest(
    TestDescription.shouldEmitFailure,
    build: () {
      when(loadUserLog.call(any)).thenAnswer((realInvocation) => createStream(left(failure)));
      return getIt<ExperienceLogWatcherBloc>();
    },
    act: (bloc) async {
      bloc.add(const ExperienceLogWatcherEvent.watchExperiencesLogStarted());
      bloc.add(ExperienceLogWatcherEvent.resultsReceived(left(failure)));
    },
    verify: (_) async {
      verify(loadUserLog.call(any));
      verifyNoMoreInteractions(loadUserLog);
    },
    expect: [
      const ExperienceLogWatcherState.loadInProgress(),
      const ExperienceLogWatcherState.loadFailure(failure),
    ],
  );
}
