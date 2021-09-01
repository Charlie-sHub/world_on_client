import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_bar_title_bloc.freezed.dart';
part 'app_bar_title_event.dart';
part 'app_bar_title_state.dart';

@injectable
class AppBarTitleBloc extends Bloc<AppBarTitleEvent, AppBarTitleState> {
  AppBarTitleBloc() : super(const AppBarTitleState.initial());

  @override
  Stream<AppBarTitleState> mapEventToState(AppBarTitleEvent event) async* {
    yield* event.map(
      initialized: _onInitialized,
      showedMainFeed: _onShowedMainFeed,
      showedSearch: _onShowedSearch,
      showedRecommendations: _onShowedRecommendations,
      showedExperienceNavigation: _onShowedExperienceNavigation,
      showedExperienceFinish: _onShowedExperienceFinish,
      showedProfile: _onShowedProfile,
      showedNotifications: _onShowedNotifications,
      showedFollowers: _onShowedFollowers,
      showedFollowing: _onShowedFollowing,
      showedUsername: _onShowedUsername,
    );
  }

  Stream<AppBarTitleState> _onShowedUsername(_ShowedUsername event) async* {
    yield AppBarTitleState.username(event.username);
  }

  Stream<AppBarTitleState> _onShowedFollowing(_) async* {
    yield const AppBarTitleState.following();
  }

  Stream<AppBarTitleState> _onShowedFollowers(_) async* {
    yield const AppBarTitleState.followers();
  }

  Stream<AppBarTitleState> _onShowedNotifications(_) async* {
    yield const AppBarTitleState.notifications();
  }

  Stream<AppBarTitleState> _onShowedProfile(_) async* {
    yield const AppBarTitleState.profile();
  }

  Stream<AppBarTitleState> _onShowedExperienceFinish(_) async* {
    yield const AppBarTitleState.experienceFinish();
  }

  Stream<AppBarTitleState> _onShowedExperienceNavigation(_) async* {
    yield const AppBarTitleState.experienceNavigation();
  }

  Stream<AppBarTitleState> _onShowedRecommendations(_) async* {
    yield const AppBarTitleState.recommendations();
  }

  Stream<AppBarTitleState> _onShowedSearch(_) async* {
    yield const AppBarTitleState.search();
  }

  Stream<AppBarTitleState> _onShowedMainFeed(_) async* {
    yield const AppBarTitleState.mainFeed();
  }

  Stream<AppBarTitleState> _onInitialized(_) async* {
    yield const AppBarTitleState.initial();
  }
}
