import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/profile/use_case/delete_experience.dart';
import 'package:worldon/injection.dart';

part 'experience_management_actor_bloc.freezed.dart';
part 'experience_management_actor_event.dart';
part 'experience_management_actor_state.dart';

@injectable
class ExperienceManagementActorBloc extends Bloc<ExperienceManagementActorEvent, ExperienceManagementActorState> {
  ExperienceManagementActorBloc() : super(const ExperienceManagementActorState.initial());

  @override
  Stream<ExperienceManagementActorState> mapEventToState(ExperienceManagementActorEvent event) async* {
    yield* event.map(
      deleted: onDeleted,
    );
  }

  Stream<ExperienceManagementActorState> onDeleted(_Deleted event) async* {
    yield const ExperienceManagementActorState.actionInProgress();
    final _deleteExperience = getIt<DeleteExperience>();
    final _failureOrUnit = await _deleteExperience(
      Params(
        experience: event.experience,
      ),
    );
    yield _failureOrUnit.fold(
      (failure) => ExperienceManagementActorState.deletionFailure(failure),
      (_) => const ExperienceManagementActorState.deletionSuccess(),
    );
  }
}
