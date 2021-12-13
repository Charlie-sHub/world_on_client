import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'navigation_actor_bloc.freezed.dart';
part 'navigation_actor_event.dart';
part 'navigation_actor_state.dart';

@singleton
class NavigationActorBloc
    extends Bloc<NavigationActorEvent, NavigationActorState> {
  NavigationActorBloc()
      : super(
          NavigationActorState.navigateExperienceView(none()),
        ) {
    on<_MainFeedTapped>(_onMainFeedTapped);
    on<_SearchTapped>(_onSearchTapped);
    on<_ExperienceNavigationTapped>(_onExperienceNavigationTapped);
    on<_ProfileTapped>(_onProfileTapped);
    on<_NotificationsTapped>(_onNotificationsTapped);
  }

  void _onNotificationsTapped(_, Emitter emit) {
    emit(const NavigationActorState.notificationsView());
  }

  void _onMainFeedTapped(_, Emitter emit) {
    emit(const NavigationActorState.mainFeedView());
  }

  void _onSearchTapped(_, Emitter emit) {
    emit(const NavigationActorState.searchView());
  }

  void _onExperienceNavigationTapped(
    _ExperienceNavigationTapped event,
    Emitter emit,
  ) {
    emit(
      NavigationActorState.navigateExperienceView(event.experienceOption),
    );
  }

  void _onProfileTapped(_ProfileTapped event, Emitter emit) {
    emit(
      NavigationActorState.profileView(
        userIdOption: event.userIdOption,
        currentUserProfile: event.currentUserProfile,
      ),
    );
  }
}
