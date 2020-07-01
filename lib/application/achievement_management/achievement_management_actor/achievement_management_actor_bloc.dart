import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/achievement_management/use_case/delete_achievement.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/injection.dart';

part 'achievement_management_actor_bloc.freezed.dart';

part 'achievement_management_actor_event.dart';

part 'achievement_management_actor_state.dart';

@injectable
class AchievementManagementActorBloc extends Bloc<AchievementManagementActorEvent, AchievementManagementActorState> {
  @override
  AchievementManagementActorState get initialState => const AchievementManagementActorState.initial();

  @override
  Stream<AchievementManagementActorState> mapEventToState(AchievementManagementActorEvent event) async* {
    yield* event.map(deleted: onDeleted);
  }

  Stream<AchievementManagementActorState> onDeleted(AchievementManagementActorEvent event) async* {
    yield const AchievementManagementActorState.actionInProgress();
    final eitherFailureOrSuccess = await getIt<DeleteAchievement>().call(
      Params(
        userRequesting: event.userRequesting,
        achievement: event.achievement,
      ),
    );
    yield eitherFailureOrSuccess.fold(
      (failure) => AchievementManagementActorState.deletionFailure(failure),
      (_) => const AchievementManagementActorState.deletionSuccess(),
    );
  }
}
