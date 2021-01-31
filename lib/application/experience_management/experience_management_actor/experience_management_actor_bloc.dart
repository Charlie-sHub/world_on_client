import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/use_case/is_logged_in_user.dart' as is_logged_in_user;
import 'package:worldon/domain/profile/use_case/delete_experience.dart' as delete_experience;
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
      checkCreator: _onCheckCreator,
      deleted: _onDeleted,
    );
  }

  Stream<ExperienceManagementActorState> _onCheckCreator(_CheckCreator event) async* {
    yield const ExperienceManagementActorState.actionInProgress();
    final _isCreator = await getIt<is_logged_in_user.IsLoggedInUser>().call(
      is_logged_in_user.Params(
        userToCompareWith: event.experience.creator,
      ),
    );
    if (_isCreator) {
      yield const ExperienceManagementActorState.isCreator();
    } else {
      yield const ExperienceManagementActorState.isNotCreator();
    }
  }

  Stream<ExperienceManagementActorState> _onDeleted(_Deleted event) async* {
    yield const ExperienceManagementActorState.actionInProgress();
    final _failureOrUnit = await getIt<delete_experience.DeleteExperience>()(
      delete_experience.Params(experience: event.experience),
    );
    yield _failureOrUnit.fold(
      (failure) => ExperienceManagementActorState.deletionFailure(failure),
      (_) => const ExperienceManagementActorState.deletionSuccess(),
    );
  }
}
