import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:worldon/application/achievement_management/achievement_management_form/achievement_management_form_bloc.dart';
import 'package:worldon/domain/achievement_management/use_case/create_achievement.dart';
import 'package:worldon/domain/achievement_management/use_case/edit_achievement.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/get_valid_tag.dart';
import '../../../domain/core/methods/get_valid_tag_set.dart';
import '../../../domain/core/methods/get_valid_user.dart';
import '../../../test_descriptions.dart';

void main() {
  // Not going to bother mocking the value object or validators
  // for now at least
  AchievementManagementFormBloc bloc;
  EditAchievement editAchievement;
  CreateAchievement createAchievement;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      bloc = getIt<AchievementManagementFormBloc>();
      editAchievement = getIt<EditAchievement>();
      createAchievement = getIt<CreateAchievement>();
    },
  );
  final achievementToEdit = Achievement.empty().copyWith(
    name: Name("Test"),
    description: EntityDescription("Test"),
    experiencePoints: ExperiencePoints(1),
    creator: getValidUser(),
    tags: getValidTagSet(),
  );
  const invalidName = "";
  const invalidDescription = "";
  const invalidExperiencePoints = 1000000000;
  final invalidTags = <Tag>{};
  const validName = "Test";
  const validDescription = "For testing";
  const validExperiencePoints = 10;
  final validTags = {getValidTag()};
  test(
    TestDescription.shouldEmitInitial,
    () async {
      // Assert
      expect(bloc.initialState, AchievementManagementFormState.initial());
    },
  );
  group(
    TestDescription.testingInitialization,
    () {
      test(
        TestDescription.initializedState,
        () async {
          // Arrange
          final initializedEvent = AchievementManagementFormEvent.initialized(some(achievementToEdit));
          // Assert
          expectLater(bloc.state.achievement, achievementToEdit);
          expectLater(bloc.state.isEditing, true);
          // Act
          bloc.add(initializedEvent);
        },
      );
      test(
        TestDescription.nonInitializedState,
        () async {
          // Arrange
          final initializedEvent = AchievementManagementFormEvent.initialized(none());
          // Assert
          expectLater(bloc.state.achievement, Achievement.empty());
          expectLater(bloc.state.isEditing, false);
          // Act
          bloc.add(initializedEvent);
        },
      );
      blocTest(TestDescription.initializedState,
          build: () async => bloc, act: (bloc) async => bloc.add(AchievementManagementFormEvent.initialized(some(achievementToEdit))), expect: [bloc.state.achievement]);
    },
  );
  group(
    TestDescription.groupOnSuccess,
    () {
      test(
        "${TestDescription.shouldEmitSuccess} with validName",
        () async {
          // Arrange
          const nameChangeEvent = AchievementManagementFormEvent.nameChange(validName);
          // Assert
          expectLater(bloc.state.achievement.name.getOrCrash(), validName);
          expectLater(bloc.state.showErrorMessages, false);
          // Act
          bloc.add(nameChangeEvent);
        },
      );
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {},
  );
}
