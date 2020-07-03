import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/application/experience_management/primitives/primitive_objective.dart';
import 'package:worldon/application/experience_management/primitives/primitive_reward.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';

part 'experience_management_form_bloc.freezed.dart';

part 'experience_management_form_event.dart';

part 'experience_management_form_state.dart';

@injectable
class ExperienceManagementFormBloc extends Bloc<ExperienceManagementFormEvent, ExperienceManagementFormState> {
  ExperienceManagementFormBloc() : super(ExperienceManagementFormState.initial());

  @override
  Stream<ExperienceManagementFormState> mapEventToState(ExperienceManagementFormEvent event) async* {
    // TODO: Add your event logic
  }
}
