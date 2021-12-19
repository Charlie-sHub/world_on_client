import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_bar_title_bloc.freezed.dart';
part 'app_bar_title_event.dart';
part 'app_bar_title_state.dart';

@injectable
class AppBarTitleBloc extends Bloc<AppBarTitleEvent, AppBarTitleState> {
  AppBarTitleBloc() : super(const AppBarTitleState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_ShowedMainFeed>(_onShowedMainFeed);
    on<_ShowedSearch>(_onShowedSearch);
    on<_ShowedRecommendations>(_onShowedRecommendations);
    on<_ShowedExperienceNavigation>(_onShowedExperienceNavigation);
    on<_ShowedExperienceFinish>(_onShowedExperienceFinish);
    on<_ShowedProfile>(_onShowedProfile);
    on<_ShowedNotifications>(_onShowedNotifications);
    on<_ShowedFollowers>(_onShowedFollowers);
    on<_ShowedFollowing>(_onShowedFollowing);
    on<_ShowedUsername>(_onShowedUsername);
  }

  void _onShowedUsername(_ShowedUsername event, Emitter emit) {
    emit(AppBarTitleState.username(event.username));
  }

  void _onShowedFollowing(_, Emitter emit) {
    emit(const AppBarTitleState.following());
  }

  void _onShowedFollowers(_, Emitter emit) {
    emit(const AppBarTitleState.followers());
  }

  void _onShowedNotifications(_, Emitter emit) {
    emit(const AppBarTitleState.notifications());
  }

  void _onShowedProfile(_, Emitter emit) {
    emit(const AppBarTitleState.profile());
  }

  void _onShowedExperienceFinish(_, Emitter emit) {
    emit(const AppBarTitleState.experienceFinish());
  }

  void _onShowedExperienceNavigation(_, Emitter emit) {
    emit(const AppBarTitleState.experienceNavigation());
  }

  void _onShowedRecommendations(_, Emitter emit) {
    emit(const AppBarTitleState.recommendations());
  }

  void _onShowedSearch(_, Emitter emit) {
    emit(const AppBarTitleState.search());
  }

  void _onShowedMainFeed(_, Emitter emit) {
    emit(const AppBarTitleState.mainFeed());
  }

  void _onInitialized(_, Emitter emit) {
    emit(const AppBarTitleState.initial());
  }
}
