import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/experience_log/experience_log_watcher/experience_log_watcher_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/experience_log/use_case/load_user_log.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../test_descriptions.dart';

void main() {
  LoadUserLog loadUserLog;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      loadUserLog = getIt<LoadUserLog>();
    },
  );
  final experienceSet = {Experience.empty()};
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<ExperienceLogWatcherBloc>(),
    skip: 0,
    expect: [const ExperienceLogWatcherState.initial()],
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () async {
      when(loadUserLog.call(any)).thenAnswer((realInvocation) => createStream(right(experienceSet)));
      return getIt<ExperienceLogWatcherBloc>();
    },
    act: (bloc) async => bloc.add(const ExperienceLogWatcherEvent.watchExperiencesLogStarted()),
    verify: (_) async {
      verify(loadUserLog.call(any));
      verifyNoMoreInteractions(loadUserLog);
    },
    expect: [
      const ExperienceLogWatcherState.loadInProgress(),
      ExperienceLogWatcherState.loadSuccess(experienceSet),
    ],
  );
  blocTest(
    TestDescription.shouldEmitFailure,
    build: () async {
      when(loadUserLog.call(any)).thenAnswer((realInvocation) => createStream(left(failure)));
      return getIt<ExperienceLogWatcherBloc>();
    },
    act: (bloc) async => bloc.add(const ExperienceLogWatcherEvent.watchExperiencesLogStarted()),
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
