import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/achievement_management/use_case/delete_achievement.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/injection.dart';

part 'achievement_management_actor_bloc.freezed.dart';
part 'achievement_management_actor_event.dart';
part 'achievement_management_actor_state.dart';

@injectable
class AchievementManagementActorBloc extends Bloc<
    AchievementManagementActorEvent, AchievementManagementActorState> {
  AchievementManagementActorBloc()
      : super(const AchievementManagementActorState.initial()) {
    on<_Deleted>(_onDeleted);
  }

  FutureOr<void> _onDeleted(
    AchievementManagementActorEvent event,
    Emitter emit,
  ) async {
    emit(const AchievementManagementActorState.actionInProgress());
    final _eitherFailureOrSuccess = await getIt<DeleteAchievement>()(
      Params(achievement: event.achievement),
    );
    emit(
      _eitherFailureOrSuccess.fold(
        (failure) => AchievementManagementActorState.deletionFailure(failure),
        (_) => const AchievementManagementActorState.deletionSuccess(),
      ),
    );
  }
}
