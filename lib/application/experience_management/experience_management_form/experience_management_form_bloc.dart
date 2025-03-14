import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';
import 'package:worldon/application/core/failures/core_application_failure.dart';
import 'package:worldon/application/experience_management/failures/experience_management_application_failure.dart';
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
import 'package:worldon/domain/core/validation/objects/objective_list.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/experience_management/use_case/create_experience.dart' as create_experience;
import 'package:worldon/domain/experience_management/use_case/edit_experience.dart' as edit_experience;
import 'package:worldon/domain/experience_navigation/use_case/reward_user.dart' as reward_user;

import '../../../injection.dart';

part 'experience_management_form_bloc.freezed.dart';
part 'experience_management_form_event.dart';
part 'experience_management_form_state.dart';

@injectable
class ExperienceManagementFormBloc
    extends Bloc<ExperienceManagementFormEvent, ExperienceManagementFormState> {
  ExperienceManagementFormBloc() : super(ExperienceManagementFormState.initial());

  static const _imageNumberLimit = 15;

  @override
  Stream<ExperienceManagementFormState> mapEventToState(ExperienceManagementFormEvent event) async* {
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

  Stream<ExperienceManagementFormState> _onSubmitted(_) async* {
    Either<Failure, Unit>? _failureOrUnit;
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );
    if (state.experience.isValid) {
      final _filesCount = state.experience.imageAssetsOption.fold(
        () => 0,
        (_imageList) => _imageList.length,
      );
      if (state.experience.imageURLs.length + _filesCount <= _imageNumberLimit) {
        if (state.isEditing && state.experience.imageURLs.length + _filesCount >= 1) {
          _failureOrUnit = await getIt<edit_experience.EditExperience>()(
            edit_experience.Params(
              experience: state.experience,
              originalImageUrls: state.originalImageUrls,
            ),
          );
        } else {
          if (_filesCount >= 1) {
            _failureOrUnit = await getIt<create_experience.CreateExperience>()(
              create_experience.Params(experience: state.experience),
            );
            // Rewarding users for creating experiences too
            getIt<reward_user.RewardUser>()(
              reward_user.Params(
                difficulty: Difficulty(10),
              ),
            );
          }
        }
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
    } else {
      yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        failureOrSuccessOption: some(
          left(
            const Failure.coreApplication(
              CoreApplicationFailure.emptyFields(),
            ),
          ),
        ),
      );
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

  Stream<ExperienceManagementFormState> _onImageDeleted(_ImageDeleted event) async* {
    final _newURLList = Set<String>.from(state.experience.imageURLs);
    _newURLList.remove(event.imageURL);
    yield state.copyWith(
      experience: state.experience.copyWith(
        imageURLs: _newURLList,
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
        // I don't want my experiences to be promoted as most if not all of them will be tests
        // Maybe other developers will need to be excluded too in the future
        // Don't like hard coding this though
        final _isNotCarlos = _currentUser.id.getOrCrash() != "RmdTGeylpDVVcyTVNbe6Ngj3DRV2";
        final _isPromoted = _currentUser.adminPowers && _isNotCarlos || _currentUser.promotionPlan.isUsable;
        return state.copyWith(
          experience: Experience.empty().copyWith(
            creator: _currentUser.simplified,
            coordinates: _coordinates,
            isPromoted: _isPromoted,
          ),
          loadedCoordinates: true,
        );
      },
      (experience) {
        final _imageList = experience.imageURLs.toList();
        final _objectivesImageUrls = experience.objectives.getOrCrash().dart.map(
              (_objective) => _objective.imageURL,
            );
        final _rewardsImageUrls = experience.rewards.getOrCrash().dart.map(
              (_reward) => _reward.imageURL,
            );
        _imageList.addAll(
          _objectivesImageUrls,
        );
        _imageList.addAll(
          _rewardsImageUrls,
        );
        return state.copyWith(
          experience: experience,
          originalImageUrls: _imageList,
          isEditing: true,
          loadedCoordinates: true,
        );
      },
    );
  }
}
