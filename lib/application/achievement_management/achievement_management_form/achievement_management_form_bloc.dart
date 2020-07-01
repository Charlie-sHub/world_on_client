import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';

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
      initialized: (event) async* {
        yield event.achievementOption.fold(
          () => state,
          (achievement) => state.copyWith(
            achievement: achievement,
            isEditing: true,
          ),
        );
      },
      nameChange: (event) async* {},
      descriptionChange: (event) async* {},
      experiencePointsChange: (event) async* {},
      tagsChange: (event) async* {},
      submit: (event) async* {},
    );
  }
}
