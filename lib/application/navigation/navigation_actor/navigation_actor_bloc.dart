import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

part 'navigation_actor_bloc.freezed.dart';

part 'navigation_actor_event.dart';

part 'navigation_actor_state.dart';

@injectable
class NavigationActorBloc extends Bloc<NavigationActorEvent, NavigationActorState> {
  NavigationActorBloc() : super(const NavigationActorState.mainFeedView());

  @override
  Stream<NavigationActorState> mapEventToState(NavigationActorEvent event) async* {
    yield* event.map(
      mainFeedTapped: onMainFeedTapped,
      searchTapped: onSearchTapped,
      experienceFormTapped: onExperienceFormTapped,
      experienceNavigationTapped: onExperienceNavigationTapped,
      profileTapped: onProfileTapped,
      notificationsTapped: onNotificationsTapped,
    );
  }

  // TODO: Change all the bloc functions that receive unnecessary event parameters to _
  Stream<NavigationActorState> onNotificationsTapped(_) async* {
    yield const NavigationActorState.notificationsView();
  }

  Stream<NavigationActorState> onMainFeedTapped(_) async* {
    yield const NavigationActorState.mainFeedView();
  }

  Stream<NavigationActorState> onSearchTapped(_) async* {
    yield const NavigationActorState.searchView();
  }

  Stream<NavigationActorState> onExperienceFormTapped(_ExperienceFormTapped event) async* {
    yield NavigationActorState.experienceFormView(event.experienceOption);
  }

  Stream<NavigationActorState> onExperienceNavigationTapped(_ExperienceNavigationTapped event) async* {
    yield NavigationActorState.navigateExperienceView(event.experienceOption);
  }

  Stream<NavigationActorState> onProfileTapped(_ProfileTapped event) async* {
    yield NavigationActorState.profileView(event.userOption);
  }
}
