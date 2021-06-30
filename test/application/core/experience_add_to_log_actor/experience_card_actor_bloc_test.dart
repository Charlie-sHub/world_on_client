import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/core/experience_card_actor/experience_add_to_log_actor_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/experience_log/use_case/add_experience_to_log.dart';
import 'package:worldon/domain/experience_log/use_case/dismiss_experience_from_log.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  AddExperienceToLog addExperienceToLog;
  DismissExperienceFromLog dismissExperienceFromLog;
  GetLoggedInUser getLoggedInUser;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      addExperienceToLog = getIt<AddExperienceToLog>();
      dismissExperienceFromLog = getIt<DismissExperienceFromLog>();
      getLoggedInUser = getIt<GetLoggedInUser>();
    },
  );
  final experience = getValidExperience();
  final user = getValidUser().copyWith(experiencesToDoIds: {experience.id});
  const failure =
      Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<ExperienceCardActorBloc>(),
    expect: [],
  );
  group(
    TestDescription.testingInitialization,
    () {
      blocTest(
        "Should emit inLog",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(user));
          return getIt<ExperienceCardActorBloc>();
        },
        act: (bloc) async => bloc.add(ExperienceCardActorEvent.initialized(experience)),
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verifyNoMoreInteractions(getLoggedInUser);
        },
        expect: [const ExperienceCardActorState.inLog()],
      );
      blocTest(
        "Should emit notInLog",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(user));
          return getIt<ExperienceCardActorBloc>();
        },
        act: (bloc) async =>
            bloc.add(ExperienceCardActorEvent.initialized(experience.copyWith(id: UniqueId()))),
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verifyNoMoreInteractions(getLoggedInUser);
        },
        expect: [const ExperienceCardActorState.notInLog()],
      );
    },
  );
  group(
    "Add experience to log event tests",
    () {
      blocTest(
        TestDescription.shouldEmitSuccess,
        build: () {
          when(addExperienceToLog.call(any)).thenAnswer((_) async => right(unit));
          return getIt<ExperienceCardActorBloc>();
        },
        act: (bloc) async => bloc.add(ExperienceCardActorEvent.addedExperienceToLog(experience)),
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
        build: () {
          when(addExperienceToLog.call(any)).thenAnswer((_) async => left(failure));
          return getIt<ExperienceCardActorBloc>();
        },
        act: (bloc) async => bloc.add(ExperienceCardActorEvent.addedExperienceToLog(experience)),
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
  group(
    "Dismiss experience from log event tests",
    () {
      blocTest(
        TestDescription.shouldEmitSuccess,
        build: () {
          when(dismissExperienceFromLog.call(any)).thenAnswer((_) async => right(unit));
          return getIt<ExperienceCardActorBloc>();
        },
        act: (bloc) async =>
            bloc.add(ExperienceCardActorEvent.dismissedExperienceFromLog(experience)),
        verify: (_) async {
          verify(dismissExperienceFromLog.call(any));
          verifyNoMoreInteractions(dismissExperienceFromLog);
        },
        expect: [
          const ExperienceCardActorState.actionInProgress(),
          const ExperienceCardActorState.dismissalSuccess(),
        ],
      );
      blocTest(
        TestDescription.shouldEmitFailure,
        build: () {
          when(dismissExperienceFromLog.call(any)).thenAnswer((_) async => left(failure));
          return getIt<ExperienceCardActorBloc>();
        },
        act: (bloc) async =>
            bloc.add(ExperienceCardActorEvent.dismissedExperienceFromLog(experience)),
        verify: (_) async {
          verify(dismissExperienceFromLog.call(any));
          verifyNoMoreInteractions(dismissExperienceFromLog);
        },
        expect: [
          const ExperienceCardActorState.actionInProgress(),
          const ExperienceCardActorState.dismissalFailure(failure),
        ],
      );
    },
  );
}
