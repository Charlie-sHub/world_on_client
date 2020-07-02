import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/achievement_management/use_case/create_achievement.dart' as create_achievement;
import 'package:worldon/domain/achievement_management/use_case/edit_achievement.dart' as edit_achievement;
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/injection.dart';

part 'achievement_management_form_bloc.freezed.dart';
part 'achievement_management_form_event.dart';
part 'achievement_management_form_state.dart';

@injectable
class AchievementManagementFormBloc extends Bloc<AchievementManagementFormEvent, AchievementManagementFormState> {
  @override
  AchievementManagementFormState get initialState => AchievementManagementFormState.initial();

  @override
  Stream<AchievementManagementFormState> mapEventToState(AchievementManagementFormEvent event) async* {
    yield* event.map(
      initialized: onInitialized,
      nameChange: onNameChange,
      descriptionChange: onDescriptionChange,
      experiencePointsChange: onExperiencePointsChange,
      tagsChange: onTagsChange,
      submit: onSubmit,
    );
  }

  Stream<AchievementManagementFormState> onSubmit(_Submit event) async* {
    Either<Failure, Unit> failureOrUnit;
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );
    if (state.achievement.isValid) {
      if (state.isEditing) {
        final _editAchievement = getIt<edit_achievement.EditAchievement>();
        failureOrUnit = await _editAchievement(
          edit_achievement.Params(
            achievement: state.achievement,
          ),
        );
      } else {
        final _createAchievement = getIt<create_achievement.CreateAchievement>();
        failureOrUnit = await _createAchievement(
          create_achievement.Params(
            achievement: state.achievement,
          ),
        );
      }
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      failureOrSuccessOption: optionOf(failureOrUnit),
    );
  }

  Stream<AchievementManagementFormState> onTagsChange(_TagsChange event) async* {
    yield state.copyWith(
      achievement: state.achievement.copyWith(
        tags: TagSet(event.tags),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<AchievementManagementFormState> onExperiencePointsChange(_ExperiencePointsChange event) async* {
    yield state.copyWith(
      achievement: state.achievement.copyWith(
        experiencePoints: ExperiencePoints(event.experiencePoints),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<AchievementManagementFormState> onDescriptionChange(_DescriptionChange event) async* {
    yield state.copyWith(
      achievement: state.achievement.copyWith(
        description: EntityDescription(event.description),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<AchievementManagementFormState> onNameChange(_NameChange event) async* {
    yield state.copyWith(
      achievement: state.achievement.copyWith(
        name: Name(event.name),
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<AchievementManagementFormState> onInitialized(_Initialized event) async* {
    yield await event.achievementOption.fold(
      () async {
        final _currentUserOption = await getIt<GetLoggedInUser>().call(getIt<NoParams>());
        final _currentUser = _currentUserOption.fold(
          () => User.empty(),
          id,
        );
        return state.copyWith(
          achievement: Achievement.empty().copyWith(creator: _currentUser),
        );
      },
      (achievement) => state.copyWith(
        achievement: achievement,
        isEditing: true,
      ),
    );
  }
}
