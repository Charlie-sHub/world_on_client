import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/collection.dart';
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/core/assets.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_tag.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/experience_management/use_case/create_experience.dart';
import 'package:worldon/domain/experience_management/use_case/edit_experience.dart';
import 'package:worldon/injection.dart';

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
  const title = "Test";
  const description = "For testing";
  const latitude = 10.0;
  const longitude = 10.0;
  const difficulty = 9;
  final imageAssets = [
    Asset(
      "1",
      Assets.experiencePlaceholder,
      100,
      100,
    ),
  ];
  final objectives = KtSet.of(
    Objective(
      id: UniqueId(),
      description: EntityDescription(description),
      coordinates: Coordinates(
        latitude: Latitude(latitude),
        longitude: Longitude(longitude),
      ),
      imageFile: some(File("assets/objective_placeholder.jpg")),
      imageURL: "",
    ),
  );
  final rewardSet = KtSet.of(
    Reward.empty().copyWith(
      name: Name(title),
      description: EntityDescription(description),
      imageFile: some(File(Assets.rewardPlaceholder)),
    ),
  );
  final tags = KtSet.of(getValidTag());
  final validUser = getValidUser();
  final experienceToEdit = getValidExperience();
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<ExperienceManagementFormBloc>(),
    expect: [],
  );
  group(
    TestDescription.testingInitialization,
    () {
      blocTest(
        TestDescription.shouldEmitInitialized,
        build: () => getIt<ExperienceManagementFormBloc>(),
        act: (bloc) async => bloc.add(ExperienceManagementFormEvent.initialized(some(experienceToEdit))),
        expect: [
          ExperienceManagementFormState.initial().copyWith(
            experience: experienceToEdit,
            isEditing: true,
          ),
        ],
      );
      blocTest(
        TestDescription.shouldNotEmitInitialized,
        build: () => getIt<ExperienceManagementFormBloc>(),
        act: (bloc) async => bloc.add(ExperienceManagementFormEvent.initialized(none())),
        expect: [],
      );
    },
  );
  group(
    "${TestDescription.groupOnSuccess} with updating values",
    () {
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the title",
        build: () => getIt<ExperienceManagementFormBloc>(),
        act: (bloc) async {
          bloc.add(ExperienceManagementFormEvent.initialized(none()));
          bloc.add(const ExperienceManagementFormEvent.titleChanged(title));
        },
        expect: [
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              title: Name(title),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the description",
        build: () => getIt<ExperienceManagementFormBloc>(),
        act: (bloc) async {
          bloc.add(ExperienceManagementFormEvent.initialized(none()));
          bloc.add(const ExperienceManagementFormEvent.descriptionChanged(description));
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
        "${TestDescription.shouldEmitUpdated} with the description",
        build: () => getIt<ExperienceManagementFormBloc>(),
        act: (bloc) async {
          bloc.add(ExperienceManagementFormEvent.initialized(none()));
          bloc.add(ExperienceManagementFormEvent.imagesChanged(imageAssets));
        },
        expect: [
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              imageAssetsOption: some(imageAssets),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the coordinates",
        build: () => getIt<ExperienceManagementFormBloc>(),
        act: (bloc) async {
          bloc.add(ExperienceManagementFormEvent.initialized(none()));
          bloc.add(const ExperienceManagementFormEvent.coordinatesChanged(longitude: longitude, latitude: latitude));
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
        build: () => getIt<ExperienceManagementFormBloc>(),
        act: (bloc) async {
          bloc.add(ExperienceManagementFormEvent.initialized(none()));
          bloc.add(const ExperienceManagementFormEvent.difficultyChanged(difficulty));
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
        "${TestDescription.shouldEmitUpdated} with the objectives",
        build: () => getIt<ExperienceManagementFormBloc>(),
        act: (bloc) async {
          bloc.add(ExperienceManagementFormEvent.initialized(none()));
          bloc.add(ExperienceManagementFormEvent.objectivesChanged(objectives));
        },
        expect: [
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              objectives: ObjectiveSet(objectives),
            ),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitUpdated} with the rewardSet",
        build: () => getIt<ExperienceManagementFormBloc>(),
        act: (bloc) async {
          bloc.add(ExperienceManagementFormEvent.initialized(none()));
          bloc.add(ExperienceManagementFormEvent.rewardsChanged(rewardSet));
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
        build: () => getIt<ExperienceManagementFormBloc>(),
        act: (bloc) async {
          bloc.add(ExperienceManagementFormEvent.initialized(none()));
          bloc.add(ExperienceManagementFormEvent.tagsChanged(tags));
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
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(getValidUser()));
          when(createExperience.call(any)).thenAnswer((_) async => right(unit));
          return getIt<ExperienceManagementFormBloc>();
        },
        act: (bloc) async {
          bloc.add(ExperienceManagementFormEvent.initialized(none()));
          bloc.add(const ExperienceManagementFormEvent.titleChanged(title));
          bloc.add(const ExperienceManagementFormEvent.descriptionChanged(description));
          bloc.add(ExperienceManagementFormEvent.imagesChanged(imageAssets));
          bloc.add(const ExperienceManagementFormEvent.coordinatesChanged(longitude: longitude, latitude: latitude));
          bloc.add(const ExperienceManagementFormEvent.difficultyChanged(difficulty));
          bloc.add(ExperienceManagementFormEvent.objectivesChanged(objectives));
          bloc.add(ExperienceManagementFormEvent.rewardsChanged(rewardSet));
          bloc.add(ExperienceManagementFormEvent.tagsChanged(tags));
          bloc.add(const ExperienceManagementFormEvent.submitted());
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
              title: Name(title),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              title: Name(title),
              description: EntityDescription(description),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              title: Name(title),
              description: EntityDescription(description),
              imageAssetsOption: some(imageAssets),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              title: Name(title),
              description: EntityDescription(description),
              imageAssetsOption: some(imageAssets),
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              title: Name(title),
              description: EntityDescription(description),
              imageAssetsOption: some(imageAssets),
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
              title: Name(title),
              description: EntityDescription(description),
              imageAssetsOption: some(imageAssets),
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
              difficulty: Difficulty(difficulty),
              objectives: ObjectiveSet(objectives),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              title: Name(title),
              description: EntityDescription(description),
              imageAssetsOption: some(imageAssets),
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
              difficulty: Difficulty(difficulty),
              objectives: ObjectiveSet(objectives),
              rewards: RewardSet(rewardSet),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              title: Name(title),
              description: EntityDescription(description),
              imageAssetsOption: some(imageAssets),
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
              difficulty: Difficulty(difficulty),
              objectives: ObjectiveSet(objectives),
              rewards: RewardSet(rewardSet),
              tags: TagSet(tags),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              title: Name(title),
              description: EntityDescription(description),
              imageAssetsOption: some(imageAssets),
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
              difficulty: Difficulty(difficulty),
              objectives: ObjectiveSet(objectives),
              rewards: RewardSet(rewardSet),
              tags: TagSet(tags),
            ),
            isSubmitting: true,
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              title: Name(title),
              description: EntityDescription(description),
              imageAssetsOption: some(imageAssets),
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
              difficulty: Difficulty(difficulty),
              objectives: ObjectiveSet(objectives),
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
        build: () {
          when(editExperience.call(any)).thenAnswer((_) async => right(unit));
          return getIt<ExperienceManagementFormBloc>();
        },
        act: (bloc) async {
          bloc.add(ExperienceManagementFormEvent.initialized(some(experienceToEdit)));
          bloc.add(const ExperienceManagementFormEvent.titleChanged(title));
          bloc.add(const ExperienceManagementFormEvent.submitted());
        },
        verify: (_) async {
          verify(editExperience.call(any));
        },
        expect: [
          ExperienceManagementFormState.initial().copyWith(
            experience: experienceToEdit,
            isEditing: true,
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: experienceToEdit.copyWith(
              title: Name(title),
            ),
            isEditing: true,
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: experienceToEdit.copyWith(
              title: Name(title),
            ),
            isEditing: true,
            isSubmitting: true,
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: experienceToEdit.copyWith(
              title: Name(title),
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
        "${TestDescription.shouldEmitFailure} creating a new Experience",
        build: () {
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(getValidUser()));
          when(createExperience.call(any)).thenAnswer((_) async => left(failure));
          return getIt<ExperienceManagementFormBloc>();
        },
        act: (bloc) async {
          bloc.add(ExperienceManagementFormEvent.initialized(none()));
          bloc.add(const ExperienceManagementFormEvent.titleChanged(title));
          bloc.add(const ExperienceManagementFormEvent.descriptionChanged(description));
          bloc.add(ExperienceManagementFormEvent.imagesChanged(imageAssets));
          bloc.add(const ExperienceManagementFormEvent.coordinatesChanged(longitude: longitude, latitude: latitude));
          bloc.add(const ExperienceManagementFormEvent.difficultyChanged(difficulty));
          bloc.add(ExperienceManagementFormEvent.objectivesChanged(objectives));
          bloc.add(ExperienceManagementFormEvent.rewardsChanged(rewardSet));
          bloc.add(ExperienceManagementFormEvent.tagsChanged(tags));
          bloc.add(const ExperienceManagementFormEvent.submitted());
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
              title: Name(title),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              title: Name(title),
              description: EntityDescription(description),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              title: Name(title),
              description: EntityDescription(description),
              imageAssetsOption: some(imageAssets),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              title: Name(title),
              description: EntityDescription(description),
              imageAssetsOption: some(imageAssets),
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              title: Name(title),
              description: EntityDescription(description),
              imageAssetsOption: some(imageAssets),
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
              title: Name(title),
              description: EntityDescription(description),
              imageAssetsOption: some(imageAssets),
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
              difficulty: Difficulty(difficulty),
              objectives: ObjectiveSet(objectives),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              title: Name(title),
              description: EntityDescription(description),
              imageAssetsOption: some(imageAssets),
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
              difficulty: Difficulty(difficulty),
              objectives: ObjectiveSet(objectives),
              rewards: RewardSet(rewardSet),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              title: Name(title),
              description: EntityDescription(description),
              imageAssetsOption: some(imageAssets),
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
              difficulty: Difficulty(difficulty),
              objectives: ObjectiveSet(objectives),
              rewards: RewardSet(rewardSet),
              tags: TagSet(tags),
            ),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              title: Name(title),
              description: EntityDescription(description),
              imageAssetsOption: some(imageAssets),
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
              difficulty: Difficulty(difficulty),
              objectives: ObjectiveSet(objectives),
              rewards: RewardSet(rewardSet),
              tags: TagSet(tags),
            ),
            isSubmitting: true,
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: Experience.empty().copyWith(
              creator: validUser,
              title: Name(title),
              description: EntityDescription(description),
              imageAssetsOption: some(imageAssets),
              coordinates: Coordinates(
                latitude: Latitude(latitude),
                longitude: Longitude(longitude),
              ),
              difficulty: Difficulty(difficulty),
              objectives: ObjectiveSet(objectives),
              rewards: RewardSet(rewardSet),
              tags: TagSet(tags),
            ),
            showErrorMessages: true,
            failureOrSuccessOption: some(left(failure)),
          ),
        ],
      );
      blocTest(
        "${TestDescription.shouldEmitFailure} editing an Experience",
        build: () {
          when(editExperience.call(any)).thenAnswer((_) async => left(failure));
          return getIt<ExperienceManagementFormBloc>();
        },
        act: (bloc) async {
          bloc.add(ExperienceManagementFormEvent.initialized(some(experienceToEdit)));
          bloc.add(const ExperienceManagementFormEvent.titleChanged(title));
          bloc.add(const ExperienceManagementFormEvent.submitted());
        },
        verify: (_) async {
          verify(editExperience.call(any));
        },
        expect: [
          ExperienceManagementFormState.initial().copyWith(
            experience: experienceToEdit,
            isEditing: true,
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: experienceToEdit.copyWith(
              title: Name(title),
            ),
            isEditing: true,
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: experienceToEdit.copyWith(
              title: Name(title),
            ),
            isEditing: true,
            isSubmitting: true,
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: experienceToEdit.copyWith(
              title: Name(title),
            ),
            isEditing: true,
            showErrorMessages: true,
            failureOrSuccessOption: some(left(failure)),
          ),
        ],
      );
      blocTest(
        TestDescription.shouldResetOption,
        build: () {
          when(editExperience.call(any)).thenAnswer((_) async => left(failure));
          return getIt<ExperienceManagementFormBloc>();
        },
        act: (bloc) async {
          bloc.add(ExperienceManagementFormEvent.initialized(some(experienceToEdit)));
          bloc.add(const ExperienceManagementFormEvent.titleChanged(title));
          bloc.add(const ExperienceManagementFormEvent.submitted());
          bloc.add(const ExperienceManagementFormEvent.titleChanged(title));
        },
        verify: (_) async {
          verify(editExperience.call(any));
        },
        expect: [
          ExperienceManagementFormState.initial().copyWith(
            experience: experienceToEdit,
            isEditing: true,
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: experienceToEdit.copyWith(
              title: Name(title),
            ),
            isEditing: true,
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: experienceToEdit.copyWith(
              title: Name(title),
            ),
            isEditing: true,
            isSubmitting: true,
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: experienceToEdit.copyWith(
              title: Name(title),
            ),
            isEditing: true,
            showErrorMessages: true,
            failureOrSuccessOption: some(left(failure)),
          ),
          ExperienceManagementFormState.initial().copyWith(
            experience: experienceToEdit.copyWith(
              title: Name(title),
            ),
            isEditing: true,
            showErrorMessages: true,
          ),
        ],
      );
    },
  );
}
