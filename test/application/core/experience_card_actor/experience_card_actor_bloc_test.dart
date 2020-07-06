import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/core/experience_card_actor/experience_card_actor_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/experience_log/use_case/add_experience_to_log.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  AddExperienceToLog addExperienceToLog;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      addExperienceToLog = getIt<AddExperienceToLog>();
    },
  );
  const experienceId = 1;
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<ExperienceCardActorBloc>(),
    skip: 0,
    expect: [const ExperienceCardActorState.initial()],
  );
  group(
    "Add experience to log event tests",
    () {
      blocTest(
        TestDescription.shouldEmitSuccess,
        build: () async {
          when(addExperienceToLog.call(any)).thenAnswer((_) async => right(unit));
          return getIt<ExperienceCardActorBloc>();
        },
        act: (bloc) async => bloc.add(const ExperienceCardActorEvent.addedExperienceToLog(experienceId)),
        verify: (_) async {
          verify(addExperienceToLog.call(any));
          verifyNoMoreInteractions(addExperienceToLog);
        },
        expect: [
          const ExperienceCardActorState.actionInProgress(),
          const ExperienceCardActorState.additionSuccess(),
        ],
      );
      blocTest(
        TestDescription.shouldEmitFailure,
        build: () async {
          when(addExperienceToLog.call(any)).thenAnswer((_) async => left(failure));
          return getIt<ExperienceCardActorBloc>();
        },
        act: (bloc) async => bloc.add(const ExperienceCardActorEvent.addedExperienceToLog(experienceId)),
        verify: (_) async {
          verify(addExperienceToLog.call(any));
          verifyNoMoreInteractions(addExperienceToLog);
        },
        expect: [
          const ExperienceCardActorState.actionInProgress(),
          const ExperienceCardActorState.additionFailure(failure),
        ],
      );
    },
  );
}
