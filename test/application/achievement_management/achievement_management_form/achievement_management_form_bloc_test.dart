import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/application/achievement_management/achievement_management_form/achievement_management_form_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/achievement_management/use_case/create_achievement.dart';
import 'package:worldon/domain/achievement_management/use_case/edit_achievement.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/get_valid_tag.dart';
import '../../../domain/core/methods/get_valid_tag_set.dart';
import '../../../domain/core/methods/get_valid_user.dart';
import '../../../test_descriptions.dart';

void main() {
  // Not going to bother mocking the value object or validators
  // for now at least
  GetLoggedInUser getLoggedInUser;
  EditAchievement editAchievement;
  CreateAchievement createAchievement;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      editAchievement = getIt<EditAchievement>();
      getLoggedInUser = getIt<GetLoggedInUser>();
      createAchievement = getIt<CreateAchievement>();
    },
  );
  final validUser = getValidUser();
  final achievementToEdit = Achievement.empty().copyWith(
    name: Name("Test"),
    description: EntityDescription("Test"),
    experiencePoints: ExperiencePoints(1),
    creator: validUser,
    tags: getValidTagSet(),
  );
  const name = "Test";
  const description = "For testing";
  const experiencePoints = 10;
  final tags = KtSet.of(getValidTag());
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<AchievementManagementFormBloc>(),
    skip: 0,
    expect: [AchievementManagementFormState.initial()],
  );
  group(
    TestDescription.testingInitialization,
    () {
      blocTest(
        TestDescription.shouldEmitInitialized,
        build: () async => getIt<AchievementManagementFormBloc>(),
        act: (bloc) async => bloc.add(AchievementManagementFormEvent.initialize(some(achievementToEdit))),
        expect: [
          AchievementManagementFormState.initial().copyWith(
            achievement: achievementToEdit,
            isEditing: true,
          ),
        ],
      );
      blocTest(
        TestDescription.shouldNotEmitInitialized,
        build: () async => getIt<AchievementManagementFormBloc>(),
        act: (bloc) async => bloc.add(AchievementManagementFormEvent.initialize(none())),
        skip: 0,
        expect: [
          AchievementManagementFormState.initial(),
        ],
      );
    },
  );
  group(
    TestDescription.groupOnSuccess,
    () {
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the name",
        build: () async => getIt<AchievementManagementFormBloc>(),
        act: (bloc) async {
          bloc.add(AchievementManagementFormEvent.initialize(none()));
          bloc.add(const AchievementManagementFormEvent.nameChange(name));
        },
        expect: [
          AchievementManagementFormState.initial().copyWith(
            achievement: Achievement.empty().copyWith(
              name: Name(name),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the description",
        build: () async => getIt<AchievementManagementFormBloc>(),
        act: (bloc) async {
          bloc.add(AchievementManagementFormEvent.initialize(none()));
          bloc.add(const AchievementManagementFormEvent.descriptionChange(description));
        },
        expect: [
          AchievementManagementFormState.initial().copyWith(
            achievement: Achievement.empty().copyWith(
              description: EntityDescription(description),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the experience points",
        build: () async => getIt<AchievementManagementFormBloc>(),
        act: (bloc) async {
          bloc.add(AchievementManagementFormEvent.initialize(none()));
          bloc.add(const AchievementManagementFormEvent.experiencePointsChange(experiencePoints));
        },
        expect: [
          AchievementManagementFormState.initial().copyWith(
            achievement: Achievement.empty().copyWith(
              experiencePoints: ExperiencePoints(experiencePoints),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the tags",
        build: () async => getIt<AchievementManagementFormBloc>(),
        act: (bloc) async {
          bloc.add(AchievementManagementFormEvent.initialize(none()));
          bloc.add(AchievementManagementFormEvent.tagsChange(tags));
        },
        expect: [
          AchievementManagementFormState.initial().copyWith(
            achievement: Achievement.empty().copyWith(
              tags: TagSet(tags),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitSuccess} creating a new Achievement",
        build: () async {
          when(createAchievement.call(any)).thenAnswer((_) async => right(unit));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(validUser));
          return getIt<AchievementManagementFormBloc>();
        },
        act: (bloc) async {
          bloc.add(AchievementManagementFormEvent.initialize(none()));
          bloc.add(const AchievementManagementFormEvent.nameChange(name));
          bloc.add(const AchievementManagementFormEvent.descriptionChange(description));
          bloc.add(const AchievementManagementFormEvent.experiencePointsChange(experiencePoints));
          bloc.add(AchievementManagementFormEvent.tagsChange(tags));
          bloc.add(const AchievementManagementFormEvent.submit());
        },
        verify: (_) async {
          verify(createAchievement.call(any));
          verify(getLoggedInUser.call(any));
          // verifyZeroInteractions(editAchievement);
        },
        expect: [
          AchievementManagementFormState.initial().copyWith(
            achievement: Achievement.empty().copyWith(
              creator: validUser,
            ),
          ),
          AchievementManagementFormState.initial().copyWith(
            achievement: Achievement.empty().copyWith(
              creator: validUser,
              name: Name(name),
            ),
          ),
          AchievementManagementFormState.initial().copyWith(
            achievement: Achievement.empty().copyWith(
              creator: validUser,
              name: Name(name),
              description: EntityDescription(description),
            ),
          ),
          AchievementManagementFormState.initial().copyWith(
            achievement: Achievement.empty().copyWith(
              creator: validUser,
              name: Name(name),
              description: EntityDescription(description),
              experiencePoints: ExperiencePoints(experiencePoints),
            ),
          ),
          AchievementManagementFormState.initial().copyWith(
            achievement: Achievement.empty().copyWith(
              creator: validUser,
              name: Name(name),
              description: EntityDescription(description),
              experiencePoints: ExperiencePoints(experiencePoints),
              tags: TagSet(tags),
            ),
          ),
          AchievementManagementFormState.initial().copyWith(
            achievement: Achievement.empty().copyWith(
              creator: validUser,
              name: Name(name),
              description: EntityDescription(description),
              experiencePoints: ExperiencePoints(experiencePoints),
              tags: TagSet(tags),
            ),
            isSubmitting: true,
          ),
          AchievementManagementFormState.initial().copyWith(
            achievement: Achievement.empty().copyWith(
              creator: validUser,
              name: Name(name),
              description: EntityDescription(description),
              experiencePoints: ExperiencePoints(experiencePoints),
              tags: TagSet(tags),
            ),
            showErrorMessages: true,
            failureOrSuccessOption: some(right(unit)),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitSuccess} editing an Achievement",
        build: () async {
          when(editAchievement.call(any)).thenAnswer((_) async => right(unit));
          return getIt<AchievementManagementFormBloc>();
        },
        act: (bloc) async {
          bloc.add(AchievementManagementFormEvent.initialize(some(achievementToEdit)));
          bloc.add(const AchievementManagementFormEvent.nameChange(name));
          bloc.add(const AchievementManagementFormEvent.submit());
        },
        verify: (_) async {
          verify(editAchievement.call(any));
          // TODO: How to verify that this use case is not called?
          // Seems to me this verification fails due to the use case being a singleton, hence the creation test calls the use case from the same bloc as this test
          // Apply to the other bloc tests if a solution is found
          // verifyZeroInteractions(createAchievement);
        },
        expect: [
          AchievementManagementFormState.initial().copyWith(
            achievement: achievementToEdit.copyWith(
              name: Name(name),
            ),
            isEditing: true,
          ),
          AchievementManagementFormState.initial().copyWith(
            achievement: achievementToEdit.copyWith(
              name: Name(name),
            ),
            isEditing: true,
            isSubmitting: true,
          ),
          AchievementManagementFormState.initial().copyWith(
            achievement: achievementToEdit.copyWith(
              name: Name(name),
            ),
            isEditing: true,
            showErrorMessages: true,
            failureOrSuccessOption: some(right(unit)),
          ),
        ],
      );
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      // How to test that the form couldn't be submitted because there were errors in it? seems the state yielded is no different than if the submission was successful
      // At least not from the bloc point of view
      const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
      blocTest(
        "${TestDescription.shouldEmitFailure} creating a new Achievement",
        build: () async {
          when(createAchievement.call(any)).thenAnswer((_) async => left(failure));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(validUser));
          return getIt<AchievementManagementFormBloc>();
        },
        act: (bloc) async {
          bloc.add(AchievementManagementFormEvent.initialize(none()));
          bloc.add(const AchievementManagementFormEvent.nameChange(name));
          bloc.add(const AchievementManagementFormEvent.descriptionChange(description));
          bloc.add(const AchievementManagementFormEvent.experiencePointsChange(experiencePoints));
          bloc.add(AchievementManagementFormEvent.tagsChange(tags));
          bloc.add(const AchievementManagementFormEvent.submit());
        },
        verify: (_) async {
          verify(createAchievement.call(any));
          verify(getLoggedInUser.call(any));
          // verifyZeroInteractions(editAchievement);
        },
        expect: [
          AchievementManagementFormState.initial().copyWith(
            achievement: Achievement.empty().copyWith(
              creator: validUser,
            ),
          ),
          AchievementManagementFormState.initial().copyWith(
            achievement: Achievement.empty().copyWith(
              creator: validUser,
              name: Name(name),
            ),
          ),
          AchievementManagementFormState.initial().copyWith(
            achievement: Achievement.empty().copyWith(
              creator: validUser,
              name: Name(name),
              description: EntityDescription(description),
            ),
          ),
          AchievementManagementFormState.initial().copyWith(
            achievement: Achievement.empty().copyWith(
              creator: validUser,
              name: Name(name),
              description: EntityDescription(description),
              experiencePoints: ExperiencePoints(experiencePoints),
            ),
          ),
          AchievementManagementFormState.initial().copyWith(
            achievement: Achievement.empty().copyWith(
              creator: validUser,
              name: Name(name),
              description: EntityDescription(description),
              experiencePoints: ExperiencePoints(experiencePoints),
              tags: TagSet(tags),
            ),
          ),
          AchievementManagementFormState.initial().copyWith(
            achievement: Achievement.empty().copyWith(
              creator: validUser,
              name: Name(name),
              description: EntityDescription(description),
              experiencePoints: ExperiencePoints(experiencePoints),
              tags: TagSet(tags),
            ),
            isSubmitting: true,
          ),
          AchievementManagementFormState.initial().copyWith(
            achievement: Achievement.empty().copyWith(
              creator: validUser,
              name: Name(name),
              description: EntityDescription(description),
              experiencePoints: ExperiencePoints(experiencePoints),
              tags: TagSet(tags),
            ),
            isSubmitting: false,
            showErrorMessages: true,
            failureOrSuccessOption: some(left(failure)),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitFailure} editing an Achievement",
        build: () async {
          when(editAchievement.call(any)).thenAnswer((_) async => left(failure));
          return getIt<AchievementManagementFormBloc>();
        },
        act: (bloc) async {
          bloc.add(AchievementManagementFormEvent.initialize(some(achievementToEdit)));
          bloc.add(const AchievementManagementFormEvent.nameChange(name));
          bloc.add(const AchievementManagementFormEvent.submit());
        },
        verify: (_) async {
          verify(editAchievement.call(any));
          // verifyZeroInteractions(createAchievement);
        },
        expect: [
          AchievementManagementFormState.initial().copyWith(
            achievement: achievementToEdit.copyWith(
              name: Name(name),
            ),
            isEditing: true,
          ),
          AchievementManagementFormState.initial().copyWith(
            achievement: achievementToEdit.copyWith(
              name: Name(name),
            ),
            isEditing: true,
            isSubmitting: true,
          ),
          AchievementManagementFormState.initial().copyWith(
            achievement: achievementToEdit.copyWith(
              name: Name(name),
            ),
            isEditing: true,
            isSubmitting: false,
            showErrorMessages: true,
            failureOrSuccessOption: some(left(failure)),
          ),
        ],
      );
      blocTest(
        TestDescription.shouldResetOption,
        build: () async {
          when(editAchievement.call(any)).thenAnswer((_) async => left(failure));
          return getIt<AchievementManagementFormBloc>();
        },
        act: (bloc) async {
          bloc.add(AchievementManagementFormEvent.initialize(some(achievementToEdit)));
          bloc.add(const AchievementManagementFormEvent.nameChange(name));
          bloc.add(const AchievementManagementFormEvent.submit());
          bloc.add(const AchievementManagementFormEvent.nameChange(name));
        },
        verify: (_) async {
          verify(editAchievement.call(any));
          // verifyZeroInteractions(createAchievement);
        },
        expect: [
          AchievementManagementFormState.initial().copyWith(
            achievement: achievementToEdit.copyWith(
              name: Name(name),
            ),
            isEditing: true,
          ),
          AchievementManagementFormState.initial().copyWith(
            achievement: achievementToEdit.copyWith(
              name: Name(name),
            ),
            isEditing: true,
            isSubmitting: true,
          ),
          AchievementManagementFormState.initial().copyWith(
            achievement: achievementToEdit.copyWith(
              name: Name(name),
            ),
            isEditing: true,
            showErrorMessages: true,
            failureOrSuccessOption: some(left(failure)),
          ),
          AchievementManagementFormState.initial().copyWith(
            achievement: achievementToEdit.copyWith(
              name: Name(name),
            ),
            isEditing: true,
            showErrorMessages: true,
          ),
        ],
      );
    },
  );
}
