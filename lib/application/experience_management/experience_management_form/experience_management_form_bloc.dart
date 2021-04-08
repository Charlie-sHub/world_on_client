import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/use_case/get_current_location.dart';
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

  // TODO: Change this to a purely experience creation bloc
  @override
  Stream<ExperienceManagementFormState> mapEventToState(ExperienceManagementFormEvent event) async* {
    yield* event.map(
      initialized: _onInitialized,
      titleChanged: _onTitleChanged,
      descriptionChanged: _onDescriptionChanged,
      imagesChanged: _onImagesChanged,
      coordinatesChanged: _onCoordinatesChanged,
      difficultyChanged: _onDifficultyChanged,
      objectivesChanged: _onObjectivesChanged,
      rewardsChanged: _onRewardsChanged,
      tagsChanged: _onTagsChanged,
      submitted: _onSubmitted,
    );
  }

  Stream<ExperienceManagementFormState> _onSubmitted(_) async* {
    Either<Failure, Unit> _failureOrUnit;
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );
    if (state.experience.isValid) {
      if (state.isEditing) {
        _failureOrUnit = await getIt<edit_experience.EditExperience>()(
          edit_experience.Params(experience: state.experience),
        );
      } else if (state.experience.imageAssetsOption.isSome()) {
        _failureOrUnit = await getIt<create_experience.CreateExperience>()(
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

  Stream<ExperienceManagementFormState> _onTagsChanged(_TagsChanged event) async* {
    yield state.copyWith(
      experience: state.experience.copyWith(
        tags: TagSet(event.tags),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ExperienceManagementFormState> _onRewardsChanged(_RewardsChanged event) async* {
    yield state.copyWith(
      experience: state.experience.copyWith(
        rewards: RewardSet(event.rewards),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ExperienceManagementFormState> _onObjectivesChanged(_ObjectivesChanged event) async* {
    yield state.copyWith(
      experience: state.experience.copyWith(
        objectives: ObjectiveList(event.objectives),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ExperienceManagementFormState> _onDifficultyChanged(_DifficultyChanged event) async* {
    yield state.copyWith(
      experience: state.experience.copyWith(
        difficulty: Difficulty(event.difficulty),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ExperienceManagementFormState> _onCoordinatesChanged(_CoordinatesChanged event) async* {
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

  Stream<ExperienceManagementFormState> _onImagesChanged(_ImagesChanged event) async* {
    yield state.copyWith(
      experience: state.experience.copyWith(
        imageAssetsOption: some(event.imageAssets),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ExperienceManagementFormState> _onDescriptionChanged(_DescriptionChanged event) async* {
    yield state.copyWith(
      experience: state.experience.copyWith(
        description: EntityDescription(event.description),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ExperienceManagementFormState> _onTitleChanged(_TitleChanged event) async* {
    yield state.copyWith(
      experience: state.experience.copyWith(
        title: Name(event.title),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ExperienceManagementFormState> _onInitialized(_Initialized event) async* {
    yield await event.experienceOption.fold(
      () async {
        final _currentUserOption = await getIt<GetLoggedInUser>()(getIt<NoParams>());
        final _currentUser = _currentUserOption.fold(
          () => throw UnAuthenticatedError(),
          id,
        );
        final _currentLocationOrFailure = await getIt<GetCurrentLocation>()(NoParams());
        final _coordinates = _currentLocationOrFailure.fold(
          (_) => Coordinates.empty(),
          id,
        );
        return state.copyWith(
          experience: Experience.empty().copyWith(
            creator: _currentUser,
            coordinates: _coordinates,
          ),
          loadedCoordinates: true,
        );
      },
      (experience) => state.copyWith(
        experience: experience,
        isEditing: true,
        loadedCoordinates: true,
      ),
    );
  }
}
