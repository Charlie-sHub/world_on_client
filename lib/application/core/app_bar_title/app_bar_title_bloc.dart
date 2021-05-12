import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/injection.dart';

part 'app_bar_title_bloc.freezed.dart';
part 'app_bar_title_event.dart';ent.dart';

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

  Stream<AppBarTitleState> _onShowedUsername(_) async* {
    final _userOption = await getIt<GetLoggedInUser>()(
      getIt<NoParams>(),
    );
    yield _userOption.fold(
      () => const AppBarTitleState.error(),
      (_user) => AppBarTitleState.username(
        _user.username.getOrCrash(),
      ),
    );
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
