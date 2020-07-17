import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:worldon/application/bottom_navigation/bottom_navigation_actor/bottom_navigation_actor_bloc.dart';
import 'package:worldon/injection.dart';

void main() {
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
    },
  );
  const mainFeedIndex = 0;
  const searchIndex = 1;
  const createExperienceIndex = 2;
  const navigateExperienceIndex = 3;
  const profileIndex = 4;
  const outOfBoundsIndex = 5;
  group(
    "Testing states based on index",
    () {
      blocTest(
        "Should emit mainFeedView",
        build: () async => getIt<BottomNavigationActorBloc>(),
        act: (bloc) async => bloc.add(const BottomNavigationActorEvent.itemTapped(mainFeedIndex)),
        skip: 0,
        expect: [const BottomNavigationActorState.mainFeedView()],
      );
      blocTest(
        "Should emit searchView",
        build: () async => getIt<BottomNavigationActorBloc>(),
        act: (bloc) async => bloc.add(const BottomNavigationActorEvent.itemTapped(searchIndex)),
        expect: [const BottomNavigationActorState.searchView()],
      );
      blocTest(
        "Should emit createExperienceView",
        build: () async => getIt<BottomNavigationActorBloc>(),
        act: (bloc) async => bloc.add(const BottomNavigationActorEvent.itemTapped(createExperienceIndex)),
        expect: [const BottomNavigationActorState.createExperienceView()],
      );
      blocTest(
        "Should emit navigateExperienceView",
        build: () async => getIt<BottomNavigationActorBloc>(),
        act: (bloc) async => bloc.add(const BottomNavigationActorEvent.itemTapped(navigateExperienceIndex)),
        expect: [const BottomNavigationActorState.navigateExperienceView()],
      );
      blocTest(
        "Should emit profileView",
        build: () async => getIt<BottomNavigationActorBloc>(),
        act: (bloc) async => bloc.add(const BottomNavigationActorEvent.itemTapped(profileIndex)),
        expect: [const BottomNavigationActorState.profileView()],
      );
      blocTest(
        "Should emit errorView",
        build: () async => getIt<BottomNavigationActorBloc>(),
        act: (bloc) async => bloc.add(const BottomNavigationActorEvent.itemTapped(outOfBoundsIndex)),
        expect: [const BottomNavigationActorState.errorView()],
      );
    },
  );
}
