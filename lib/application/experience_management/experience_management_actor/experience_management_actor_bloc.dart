import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/use_case/is_logged_in_user.dart'
    as is_logged_in_user;
import 'package:worldon/domain/experience_management/use_case/delete_experience.dart'
    as delete_experience;
import 'package:worldon/injection.dart';

part 'experience_management_actor_bloc.freezed.dart';
part 'experience_management_actor_event.dart';
part 'experience_management_actor_state.dart';

@injectable
class ExperienceManagementActorBloc extends Bloc<ExperienceManagementActorEvent,
    ExperienceManagementActorState> {
  ExperienceManagementActorBloc()
      : super(const ExperienceManagementActorState.initial()) {
    on<_CheckCreator>(_onCheckCreator);
    on<_Deleted>(_onDeleted);
  }

  FutureOr<void> _onCheckCreator(_CheckCreator event, Emitter emit) async {
    emit(const ExperienceManagementActorState.actionInProgress());
    final _isCreator = await getIt<is_logged_in_user.IsLoggedInUser>().call(
      is_logged_in_user.Params(
        userToCompareWithId: event.experience.creator.id,
      ),
    );
    if (_isCreator) {
      emit(const ExperienceManagementActorState.isCreator());
    } else {
      emit(const ExperienceManagementActorState.isNotCreator());
    }
  }

  FutureOr<void> _onDeleted(_Deleted event, Emitter emit) async {
    emit(const ExperienceManagementActorState.actionInProgress());
    final _failureOrUnit = await getIt<delete_experience.DeleteExperience>()(
      delete_experience.Params(experience: event.experience),
    );
    emit(
      _failureOrUnit.fold(
        (failure) => ExperienceManagementActorState.deletionFailure(failure),
        (_) => const ExperienceManagementActorState.deletionSuccess(),
      ),
    );
  }
}
