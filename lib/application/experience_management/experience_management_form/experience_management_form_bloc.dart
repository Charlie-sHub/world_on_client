import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/application/experience_management/primitives/primitive_objective.dart';
import 'package:worldon/application/experience_management/primitives/primitive_reward.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/experience_management/use_case/create_experience.dart' as create_experience;
import 'package:worldon/domain/experience_management/use_case/edit_experience.dart' as edit_experience;

import '../../../injection.dart';

part 'experience_management_form_bloc.freezed.dart';
part 'experience_management_form_event.dart';
part 'experience_management_form_state.dart';

@injectable
class ExperienceManagementFormBloc extends Bloc<ExperienceManagementFormEvent, ExperienceManagementFormState> {
  ExperienceManagementFormBloc() : super(ExperienceManagementFormState.initial());

  @override
  Stream<ExperienceManagementFormState> mapEventToState(ExperienceManagementFormEvent event) async* {
    yield* event.map(
      initialized: onInitialized,
      nameChanged: onNameChanged,
      descriptionChanged: onDescriptionChanged,
      coordinatesChanged: onCoordinatesChanged,
      difficultyChanged: onDifficultyChanged,
      objectivesChanged: onObjectivesChanged,
      rewardsChanged: onRewardsChanged,
      tagsChanged: onTagsChanged,
      submitted: onSubmitted,
    );
  }

  Stream<ExperienceManagementFormState> onSubmitted(_Submitted event) async* {
    Either<Failure, Unit> _failureOrUnit;
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );
    if (state.experience.isValid) {
      if (state.isEditing) {
        final _editExperience = getIt<edit_experience.EditExperience>();
        _failureOrUnit = await _editExperience(
          edit_experience.Params(experience: state.experience),
        );
      } else {
        final _createExperience = getIt<create_experience.CreateExperience>();
        _failureOrUnit = await _createExperience(
          create_experience.Params(experience: state.experience),
        );
      }
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      failureOrSuccessOption: optionOf(_failureOrUnit),
    );
  }

  Stream<ExperienceManagementFormState> onTagsChanged(_TagsChanged event) async* {
    yield state.copyWith(
      experience: state.experience.copyWith(
        tags: TagSet(event.tags),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ExperienceManagementFormState> onRewardsChanged(_RewardsChanged event) async* {
    yield state.copyWith(
      experience: state.experience.copyWith(
        rewards: RewardSet(event.rewards.map((primitiveRewards) => primitiveRewards.toDomain()).toSet()),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ExperienceManagementFormState> onObjectivesChanged(_ObjectivesChanged event) async* {
    yield state.copyWith(
      experience: state.experience.copyWith(
        objectives: ObjectiveSet(event.objectives.map((primitiveObjective) => primitiveObjective.toDomain()).toSet()),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ExperienceManagementFormState> onDifficultyChanged(_DifficultyChanged event) async* {
    yield state.copyWith(
      experience: state.experience.copyWith(
        difficulty: Difficulty(event.difficulty),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ExperienceManagementFormState> onCoordinatesChanged(_CoordinatesChanged event) async* {
    yield state.copyWith(
      experience: state.experience.copyWith(
        coordinates: Coordinates(
          latitude: Latitude(event.latitude),
          longitude: Longitude(event.longitude),
        ),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ExperienceManagementFormState> onDescriptionChanged(_DescriptionChanged event) async* {
    yield state.copyWith(
      experience: state.experience.copyWith(
        description: EntityDescription(event.description),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ExperienceManagementFormState> onNameChanged(_NameChanged event) async* {
    yield state.copyWith(
      experience: state.experience.copyWith(
        name: Name(event.name),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ExperienceManagementFormState> onInitialized(_Initialized event) async* {
    yield await event.experienceOption.fold(
      () async {
        final _getLoggedInUser = getIt<GetLoggedInUser>();
        final _currentUserOption = await _getLoggedInUser(getIt<NoParams>());
        final _currentUser = _currentUserOption.fold(
          () => User.empty(),
          id,
        );
        return state.copyWith(
          experience: Experience.empty().copyWith(
            creator: _currentUser,
          ),
        );
      },
      (experience) => state.copyWith(
        experience: experience,
        isEditing: true,
      ),
    );
  }
}
