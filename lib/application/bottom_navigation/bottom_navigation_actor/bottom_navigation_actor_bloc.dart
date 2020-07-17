import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'bottom_navigation_actor_bloc.freezed.dart';

part 'bottom_navigation_actor_event.dart';

part 'bottom_navigation_actor_state.dart';

@injectable
class BottomNavigationActorBloc extends Bloc<BottomNavigationActorEvent, BottomNavigationActorState> {
  BottomNavigationActorBloc() : super(const BottomNavigationActorState.mainFeedView());

  @override
  Stream<BottomNavigationActorState> mapEventToState(BottomNavigationActorEvent event) async* {
    yield* event.map(
      itemTapped: onItemTapped,
    );
  }

  Stream<BottomNavigationActorState> onItemTapped(_ItemTapped event) async* {
    switch (event.index) {
      case 0:
        yield const BottomNavigationActorState.mainFeedView();
        break;
      case 1:
        yield const BottomNavigationActorState.searchView();
        break;
      case 2:
        yield const BottomNavigationActorState.createExperienceView();
        break;
      case 3:
        yield const BottomNavigationActorState.navigateExperienceView();
        break;
      case 4:
        yield const BottomNavigationActorState.profileView();
        break;
      default:
        yield const BottomNavigationActorState.errorView();
        break;
    }
  }
}
