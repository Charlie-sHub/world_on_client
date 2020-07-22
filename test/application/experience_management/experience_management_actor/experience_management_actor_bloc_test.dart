import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/experience_management/experience_management_actor/experience_management_actor_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/profile/use_case/delete_experience.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  DeleteExperience deleteExperience;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      deleteExperience = getIt<DeleteExperience>();
    },
  );
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<ExperienceManagementActorBloc>(),
    expect: [],
  );
  group(
    TestDescription.deleteEventTests,
    () {
      blocTest(
        TestDescription.shouldEmitSuccess,
        build: () {
          when(deleteExperience.call(any)).thenAnswer((_) async => right(unit));
          return getIt<ExperienceManagementActorBloc>();
        },
        act: (bloc) async => bloc.add(ExperienceManagementActorEvent.deleted(Experience.empty())),
        verify: (_) async {
          verify(deleteExperience.call(any));
          verifyNoMoreInteractions(deleteExperience);
        },
        expect: [
          const ExperienceManagementActorState.actionInProgress(),
          const ExperienceManagementActorState.deletionSuccess(),
        ],
      );

      blocTest(
        TestDescription.shouldEmitFailure,
        build: () {
          when(deleteExperience.call(any)).thenAnswer((_) async => left(failure));
          return getIt<ExperienceManagementActorBloc>();
        },
        act: (bloc) async => bloc.add(ExperienceManagementActorEvent.deleted(Experience.empty())),
        verify: (_) async {
          verify(deleteExperience.call(any));
          verifyNoMoreInteractions(deleteExperience);
        },
        expect: [
          const ExperienceManagementActorState.actionInProgress(),
          const ExperienceManagementActorState.deletionFailure(failure),
        ],
      );
    },
  );
}
