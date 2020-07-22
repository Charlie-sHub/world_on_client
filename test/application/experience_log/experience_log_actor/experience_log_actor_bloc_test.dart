import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/experience_log/experience_log_actor/experience_log_actor_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/experience_log/use_case/dismiss_experience_from_log.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  DismissExperienceFromLog dismissExperience;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      dismissExperience = getIt<DismissExperienceFromLog>();
    },
  );
  const experienceId = 1;
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<ExperienceLogActorBloc>(),
    expect: [],
  );
  group(
    "Dismiss experience from log event tests",
    () {
      blocTest(
        TestDescription.shouldEmitSuccess,
        build: () {
          when(dismissExperience.call(any)).thenAnswer((_) async => right(unit));
          return getIt<ExperienceLogActorBloc>();
        },
        act: (bloc) async => bloc.add(const ExperienceLogActorEvent.experienceDismissed(experienceId)),
        verify: (_) async {
          verify(dismissExperience.call(any));
          verifyNoMoreInteractions(dismissExperience);
        },
        expect: [
          const ExperienceLogActorState.actionInProgress(),
          const ExperienceLogActorState.dismissalSuccess(),
        ],
      );
      blocTest(
        TestDescription.shouldEmitFailure,
        build: () {
          when(dismissExperience.call(any)).thenAnswer((_) async => left(failure));
          return getIt<ExperienceLogActorBloc>();
        },
        act: (bloc) async => bloc.add(const ExperienceLogActorEvent.experienceDismissed(experienceId)),
        verify: (_) async {
          verify(dismissExperience.call(any));
          verifyNoMoreInteractions(dismissExperience);
        },
        expect: [
          const ExperienceLogActorState.actionInProgress(),
          const ExperienceLogActorState.dismissalFailure(failure),
        ],
      );
    },
  );
}
