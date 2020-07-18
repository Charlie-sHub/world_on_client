import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/injection.dart';

void main() {
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
    },
  );
  group(
    "Testing states based on index",
    () {
      blocTest(
        "Should emit mainFeedView",
        build: () async => getIt<NavigationActorBloc>(),
        act: (bloc) async => bloc.add(const NavigationActorEvent.mainFeedTapped()),
        skip: 0,
        expect: [const NavigationActorState.mainFeedView()],
      );
      blocTest(
        "Should emit searchView",
        build: () async => getIt<NavigationActorBloc>(),
        act: (bloc) async => bloc.add(const NavigationActorEvent.searchTapped()),
        expect: [const NavigationActorState.searchView()],
      );
      blocTest(
        "Should emit createExperienceView",
        build: () async => getIt<NavigationActorBloc>(),
        act: (bloc) async => bloc.add(NavigationActorEvent.experienceFormTapped(none())),
        expect: [NavigationActorState.experienceFormView(none())],
      );
      blocTest(
        "Should emit navigateExperienceView",
        build: () async => getIt<NavigationActorBloc>(),
        act: (bloc) async => bloc.add(NavigationActorEvent.experienceNavigationTapped(none())),
        expect: [NavigationActorState.navigateExperienceView(none())],
      );
      blocTest(
        "Should emit profileView",
        build: () async => getIt<NavigationActorBloc>(),
        act: (bloc) async => bloc.add(NavigationActorEvent.profileTapped(none())),
        expect: [NavigationActorState.profileView(none())],
      );
      blocTest(
        "Should emit notificationsView",
        build: () async => getIt<NavigationActorBloc>(),
        act: (bloc) async => bloc.add(const NavigationActorEvent.notificationsTapped()),
        expect: [const NavigationActorState.notificationsView()],
      );
    },
  );
}
