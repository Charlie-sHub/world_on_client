import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/collection.dart';
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/application/experience_management/primitives/primitive_objective.dart';
import 'package:worldon/application/experience_management/primitives/primitive_reward.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/experience_management/use_case/create_experience.dart';
import 'package:worldon/domain/experience_management/use_case/edit_experience.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/get_valid_experience.dart';
import '../../../domain/core/methods/get_valid_tag.dart';
import '../../../domain/core/methods/get_valid_user.dart';
import '../../../test_descriptions.dart';

void main() {
  CreateExperience createExperience;
  EditExperience editExperience;
  GetLoggedInUser getLoggedInUser;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      createExperience = getIt<CreateExperience>();
      editExperience = getIt<EditExperience>();
      getLoggedInUser = getIt<GetLoggedInUser>();
    },
  );
  const name = "Test";
  const description = "For testing";
  const latitude = 10.0;
  const longitude = 10.0;
  const difficulty = 9;
  final primitiveObjectives = KtSet.of(
    const PrimitiveObjective(
      description: description,
      latitude: latitude,
      longitude: longitude,
    ),
  );
  final objectiveSet = primitiveObjectives.map((primitiveObjective) => primitiveObjective.toDomain()).toSet();
  final primitiveRewards = KtSet.of(
    const PrimitiveReward(
      name: name,
      description: description,
    ),
  );
  final rewardSet = primitiveRewards.map((primitiveReward) => primitiveReward.toDomain()).toSet();
  final tags = KtSet.of(getValidTag());
  final validUser = getValidUser();
  final experienceToEdit = getValidExperience();
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<ExperienceManagementFormBloc>(),
    skip: 0,
    expect: [ExperienceManagementFormState.initial()],
  );
  group(
    TestDescription.testingInitialization,
    () {
      blocTest(
        TestDescription.shouldEmitInitialized,
        build: () async => getIt<ExperienceManagementFormBloc>(),
        act: (bloc) async => bloc.add(ExperienceManagementFormEvent.initialize(some(experienceToEdit))),
        expect: [
          ExperienceManagementFormState.initial().copyWith(
            experience: experienceToEdit,
            isEditing: true,
          ),
        ],
      );
      blocTest(
        TestDescription.shouldNotEmitInitialized,
        build: () async => getIt<ExperienceManagementFormBloc>(),
        act: (bloc) async => bloc.add(ExperienceManagementFormEvent.initialize(none())),
        skip: 0,
        expect: [ExperienceManagementFormState.initial()],
      );
    },
  );
  group(
    "${TestDescription.groupOnSuccess} with updating values",
    () {
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the name",
        build: () async => getIt<ExperienceManagementFormBloc>(),
        act: (bloc) async {
          bloc.add(ExperienceManagementFormEvent.initialize(none()));
          bloc.add(const ExperienceManagementFormEvent.nameChange(name));
        },
        expect: [
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              name: Name(name),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the description",
        build: () async => getIt<ExperienceManagementFormBloc>(),
        act: (bloc) async {
          bloc.add(ExperienceManagementFormEvent.initialize(none()));
          bloc.add(const ExperienceManagementFormEvent.descriptionChange(description));
        },
        expect: [
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              description: EntityDescription(description),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the coordinates",
        build: () async => getIt<ExperienceManagementFormBloc>(),
        act: (bloc) async {
          bloc.add(ExperienceManagementFormEvent.initialize(none()));
          bloc.add(const ExperienceManagementFormEvent.coordinatesChange(longitude: longitude, latitude: latitude));
        },
        expect: [
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the difficulty",
        build: () async => getIt<ExperienceManagementFormBloc>(),
        act: (bloc) async {
          bloc.add(ExperienceManagementFormEvent.initialize(none()));
          bloc.add(const ExperienceManagementFormEvent.difficultyChange(difficulty));
        },
        expect: [
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              difficulty: Difficulty(difficulty),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the primitiveObjectives",
        build: () async => getIt<ExperienceManagementFormBloc>(),
        act: (bloc) async {
          bloc.add(ExperienceManagementFormEvent.initialize(none()));
          bloc.add(ExperienceManagementFormEvent.objectivesChange(primitiveObjectives));
        },
        expect: [
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              objectives: ObjectiveSet(objectiveSet),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the primitiveRewards",
        build: () async => getIt<ExperienceManagementFormBloc>(),
        act: (bloc) async {
          bloc.add(ExperienceManagementFormEvent.initialize(none()));
          bloc.add(ExperienceManagementFormEvent.rewardsChange(primitiveRewards));
        },
        expect: [
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              rewards: RewardSet(rewardSet),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the tags",
        build: () async => getIt<ExperienceManagementFormBloc>(),
        act: (bloc) async {
          bloc.add(ExperienceManagementFormEvent.initialize(none()));
          bloc.add(ExperienceManagementFormEvent.tagsChange(tags));
        },
        expect: [
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              tags: TagSet(tags),
            ),
          ),
        ],
      );
    },
  );
  group(
    "${TestDescription.groupOnSuccess} with submitting",
    () {
      blocTest(
        "${TestDescription.shouldEmitSuccess} creating a new Experience",
        build: () async {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(getValidUser()));
          when(createExperience.call(any)).thenAnswer((_) async => right(unit));
          return getIt<ExperienceManagementFormBloc>();
        },
        act: (bloc) async {
          bloc.add(ExperienceManagementFormEvent.initialize(none()));
          bloc.add(const ExperienceManagementFormEvent.nameChange(name));
          bloc.add(const ExperienceManagementFormEvent.descriptionChange(description));
          bloc.add(const ExperienceManagementFormEvent.coordinatesChange(longitude: longitude, latitude: latitude));
          bloc.add(const ExperienceManagementFormEvent.difficultyChange(difficulty));
          bloc.add(ExperienceManagementFormEvent.objectivesChange(primitiveObjectives));
          bloc.add(ExperienceManagementFormEvent.rewardsChange(primitiveRewards));
          bloc.add(ExperienceManagementFormEvent.tagsChange(tags));
          bloc.add(const ExperienceManagementFormEvent.submit());
        },
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verify(createExperience.call(any));
        },
        expect: [
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              name: Name(name),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              name: Name(name),
              description: EntityDescription(description),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              name: Name(name),
              description: EntityDescription(description),
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              name: Name(name),
              description: EntityDescription(description),
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
              difficulty: Difficulty(difficulty),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              name: Name(name),
              description: EntityDescription(description),
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
              difficulty: Difficulty(difficulty),
              objectives: ObjectiveSet(objectiveSet),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              name: Name(name),
              description: EntityDescription(description),
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
              difficulty: Difficulty(difficulty),
              objectives: ObjectiveSet(objectiveSet),
              rewards: RewardSet(rewardSet),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              name: Name(name),
              description: EntityDescription(description),
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
              difficulty: Difficulty(difficulty),
              objectives: ObjectiveSet(objectiveSet),
              rewards: RewardSet(rewardSet),
              tags: TagSet(tags),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              name: Name(name),
              description: EntityDescription(description),
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
              difficulty: Difficulty(difficulty),
              objectives: ObjectiveSet(objectiveSet),
              rewards: RewardSet(rewardSet),
              tags: TagSet(tags),
            ),
            isSubmitting: true,
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              name: Name(name),
              description: EntityDescription(description),
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
              difficulty: Difficulty(difficulty),
              objectives: ObjectiveSet(objectiveSet),
              rewards: RewardSet(rewardSet),
              tags: TagSet(tags),
            ),
            showErrorMessages: true,
            failureOrSuccessOption: some(right(unit)),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitSuccess} editing an Experience",
        build: () async {
          when(editExperience.call(any)).thenAnswer((_) async => right(unit));
          return getIt<ExperienceManagementFormBloc>();
        },
        act: (bloc) async {
          bloc.add(ExperienceManagementFormEvent.initialize(some(experienceToEdit)));
          bloc.add(const ExperienceManagementFormEvent.nameChange(name));
          bloc.add(const ExperienceManagementFormEvent.submit());
        },
        verify: (_) async {
          verify(editExperience.call(any));
        },
        expect: [
          ExperienceManagementFormState.initial().copyWith(
            experience: experienceToEdit.copyWith(
              name: Name(name),
            ),
            isEditing: true,
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: experienceToEdit.copyWith(
              name: Name(name),
            ),
            isEditing: true,
            isSubmitting: true,
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: experienceToEdit.copyWith(
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
    "${TestDescription.groupOnFailure} with submitting",
    () {
      blocTest(
        "${TestDescription.shouldEmitSuccess} creating a new Experience",
        build: () async {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(getValidUser()));
          when(createExperience.call(any)).thenAnswer((_) async => left(failure));
          return getIt<ExperienceManagementFormBloc>();
        },
        act: (bloc) async {
          bloc.add(ExperienceManagementFormEvent.initialize(none()));
          bloc.add(const ExperienceManagementFormEvent.nameChange(name));
          bloc.add(const ExperienceManagementFormEvent.descriptionChange(description));
          bloc.add(const ExperienceManagementFormEvent.coordinatesChange(longitude: longitude, latitude: latitude));
          bloc.add(const ExperienceManagementFormEvent.difficultyChange(difficulty));
          bloc.add(ExperienceManagementFormEvent.objectivesChange(primitiveObjectives));
          bloc.add(ExperienceManagementFormEvent.rewardsChange(primitiveRewards));
          bloc.add(ExperienceManagementFormEvent.tagsChange(tags));
          bloc.add(const ExperienceManagementFormEvent.submit());
        },
        verify: (_) async {
          verify(getLoggedInUser.call(any));
          verify(createExperience.call(any));
        },
        expect: [
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              name: Name(name),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              name: Name(name),
              description: EntityDescription(description),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              name: Name(name),
              description: EntityDescription(description),
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              name: Name(name),
              description: EntityDescription(description),
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
              difficulty: Difficulty(difficulty),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              name: Name(name),
              description: EntityDescription(description),
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
              difficulty: Difficulty(difficulty),
              objectives: ObjectiveSet(objectiveSet),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              name: Name(name),
              description: EntityDescription(description),
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
              difficulty: Difficulty(difficulty),
              objectives: ObjectiveSet(objectiveSet),
              rewards: RewardSet(rewardSet),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              name: Name(name),
              description: EntityDescription(description),
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
              difficulty: Difficulty(difficulty),
              objectives: ObjectiveSet(objectiveSet),
              rewards: RewardSet(rewardSet),
              tags: TagSet(tags),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              name: Name(name),
              description: EntityDescription(description),
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
              difficulty: Difficulty(difficulty),
              objectives: ObjectiveSet(objectiveSet),
              rewards: RewardSet(rewardSet),
              tags: TagSet(tags),
            ),
            isSubmitting: true,
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              name: Name(name),
              description: EntityDescription(description),
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
              difficulty: Difficulty(difficulty),
              objectives: ObjectiveSet(objectiveSet),
              rewards: RewardSet(rewardSet),
              tags: TagSet(tags),
            ),
            showErrorMessages: true,
            failureOrSuccessOption: some(left(failure)),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitSuccess} editing an Experience",
        build: () async {
          when(editExperience.call(any)).thenAnswer((_) async => left(failure));
          return getIt<ExperienceManagementFormBloc>();
        },
        act: (bloc) async {
          bloc.add(ExperienceManagementFormEvent.initialize(some(experienceToEdit)));
          bloc.add(const ExperienceManagementFormEvent.nameChange(name));
          bloc.add(const ExperienceManagementFormEvent.submit());
        },
        verify: (_) async {
          verify(editExperience.call(any));
        },
        expect: [
          ExperienceManagementFormState.initial().copyWith(
            experience: experienceToEdit.copyWith(
              name: Name(name),
            ),
            isEditing: true,
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: experienceToEdit.copyWith(
              name: Name(name),
            ),
            isEditing: true,
            isSubmitting: true,
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: experienceToEdit.copyWith(
              name: Name(name),
            ),
            isEditing: true,
            showErrorMessages: true,
            failureOrSuccessOption: some(left(failure)),
          ),
        ],
      );
      blocTest(
        TestDescription.shouldResetOption,
        build: () async {
          when(editExperience.call(any)).thenAnswer((_) async => left(failure));
          return getIt<ExperienceManagementFormBloc>();
        },
        act: (bloc) async {
          bloc.add(ExperienceManagementFormEvent.initialize(some(experienceToEdit)));
          bloc.add(const ExperienceManagementFormEvent.nameChange(name));
          bloc.add(const ExperienceManagementFormEvent.submit());
          bloc.add(const ExperienceManagementFormEvent.nameChange(name));
        },
        verify: (_) async {
          verify(editExperience.call(any));
        },
        expect: [
          ExperienceManagementFormState.initial().copyWith(
            experience: experienceToEdit.copyWith(
              name: Name(name),
            ),
            isEditing: true,
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: experienceToEdit.copyWith(
              name: Name(name),
            ),
            isEditing: true,
            isSubmitting: true,
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: experienceToEdit.copyWith(
              name: Name(name),
            ),
            isEditing: true,
            showErrorMessages: true,
            failureOrSuccessOption: some(left(failure)),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: experienceToEdit.copyWith(
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
