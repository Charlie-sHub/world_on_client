import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/achievement_management/use_case/create_achievement.dart'
    as create_achievement;
import 'package:worldon/domain/achievement_management/use_case/edit_achievement.dart'
    as edit_achievement;
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/failures/error.dart';
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
class AchievementManagementFormBloc extends Bloc<AchievementManagementFormEvent,
    AchievementManagementFormState> {
  AchievementManagementFormBloc()
      : super(AchievementManagementFormState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_NameChanged>(_onNameChanged);
    on<_DescriptionChanged>(_onDescriptionChanged);
    on<_ExperiencePointsChanged>(_onExperiencePointsChanged);
    on<_TagsChanged>(_onTagsChanged);
    on<_ImageChanged>(_onImageChanged);
    on<_Submitted>(_onSubmitted);
  }

  void _onTagsChanged(_TagsChanged event, Emitter emit) {
    emit(
      state.copyWith(
        achievement: state.achievement.copyWith(
          tags: TagSet(event.tags),
        ),
        failureOrSuccessOption: none(),
      ),
    );
  }

  void _onImageChanged(_ImageChanged event, Emitter emit) {
    emit(
      state.copyWith(
        achievement: state.achievement.copyWith(
          imageFile: some(event.image),
        ),
        failureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onSubmitted(_, Emitter emit) async {
    late Either<Failure, Unit> _failureOrUnit;
    emit(
      state.copyWith(
        isSubmitting: true,
        failureOrSuccessOption: none(),
      ),
    );
    if (state.achievement.isValid) {
      if (state.isEditing) {
        _failureOrUnit = await getIt<edit_achievement.EditAchievement>()(
          edit_achievement.Params(
            achievement: state.achievement,
          ),
        );
      } else if (state.achievement.imageFile.isSome()) {
        _failureOrUnit = await getIt<create_achievement.CreateAchievement>()(
          create_achievement.Params(
            achievement: state.achievement,
          ),
        );
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

  void _onExperiencePointsChanged(
    _ExperiencePointsChanged event,
    Emitter emit,
  ) {
    emit(
      state.copyWith(
        achievement: state.achievement.copyWith(
          experiencePoints: ExperiencePoints(event.experiencePoints),
        ),
        failureOrSuccessOption: none(),
      ),
    );
  }

  void _onDescriptionChanged(_DescriptionChanged event, Emitter emit) {
    emit(
      state.copyWith(
        achievement: state.achievement.copyWith(
          description: EntityDescription(event.description),
        ),
        failureOrSuccessOption: none(),
      ),
    );
  }

  void _onNameChanged(_NameChanged event, Emitter emit) {
    emit(
      state.copyWith(
        achievement: state.achievement.copyWith(
          name: Name(event.name),
        ),
        failureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onInitialized(_Initialized event, Emitter emit) async {
    await event.achievementOption.fold(
      () async {
        final _currentUserOption = await getIt<GetLoggedInUser>()(
          getIt<NoParams>(),
        );
        final _currentUser = _currentUserOption.fold(
          () => throw UnAuthenticatedError(),
          id,
        );
        emit(
          state.copyWith(
            achievement: Achievement.empty().copyWith(
              creatorId: _currentUser.id,
            ),
          ),
        );
      },
      (achievement) async => emit(
        state.copyWith(
          achievement: achievement,
          isEditing: true,
        ),
      ),
    );
  }
}
