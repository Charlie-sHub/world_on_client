import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:worldon/application/experience_management/failures/experience_management_application_failure.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/experience_management/use_case/edit_experience.dart' as edit_experience;

import '../../../injection.dart';

part 'experience_editing_form_bloc.freezed.dart';
part 'experience_editing_form_event.dart';
part 'experience_editing_form_state.dart';

@injectable
class ExperienceEditingFormBloc extends Bloc<ExperienceEditingFormEvent, ExperienceEditingFormState> {
  ExperienceEditingFormBloc() : super(ExperienceEditingFormState.initial());

  static const _imageNumberLimit = 15;

  @override
  Stream<ExperienceEditingFormState> mapEventToState(ExperienceEditingFormEvent event) async* {
    yield* event.map(
      initialized: _onInitialized,
      titleChanged: _onTitleChanged,
      descriptionChanged: _onDescriptionChanged,
      imageDeleted: _onImageDeleted,
      imagesChanged: _onImagesChanged,
      coordinatesChanged: _onCoordinatesChanged,
      difficultyChanged: _onDifficultyChanged,
      objectivesChanged: _onObjectivesChanged,
      rewardsChanged: _onRewardsChanged,
      tagsChanged: _onTagsChanged,
      submitted: _onSubmitted,
    );
  }

  Stream<ExperienceEditingFormState> _onSubmitted(_) async* {
    late Either<Failure, Unit> _failureOrUnit;
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );
    if (state.experience.isValid) {
      if (state.experience.imageURLs.isNotEmpty || state.experience.imageAssetsOption.isSome()) {
        final _filesCount = state.experience.imageAssetsOption.fold(
          () => 0,
          (_imageList) => _imageList.length,
        );
        if (state.experience.imageURLs.length + _filesCount <= _imageNumberLimit) {
          _failureOrUnit = await getIt<edit_experience.EditExperience>()(
            edit_experience.Params(experience: state.experience),
          );
        } else {
          yield state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            failureOrSuccessOption: optionOf(
              left(
                const Failure.experienceManagementApplication(
                  ExperienceManagementApplicationFailure.surpassedImageLimit(limit: _imageNumberLimit),
                ),
              ),
            ),
          );
        }
      }
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      failureOrSuccessOption: optionOf(_failureOrUnit),
    );
  }

  Stream<ExperienceEditingFormState> _onTagsChanged(_TagsChanged event) async* {
    yield state.copyWith(
      experience: state.experience.copyWith(
        tags: TagSet(event.tags),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ExperienceEditingFormState> _onRewardsChanged(_RewardsChanged event) async* {
    yield state.copyWith(
      experience: state.experience.copyWith(
        rewards: RewardSet(event.rewards),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ExperienceEditingFormState> _onObjectivesChanged(_ObjectivesChanged event) async* {
    yield state.copyWith(
      experience: state.experience.copyWith(
        objectives: ObjectiveList(event.objectives),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ExperienceEditingFormState> _onDifficultyChanged(_DifficultyChanged event) async* {
    yield state.copyWith(
      experience: state.experience.copyWith(
        difficulty: Difficulty(event.difficulty),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ExperienceEditingFormState> _onCoordinatesChanged(_CoordinatesChanged event) async* {
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

  Stream<ExperienceEditingFormState> _onImageDeleted(_ImageDeleted event) async* {
    state.experience.imageURLs.remove(event.imageURL);
    yield state.copyWith(
      failureOrSuccessOption: none(),
    );
  }

  Stream<ExperienceEditingFormState> _onImagesChanged(_ImagesChanged event) async* {
    yield state.copyWith(
      experience: state.experience.copyWith(
        imageAssetsOption: some(event.imageAssets),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ExperienceEditingFormState> _onDescriptionChanged(_DescriptionChanged event) async* {
    yield state.copyWith(
      experience: state.experience.copyWith(
        description: EntityDescription(event.description),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ExperienceEditingFormState> _onTitleChanged(_TitleChanged event) async* {
    yield state.copyWith(
      experience: state.experience.copyWith(
        title: Name(event.title),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<ExperienceEditingFormState> _onInitialized(_Initialized event) async* {
    yield state.copyWith(
      experience: event.experience,
      loadedCoordinates: true,
    );
  }
}
