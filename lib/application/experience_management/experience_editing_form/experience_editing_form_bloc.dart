import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';
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
import 'package:worldon/domain/core/validation/objects/objective_list.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/experience_management/use_case/edit_experience.dart'
    as edit_experience;
import 'package:worldon/injection.dart';

part 'experience_editing_form_bloc.freezed.dart';
part 'experience_editing_form_event.dart';
part 'experience_editing_form_state.dart';

@injectable
class ExperienceEditingFormBloc
    extends Bloc<ExperienceEditingFormEvent, ExperienceEditingFormState> {
  ExperienceEditingFormBloc() : super(ExperienceEditingFormState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_TitleChanged>(_onTitleChanged);
    on<_DescriptionChanged>(_onDescriptionChanged);
    on<_ImageDeleted>(_onImageDeleted);
    on<_ImagesChanged>(_onImagesChanged);
    on<_CoordinatesChanged>(_onCoordinatesChanged);
    on<_DifficultyChanged>(_onDifficultyChanged);
    on<_ObjectivesChanged>(_onObjectivesChanged);
    on<_RewardsChanged>(_onRewardsChanged);
    on<_TagsChanged>(_onTagsChanged);
    on<_Submitted>(_onSubmitted);
  }

  static const _imageNumberLimit = 15;

  FutureOr<void> _onSubmitted(_, Emitter emit) async {
    late Either<Failure, Unit> _failureOrUnit;
    emit(
      state.copyWith(
        isSubmitting: true,
        failureOrSuccessOption: none(),
      ),
    );
    if (state.experience.isValid) {
      if (state.experience.imageURLs.isNotEmpty ||
          state.experience.imageAssetsOption.isSome()) {
        final _filesCount = state.experience.imageAssetsOption.fold(
          () => 0,
          (_imageList) => _imageList.length,
        );
        if (state.experience.imageURLs.length + _filesCount <=
            _imageNumberLimit) {
          _failureOrUnit = await getIt<edit_experience.EditExperience>()(
            edit_experience.Params(
              experience: state.experience,
              originalImageUrls: state.imageUrlsToDelete,
            ),
          );
        } else {
          emit(
            state.copyWith(
              isSubmitting: false,
              showErrorMessages: true,
              failureOrSuccessOption: optionOf(
                left(
                  const Failure.experienceManagementApplication(
                    ExperienceManagementApplicationFailure.surpassedImageLimit(
                      limit: _imageNumberLimit,
                    ),
                  ),
                ),
              ),
            ),
          );
        }
      }
    }
    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        failureOrSuccessOption: optionOf(_failureOrUnit),
      ),
    );
  }

  FutureOr<void> _onTagsChanged(_TagsChanged event, Emitter emit) {
    emit(
      state.copyWith(
        experience: state.experience.copyWith(
          tags: TagSet(event.tags),
        ),
        failureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onRewardsChanged(_RewardsChanged event, Emitter emit) {
    emit(
      state.copyWith(
        experience: state.experience.copyWith(
          rewards: RewardSet(event.rewards),
        ),
        failureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onObjectivesChanged(_ObjectivesChanged event, Emitter emit) {
    emit(
      state.copyWith(
        experience: state.experience.copyWith(
          objectives: ObjectiveList(event.objectives),
        ),
        failureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onDifficultyChanged(_DifficultyChanged event, Emitter emit) {
    emit(
      state.copyWith(
        experience: state.experience.copyWith(
          difficulty: Difficulty(event.difficulty),
        ),
        failureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onCoordinatesChanged(
    _CoordinatesChanged event,
    Emitter emit,
  ) {
    emit(
      state.copyWith(
        experience: state.experience.copyWith(
          coordinates: Coordinates(
            latitude: Latitude(event.latitude),
            longitude: Longitude(event.longitude),
          ),
        ),
        failureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onImageDeleted(_ImageDeleted event, Emitter emit) {
    state.experience.imageURLs.remove(event.imageURL);
    emit(
      state.copyWith(
        failureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onImagesChanged(_ImagesChanged event, Emitter emit) {
    emit(
      state.copyWith(
        experience: state.experience.copyWith(
          imageAssetsOption: some(event.imageAssets),
        ),
        failureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onDescriptionChanged(
    _DescriptionChanged event,
    Emitter emit,
  ) {
    emit(
      state.copyWith(
        experience: state.experience.copyWith(
          description: EntityDescription(event.description),
        ),
        failureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onTitleChanged(_TitleChanged event, Emitter emit) {
    emit(
      state.copyWith(
        experience: state.experience.copyWith(
          title: Name(event.title),
        ),
        failureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onInitialized(_Initialized event, Emitter emit) {
    emit(
      state.copyWith(
        experience: event.experience,
        loadedCoordinates: true,
      ),
    );
  }
}
