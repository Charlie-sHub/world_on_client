// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/get_it_helper.dart';

import 'application/achievement_management/achievement_management_actor/achievement_management_actor_bloc.dart';
import 'application/achievement_management/achievement_management_form/achievement_management_form_bloc.dart';
import 'application/achievement_management/achievement_management_watcher/achievement_management_watcher_bloc.dart';
import 'application/authentication/authentication/authentication_bloc.dart';
import 'application/authentication/log_in_form/log_in_form_bloc.dart';
import 'application/authentication/registration_form/registration_form_bloc.dart';
import 'application/comments/comment_actor/comment_actor_bloc.dart';
import 'application/comments/comment_form/comment_form_bloc.dart';
import 'application/comments/comment_watcher/comment_watcher_bloc.dart';
import 'application/core/experience_card_actor/experience_card_actor_bloc.dart';
import 'application/core/experience_card_like_check/experience_card_like_check_bloc.dart';
import 'application/experience_log/experience_log_actor/experience_log_actor_bloc.dart';
import 'application/experience_log/experience_log_watcher/experience_log_watcher_bloc.dart';
import 'application/experience_management/experience_management_actor/experience_management_actor_bloc.dart';
import 'application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'application/experience_navigation/experience_finish_actor/experience_finish_actor_bloc.dart';
import 'application/experience_navigation/experience_like_actor/experience_like_actor_bloc.dart';
import 'application/experience_navigation/experience_navigation_actor/experience_navigation_actor_bloc.dart';
import 'application/experience_navigation/experience_navigation_watcher/experience_navigation_watcher_bloc.dart';
import 'application/experience_navigation/objectives_tracker/objectives_tracker_bloc.dart';
import 'application/experience_navigation/rate_experience_difficulty_actor/rate_experience_difficulty_actor_bloc.dart';
import 'application/main_feed/main_feed_watcher/main_feed_watcher_bloc.dart';
import 'application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'application/notifications/notification_actor/notification_actor_bloc.dart';
import 'application/notifications/notifications_watcher/notifications_watcher_bloc.dart';
import 'application/options/options_form/options_form_bloc.dart';
import 'application/options/user_actor/user_actor_bloc.dart';
import 'application/profile/block_actor/block_actor_bloc.dart';
import 'application/profile/blocked_watcher/blocked_watcher_bloc.dart';
import 'application/profile/follow_actor/follow_actor_bloc.dart';
import 'application/profile/following_watcher/following_watcher_bloc.dart';
import 'application/profile/profile_achievements_watcher/profile_achievements_watcher_bloc.dart';
import 'application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'application/profile/profile_experiences_watcher/profile_experiences_watcher_bloc.dart';
import 'application/profile/profile_interests_watcher/profile_interests_watcher_bloc.dart';
import 'application/profile/profile_users_watcher/profile_users_watcher_bloc.dart';
import 'application/profile/profile_watcher/profile_watcher_bloc.dart';
import 'application/search/search_by_name_form/search_by_name_form_bloc.dart';
import 'application/search/search_experiences_by_difficulty/search_experiences_by_difficulty_bloc.dart';
import 'application/search/search_experiences_by_name_watcher/search_experiences_by_name_watcher_bloc.dart';
import 'application/search/search_experiences_by_tags/search_experiences_by_tags_bloc.dart';
import 'application/search/search_tags_by_name_watcher/search_tags_by_name_watcher_bloc.dart';
import 'application/search/search_users_by_name_watcher/search_users_by_name_watcher_bloc.dart';
import 'application/search/tag_selector/tag_selector_bloc.dart';
import 'application/tag_management/tag_card_actor/tag_card_actor_bloc.dart';
import 'application/tag_management/tag_card_check/tag_card_check_bloc.dart';
import 'application/tag_management/tag_management_actor/tag_management_actor_bloc.dart';
import 'application/tag_management/tag_management_form/tag_management_form_bloc.dart';
import 'application/tag_management/tag_management_watcher/tag_management_watcher_bloc.dart';
import 'core/util/cypher.dart';
import 'data/achievement_management/repository/development_achievement_repository.dart';
import 'data/achievement_management/repository/production_achievement_repository.dart';
import 'data/authentication/repository/development_authentication_repository.dart';
import 'data/authentication/repository/production_authentication_repository.dart';
import 'data/comments/repository/development_comment_repository.dart';
import 'data/comments/repository/production_comment_repository.dart';
import 'data/core/repository/development_core_repository.dart';
import 'data/core/repository/development_geo_location_repository.dart';
import 'data/core/repository/production_core_repository.dart';
import 'data/core/repository/production_geo_location_repository.dart';
import 'data/experience_log/repository/development_experience_log_repository.dart';
import 'data/experience_log/repository/production_experience_log_repository.dart';
import 'data/experience_management/repository/development_experience_management_repository.dart';
import 'data/experience_management/repository/production_experience_management_repository.dart';
import 'data/experience_navigation/repository/development_experience_navigation_repository.dart';
import 'data/experience_navigation/repository/production_experience_navigation_repository.dart';
import 'data/main_feed/repository/development_main_feed_repository.dart';
import 'data/main_feed/repository/production_main_feed_repository.dart';
import 'data/notifications/repository/development_notification_repository.dart';
import 'data/notifications/repository/production_notification_repository.dart';
import 'data/options/repository/development_local_options_repository.dart';
import 'data/options/repository/development_remote_options_repository.dart';
import 'data/options/repository/production_local_options_repository.dart';
import 'data/options/repository/production_remote_options_repository.dart';
import 'data/profile/repository/development_profile_repository.dart';
import 'data/profile/repository/production_profile_repository.dart';
import 'data/search/repository/development_search_repository.dart';
import 'data/search/repository/production_search_repository.dart';
import 'data/tag_management/repository/development_tag_management_repository.dart';
import 'data/tag_management/repository/development_tag_repository.dart';
import 'data/tag_management/repository/production_tag_management_repository.dart';
import 'data/tag_management/repository/production_tag_repository.dart';
import 'domain/achievement_management/repository/achievement_repository_interface.dart';
import 'domain/achievement_management/repository/achievement_repository_mock.dart';
import 'domain/achievement_management/use_case/award_achievement.dart';
import 'domain/achievement_management/use_case/create_achievement.dart';
import 'domain/achievement_management/use_case/delete_achievement.dart';
import 'domain/achievement_management/use_case/edit_achievement.dart';
import 'domain/achievement_management/use_case/get_achievement.dart';
import 'domain/achievement_management/use_case/get_all_achievements.dart';
import 'domain/achievement_management/use_case/get_user_achievements.dart';
import 'domain/achievement_management/use_case/use_case_mocks.dart';
import 'domain/authentication/repository/authentication_repository_interface.dart';
import 'domain/authentication/repository/authentication_repository_mock.dart';
import 'domain/authentication/repository/cached_credentials_repository_interface.dart';
import 'domain/authentication/repository/cached_user_repository_mock.dart';
import 'domain/authentication/repository/public_key_repository_interface.dart';
import 'domain/authentication/repository/public_key_repository_mock.dart';
import 'domain/authentication/use_case/get_cached_user.dart';
import 'domain/authentication/use_case/get_logged_in_user.dart';
import 'domain/authentication/use_case/get_public_key.dart';
import 'domain/authentication/use_case/log_in.dart';
import 'domain/authentication/use_case/log_in_google.dart';
import 'domain/authentication/use_case/log_out.dart';
import 'domain/authentication/use_case/register.dart';
import 'domain/authentication/use_case/use_case_mocks.dart';
import 'domain/comments/repository/comment_repository_interface.dart';
import 'domain/comments/repository/comment_repository_mock.dart';
import 'domain/comments/use_case/delete_comment.dart';
import 'domain/comments/use_case/edit_comment.dart';
import 'domain/comments/use_case/get_experience_comments.dart';
import 'domain/comments/use_case/get_user_comments.dart';
import 'domain/comments/use_case/post_comment.dart';
import 'domain/comments/use_case/use_case_mocks.dart';
import 'domain/core/repository/core_repository_interface.dart';
import 'domain/core/repository/core_repository_mock.dart';
import 'domain/core/repository/geo_location_repository_interface.dart';
import 'domain/core/repository/geo_location_repository_mock.dart';
import 'domain/core/use_case/delete_cache.dart';
import 'domain/core/use_case/get_current_location.dart';
import 'domain/core/use_case/is_logged_in_user.dart';
import 'domain/core/use_case/use_case.dart';
import 'domain/core/use_case/use_case_mocks.dart';
import 'domain/experience_log/repository/experience_log_repository_interface.dart';
import 'domain/experience_log/repository/experience_log_repository_mock.dart';
import 'domain/experience_log/use_case/add_experience_to_log.dart';
import 'domain/experience_log/use_case/dismiss_experience_from_log.dart';
import 'domain/experience_log/use_case/load_user_log.dart';
import 'domain/experience_log/use_case/use_case_mocks.dart';
import 'domain/experience_management/repository/experience_management_repository_interface.dart';
import 'domain/experience_management/repository/experience_management_repository_mock.dart';
import 'domain/experience_management/use_case/create_experience.dart';
import 'domain/experience_management/use_case/create_objectives.dart';
import 'domain/experience_management/use_case/edit_experience.dart';
import 'domain/experience_management/use_case/get_experience.dart';
import 'domain/experience_management/use_case/use_case_mocks.dart';
import 'domain/experience_navigation/repository/experience_navigation_repository_interface.dart';
import 'domain/experience_navigation/repository/experience_navigation_repository_mock.dart';
import 'domain/experience_navigation/use_case/accomplish_objective.dart';
import 'domain/experience_navigation/use_case/fill_objective_tracker.dart';
import 'domain/experience_navigation/use_case/finish_experience.dart';
import 'domain/experience_navigation/use_case/like_experience.dart';
import 'domain/experience_navigation/use_case/load_surrounding_experiences.dart';
import 'domain/experience_navigation/use_case/rate_difficulty.dart';
import 'domain/experience_navigation/use_case/reward_user.dart';
import 'domain/experience_navigation/use_case/use_case_mocks.dart';
import 'domain/main_feed/repository/main_feed_repository_interface.dart';
import 'domain/main_feed/repository/main_feed_repository_mock.dart';
import 'domain/main_feed/use_case/fill_feed.dart';
import 'domain/main_feed/use_case/use_case_mocks.dart';
import 'domain/notifications/repository/notification_repository_interface.dart';
import 'domain/notifications/repository/notification_repository_mock.dart';
import 'domain/notifications/use_case/check_notification.dart';
import 'domain/notifications/use_case/delete_notification.dart';
import 'domain/notifications/use_case/delete_user_notifications.dart';
import 'domain/notifications/use_case/load_notifications.dart';
import 'domain/notifications/use_case/send_notification.dart';
import 'domain/notifications/use_case/use_case_mocks.dart';
import 'domain/options/repository/local_options_repository_interface.dart';
import 'domain/options/repository/local_options_repository_mock.dart';
import 'domain/options/repository/remote_options_repository_interface.dart';
import 'domain/options/repository/remote_options_repository_mock.dart';
import 'domain/options/use_case/delete_user.dart';
import 'domain/options/use_case/save_global_options.dart';
import 'domain/options/use_case/use_case_mocks.dart';
import 'domain/profile/repository/profile_repository_interface.dart';
import 'domain/profile/repository/profile_repository_mock.dart';
import 'domain/profile/use_case/block_user.dart';
import 'domain/profile/use_case/delete_experience.dart';
import 'domain/profile/use_case/edit_user.dart';
import 'domain/profile/use_case/follow_user.dart';
import 'domain/profile/use_case/load_blocked_users.dart';
import 'domain/profile/use_case/load_experiences_created.dart';
import 'domain/profile/use_case/load_experiences_done.dart';
import 'domain/profile/use_case/load_experiences_liked.dart';
import 'domain/profile/use_case/load_followed_users.dart';
import 'domain/profile/use_case/load_following_users.dart';
import 'domain/profile/use_case/load_user.dart';
import 'domain/profile/use_case/load_user_achievements.dart';
import 'domain/profile/use_case/load_user_interests.dart';
import 'domain/profile/use_case/remove_experience_liked.dart';
import 'domain/profile/use_case/un_block_user.dart';
import 'domain/profile/use_case/un_follow_user.dart';
import 'domain/profile/use_case/use_case_mocks.dart';
import 'domain/search/repository/search_repository_interface.dart';
import 'domain/search/repository/search_repository_mock.dart';
import 'domain/search/use_case/search_experiences_by_difficulty.dart';
import 'domain/search/use_case/search_experiences_by_name.dart';
import 'domain/search/use_case/search_experiences_by_tags.dart';
import 'domain/search/use_case/search_tags_by_name.dart';
import 'domain/search/use_case/search_users_by_name.dart';
import 'domain/search/use_case/search_users_by_username.dart';
import 'domain/search/use_case/use_case_mocks.dart';
import 'domain/tag_management/repository/tag_management_repository_interface.dart';
import 'domain/tag_management/repository/tag_management_repository_mock.dart';
import 'domain/tag_management/repository/tag_repository_interface.dart';
import 'domain/tag_management/repository/tag_repository_mock.dart';
import 'domain/tag_management/use_case/add_tag_to_interests.dart';
import 'domain/tag_management/use_case/create_tag.dart';
import 'domain/tag_management/use_case/delete_tag.dart';
import 'domain/tag_management/use_case/dismiss_tag_from_interests.dart';
import 'domain/tag_management/use_case/edit_tag.dart';
import 'domain/tag_management/use_case/get_all_tags.dart';
import 'domain/tag_management/use_case/get_tag.dart';
import 'domain/tag_management/use_case/get_tag_creator.dart';
import 'domain/tag_management/use_case/get_tags_by_creator.dart';
import 'domain/tag_management/use_case/use_case_mocks.dart';

/// Environment names
const _test = 'test';
const _prod = 'prod';
const _dev = 'dev';

/// adds generated dependencies
/// to the provided [GetIt] instance

void $initGetIt(GetIt g, {String environment}) {
  final gh = GetItHelper(g, environment);
  gh.lazySingleton<AccomplishObjective>(() => MockAccomplishObjective(), registerFor: {_test});
  gh.factory<AchievementManagementActorBloc>(() => AchievementManagementActorBloc());
  gh.factory<AchievementManagementFormBloc>(() => AchievementManagementFormBloc());
  gh.factory<AchievementManagementWatcherBloc>(() => AchievementManagementWatcherBloc());
  gh.lazySingleton<AchievementRepositoryInterface>(() => ProductionAchievementRepository(), registerFor: {_prod});
  gh.lazySingleton<AchievementRepositoryInterface>(() => DevelopmentAchievementRepository(), registerFor: {_dev});
  gh.lazySingleton<AchievementRepositoryInterface>(() => MockAchievementRepository(), registerFor: {_test});
  gh.lazySingleton<AddExperienceToLog>(() => MockAddExperienceToLog(), registerFor: {_test});
  gh.lazySingleton<AddTagToInterests>(() => MockAddTagToInterests(), registerFor: {_test});
  gh.factory<AuthenticationBloc>(() => AuthenticationBloc());
  gh.lazySingleton<AuthenticationRepositoryInterface>(() => DevelopmentAuthenticationRepository(), registerFor: {_dev});
  gh.lazySingleton<AuthenticationRepositoryInterface>(
      () => ProductionAuthenticationRepository(),
      registerFor: {_prod});
  gh.lazySingleton<AuthenticationRepositoryInterface>(
      () => MockAuthenticationRepository(),
      registerFor: {_test});
  gh.lazySingleton<AwardAchievement>(
      () => AwardAchievement(g<AchievementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<AwardAchievement>(() => MockAwardAchievement(),
      registerFor: {_test});
  gh.factory<BlockActorBloc>(() => BlockActorBloc());
  gh.lazySingleton<BlockUser>(() => MockBlockUser(), registerFor: {_test});
  gh.factory<BlockedWatcherBloc>(() => BlockedWatcherBloc());
  gh.lazySingleton<CachedCredentialsRepositoryInterface>(
      () => MockCachedUserRepository(),
      registerFor: {_test});
  gh.lazySingleton<CheckNotification>(() => MockCheckNotification(),
      registerFor: {_test});
  gh.factory<CommentActorBloc>(() => CommentActorBloc());
  gh.factory<CommentFormBloc>(() => CommentFormBloc());
  gh.lazySingleton<CommentRepositoryInterface>(
      () => DevelopmentCommentRepository(),
      registerFor: {_dev});
  gh.lazySingleton<CommentRepositoryInterface>(
      () => ProductionCommentRepository(),
    registerFor: {_prod});
  gh.lazySingleton<CommentRepositoryInterface>(() => MockCommentRepository(),
    registerFor: {_test});
  gh.factory<CommentWatcherBloc>(() => CommentWatcherBloc());
  gh.lazySingleton<CoreRepositoryInterface>(() => DevelopmentCoreRepository(),
    registerFor: {_dev});
  gh.lazySingleton<CoreRepositoryInterface>(() => ProductionCoreRepository(),
    registerFor: {_prod});
  gh.lazySingleton<CoreRepositoryInterface>(() => MockCoreRepository(),
    registerFor: {_test});
  gh.lazySingleton<CreateAchievement>(
      () => CreateAchievement(g<AchievementRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<CreateAchievement>(() => MockCreateAchievement(),
    registerFor: {_test});
  gh.lazySingleton<CreateExperience>(() => MockCreateExperience(),
    registerFor: {_test});
  gh.lazySingleton<CreateObjectives>(() => CreateObjectives(),
    registerFor: {_dev, _prod});
  gh.lazySingleton<CreateObjectives>(() => MockCreateObjectives(),
    registerFor: {_test});
  gh.lazySingleton<CreateTag>(() => MockCreateTag(), registerFor: {_test});
  gh.lazySingleton<Cypher>(() => Cypher(), registerFor: {_prod});
  gh.lazySingleton<DeleteAchievement>(
      () => DeleteAchievement(g<AchievementRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<DeleteAchievement>(() => MockDeleteAchievement(),
    registerFor: {_test});
  gh.lazySingleton<DeleteCache>(() => DeleteCache(g<CoreRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<DeleteCache>(() => MockDeleteCache(), registerFor: {_test});
  gh.lazySingleton<DeleteComment>(
      () => DeleteComment(g<CommentRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<DeleteComment>(() => MockDeleteComment(),
    registerFor: {_test});
  gh.lazySingleton<DeleteExperience>(() => MockDeleteExperience(),
    registerFor: {_test});
  gh.lazySingleton<DeleteNotification>(() => MockDeleteNotification(),
    registerFor: {_test});
  gh.lazySingleton<DeleteTag>(() => MockDeleteTag(), registerFor: {_test});
  gh.lazySingleton<DeleteUser>(() => MockDeleteUser(), registerFor: {_test});
  gh.lazySingleton<DeleteUserNotifications>(() => MockDeleteUserNotifications(),
    registerFor: {_test});
  gh.lazySingleton<DismissExperienceFromLog>(
      () => MockDismissExperienceFromLog(),
    registerFor: {_test});
  gh.lazySingleton<DismissTagFromInterests>(() => MockDismissTagFromInterests(),
    registerFor: {_test});
  gh.lazySingleton<EditAchievement>(
      () => EditAchievement(g<AchievementRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<EditAchievement>(() => MockEditAchievement(),
    registerFor: {_test});
  gh.lazySingleton<EditComment>(() => MockEditComment(), registerFor: {_test});
  gh.lazySingleton<EditComment>(
      () => EditComment(g<CommentRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<EditExperience>(() => MockEditExperience(),
    registerFor: {_test});
  gh.lazySingleton<EditTag>(() => MockEditTag(), registerFor: {_test});
  gh.lazySingleton<EditUser>(() => MockEditUser(), registerFor: {_test});
  gh.factory<ExperienceCardActorBloc>(() => ExperienceCardActorBloc());
  gh.factory<ExperienceCardLikeCheckBloc>(() => ExperienceCardLikeCheckBloc());
  gh.factory<ExperienceFinishActorBloc>(() => ExperienceFinishActorBloc());
  gh.factory<ExperienceLikeActorBloc>(() => ExperienceLikeActorBloc());
  gh.factory<ExperienceLogActorBloc>(() => ExperienceLogActorBloc());
  gh.lazySingleton<ExperienceLogRepositoryInterface>(
      () => ProductionExperienceLogRepository(),
    registerFor: {_prod});
  gh.lazySingleton<ExperienceLogRepositoryInterface>(
      () => MockExperienceLogRepository(),
    registerFor: {_test});
  gh.lazySingleton<ExperienceLogRepositoryInterface>(
      () => DevelopmentExperienceLogRepository(),
    registerFor: {_dev});
  gh.factory<ExperienceLogWatcherBloc>(() => ExperienceLogWatcherBloc());
  gh.factory<ExperienceManagementActorBloc>(
      () => ExperienceManagementActorBloc());
  gh.factory<ExperienceManagementFormBloc>(
      () => ExperienceManagementFormBloc());
  gh.lazySingleton<ExperienceManagementRepositoryInterface>(
      () => ProductionExperienceManagementRepository(),
    registerFor: {_prod});
  gh.lazySingleton<ExperienceManagementRepositoryInterface>(
      () => DevelopmentExperienceManagementRepository(),
    registerFor: {_dev});
  gh.lazySingleton<ExperienceManagementRepositoryInterface>(
      () => MockExperienceManagementRepository(),
    registerFor: {_test});
  gh.factory<ExperienceNavigationActorBloc>(
      () => ExperienceNavigationActorBloc());
  gh.lazySingleton<ExperienceNavigationRepositoryInterface>(
      () => MockExperienceNavigationRepository(),
    registerFor: {_test});
  gh.lazySingleton<ExperienceNavigationRepositoryInterface>(
      () => ProductionExperienceNavigationRepository(),
    registerFor: {_prod});
  gh.lazySingleton<ExperienceNavigationRepositoryInterface>(
      () => DevelopmentExperienceNavigationRepository(),
    registerFor: {_dev});
  gh.factory<ExperienceNavigationWatcherBloc>(
      () => ExperienceNavigationWatcherBloc());
  gh.lazySingleton<FillFeed>(() => MockFillFeed(), registerFor: {_test});
  gh.lazySingleton<FillObjectiveTracker>(() => FillObjectiveTracker(),
    registerFor: {_dev, _prod});
  gh.lazySingleton<FillObjectiveTracker>(() => MockFillObjectiveTracker(),
    registerFor: {_test});
  gh.lazySingleton<FinishExperience>(() => MockFinishExperience(),
    registerFor: {_test});
  gh.lazySingleton<FinishExperience>(
      () => FinishExperience(g<ExperienceNavigationRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.factory<FollowActorBloc>(() => FollowActorBloc());
  gh.lazySingleton<FollowUser>(() => MockFollowUser(), registerFor: {_test});
  gh.factory<FollowingWatcherBloc>(() => FollowingWatcherBloc());
  gh.lazySingleton<GeoLocationRepositoryInterface>(
      () => MockGeoLocationRepository(),
    registerFor: {_test});
  gh.lazySingleton<GeoLocationRepositoryInterface>(
      () => ProductionGeoLocationRepository(),
      registerFor: {_prod});
  gh.lazySingleton<GeoLocationRepositoryInterface>(
      () => DevelopmentGeoLocationRepository(),
      registerFor: {_dev});
  gh.lazySingleton<GetAchievement>(() => MockGetAchievement(),
      registerFor: {_test});
  gh.lazySingleton<GetAchievement>(
      () => GetAchievement(g<AchievementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<GetAllAchievements>(() => MockGetAllAchievements(),
      registerFor: {_test});
  gh.lazySingleton<GetAllAchievements>(
      () => GetAllAchievements(g<AchievementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<GetAllTags>(() => MockGetAllTags(), registerFor: {_test});
  gh.lazySingleton<GetCachedUser>(() => MockGetCachedUser(),
      registerFor: {_test});
  gh.lazySingleton<GetCachedUser>(
      () => GetCachedUser(g<CachedCredentialsRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<GetCurrentLocation>(
      () => GetCurrentLocation(g<GeoLocationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<GetCurrentLocation>(() => MockGetCurrentLocation(),
      registerFor: {_test});
  gh.lazySingleton<GetExperience>(
      () => GetExperience(g<ExperienceManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<GetExperience>(() => MockGetExperience(),
    registerFor: {_test});
  gh.lazySingleton<GetExperienceComments>(
      () => GetExperienceComments(g<CommentRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<GetExperienceComments>(() => MockGetExperienceComments(),
    registerFor: {_test});
  gh.lazySingleton<GetLoggedInUser>(
      () => GetLoggedInUser(g<AuthenticationRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<GetLoggedInUser>(() => MockGetLoggedInUser(),
    registerFor: {_test});
  gh.lazySingleton<GetTag>(() => MockGetTag(), registerFor: {_test});
  gh.lazySingleton<GetTagCreator>(() => MockGetTagCreator(),
    registerFor: {_test});
  gh.lazySingleton<GetTagsByCreator>(() => MockGetTagsByCreator(),
    registerFor: {_test});
  gh.lazySingleton<GetUserAchievements>(() => MockGetUserAchievements(),
    registerFor: {_test});
  gh.lazySingleton<GetUserAchievements>(
      () => GetUserAchievements(g<AchievementRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<GetUserComments>(
      () => GetUserComments(g<CommentRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<GetUserComments>(() => MockGetUserComments(),
    registerFor: {_test});
  gh.lazySingleton<IsLoggedInUser>(() => IsLoggedInUser(),
    registerFor: {_dev, _prod});
  gh.lazySingleton<IsLoggedInUser>(() => MockIsLoggedInUser(),
    registerFor: {_test});
  gh.lazySingleton<LikeExperience>(
      () => LikeExperience(g<ExperienceNavigationRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<LikeExperience>(() => MockLikeExperience(),
    registerFor: {_test});
  gh.lazySingleton<LoadBlockedUsers>(() => MockLoadBlockedUsers(),
      registerFor: {_test});
  gh.lazySingleton<LoadExperiencesCreated>(() => MockLoadExperiencesCreated(),
      registerFor: {_test});
  gh.lazySingleton<LoadExperiencesDone>(() => MockLoadExperiencesDone(),
      registerFor: {_test});
  gh.lazySingleton<LoadExperiencesLiked>(() => MockLoadExperiencesLiked(),
      registerFor: {_test});
  gh.lazySingleton<LoadFollowedUsers>(() => MockLoadFollowedUsers(),
      registerFor: {_test});
  gh.lazySingleton<LoadFollowingUsers>(() => MockLoadFollowingUsers(),
      registerFor: {_test});
  gh.lazySingleton<LoadNotifications>(() => MockLoadNotifications(),
      registerFor: {_test});
  gh.lazySingleton<LoadSurroundingExperiences>(
      () => LoadSurroundingExperiences(
      g<ExperienceNavigationRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<LoadSurroundingExperiences>(
      () => MockLoadSurroundingExperiences(),
    registerFor: {_test});
  gh.lazySingleton<LoadUser>(() => MockLoadUser(), registerFor: {_test});
  gh.lazySingleton<LoadUserAchievements>(() => MockLoadUserAchievements(),
    registerFor: {_test});
  gh.lazySingleton<LoadUserInterests>(() => MockLoadUserInterests(),
    registerFor: {_test});
  gh.lazySingleton<LoadUserLog>(() => MockLoadUserLog(), registerFor: {_test});
  gh.lazySingleton<LoadUserLog>(
      () => LoadUserLog(g<ExperienceLogRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<LocalOptionsRepositoryInterface>(
      () => ProductionLocalOptionsRepository(),
    registerFor: {_prod});
  gh.lazySingleton<LocalOptionsRepositoryInterface>(
      () => DevelopmentLocalOptionsRepository(),
    registerFor: {_dev});
  gh.lazySingleton<LocalOptionsRepositoryInterface>(
      () => MockLocalOptionsRepository(),
    registerFor: {_test});
  gh.lazySingleton<LogIn>(() => LogIn(g<AuthenticationRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<LogIn>(() => MockLogIn(), registerFor: {_test});
  gh.factory<LogInFormBloc>(() => LogInFormBloc());
  gh.lazySingleton<LogInGoogle>(() => MockLogInGoogle(), registerFor: {_test});
  gh.lazySingleton<LogInGoogle>(
      () => LogInGoogle(g<AuthenticationRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<LogOut>(() => MockLogOut(), registerFor: {_test});
  gh.lazySingleton<LogOut>(() => LogOut(g<AuthenticationRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<MainFeedRepositoryInterface>(() => MockMainFeedRepository(),
    registerFor: {_test});
  gh.lazySingleton<MainFeedRepositoryInterface>(
      () => ProductionMainFeedRepository(),
    registerFor: {_prod});
  gh.lazySingleton<MainFeedRepositoryInterface>(
      () => DevelopmentMainFeedRepository(),
    registerFor: {_dev});
  gh.factory<MainFeedWatcherBloc>(() => MainFeedWatcherBloc());
  gh.factory<NavigationActorBloc>(() => NavigationActorBloc());
  gh.lazySingleton<NoParams>(() => NoParams());
  gh.factory<NotificationActorBloc>(() => NotificationActorBloc());
  gh.lazySingleton<NotificationRepositoryInterface>(
      () => ProductionNotificationRepository(),
    registerFor: {_prod});
  gh.lazySingleton<NotificationRepositoryInterface>(
      () => DevelopmentNotificationRepository(),
    registerFor: {_dev});
  gh.lazySingleton<NotificationRepositoryInterface>(
      () => MockNotificationRepository(),
    registerFor: {_test});
  gh.factory<NotificationsWatcherBloc>(() => NotificationsWatcherBloc());
  gh.factory<ObjectivesTrackerBloc>(() => ObjectivesTrackerBloc());
  gh.factory<OptionsFormBloc>(() => OptionsFormBloc());
  gh.lazySingleton<PostComment>(() => MockPostComment(), registerFor: {_test});
  gh.lazySingleton<PostComment>(
      () => PostComment(g<CommentRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.factory<ProfileAchievementsWatcherBloc>(
      () => ProfileAchievementsWatcherBloc());
  gh.factory<ProfileEditingFormBloc>(() => ProfileEditingFormBloc());
  gh.factory<ProfileExperiencesWatcherBloc>(
      () => ProfileExperiencesWatcherBloc());
  gh.factory<ProfileInterestsWatcherBloc>(() => ProfileInterestsWatcherBloc());
  gh.lazySingleton<ProfileRepositoryInterface>(
      () => DevelopmentProfileRepository(),
    registerFor: {_dev});
  gh.lazySingleton<ProfileRepositoryInterface>(() => MockProfileRepository(),
    registerFor: {_test});
  gh.lazySingleton<ProfileRepositoryInterface>(
      () => ProductionProfileRepository(),
    registerFor: {_prod});
  gh.factory<ProfileUsersWatcherBloc>(() => ProfileUsersWatcherBloc());
  gh.factory<ProfileWatcherBloc>(() => ProfileWatcherBloc());
  gh.lazySingleton<PublicKeyRepositoryInterface>(
      () => MockPublicKeyRepository(),
    registerFor: {_test});
  gh.lazySingleton<RateDifficulty>(() => MockRateDifficulty(),
    registerFor: {_test});
  gh.lazySingleton<RateDifficulty>(
      () => RateDifficulty(g<ExperienceNavigationRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.factory<RateExperienceDifficultyActorBloc>(
      () => RateExperienceDifficultyActorBloc());
  gh.lazySingleton<Register>(
      () => Register(g<AuthenticationRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<Register>(() => MockRegister(), registerFor: {_test});
  gh.factory<RegistrationFormBloc>(() => RegistrationFormBloc());
  gh.lazySingleton<RemoteOptionsRepositoryInterface>(
      () => ProductionRemoteOptionsRepository(),
    registerFor: {_prod});
  gh.lazySingleton<RemoteOptionsRepositoryInterface>(
      () => DevelopmentRemoteOptionsRepository(),
    registerFor: {_dev});
  gh.lazySingleton<RemoteOptionsRepositoryInterface>(
      () => MockRemoteOptionsRepository(),
    registerFor: {_test});
  gh.lazySingleton<RemoveExperienceLiked>(
      () => RemoveExperienceLiked(g<ProfileRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<RemoveExperienceLiked>(() => MockRemoveExperienceLiked(),
    registerFor: {_test});
  gh.lazySingleton<RewardUser>(() => MockRewardUser(), registerFor: {_test});
  gh.lazySingleton<RewardUser>(
      () => RewardUser(g<ExperienceNavigationRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<SaveGlobalOptions>(
      () => SaveGlobalOptions(g<RemoteOptionsRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<SaveGlobalOptions>(() => MockSaveGlobalOptions(),
    registerFor: {_test});
  gh.factory<SearchByNameFormBloc>(() => SearchByNameFormBloc());
  gh.lazySingleton<SearchExperiencesByDifficulty>(
      () => MockSearchExperiencesByDifficulty(),
      registerFor: {_test});
  gh.factory<SearchExperiencesByDifficultyBloc>(
      () => SearchExperiencesByDifficultyBloc());
  gh.lazySingleton<SearchExperiencesByName>(() => MockSearchExperiencesByName(),
    registerFor: {_test});
  gh.factory<SearchExperiencesByNameWatcherBloc>(
      () => SearchExperiencesByNameWatcherBloc());
  gh.lazySingleton<SearchExperiencesByTags>(() => MockSearchExperiencesByTags(),
    registerFor: {_test});
  gh.factory<SearchExperiencesByTagsBloc>(() => SearchExperiencesByTagsBloc());
  gh.lazySingleton<SearchRepositoryInterface>(
      () => ProductionSearchRepository(),
    registerFor: {_prod});
  gh.lazySingleton<SearchRepositoryInterface>(() => MockSearchRepository(),
    registerFor: {_test});
  gh.lazySingleton<SearchRepositoryInterface>(
      () => DevelopmentSearchRepository(),
    registerFor: {_dev});
  gh.lazySingleton<SearchTagsByName>(
      () => SearchTagsByName(g<SearchRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<SearchTagsByName>(() => MockSearchTagsByName(),
    registerFor: {_test});
  gh.factory<SearchTagsByNameWatcherBloc>(() => SearchTagsByNameWatcherBloc());
  gh.lazySingleton<SearchUsersByName>(
      () => SearchUsersByName(g<SearchRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<SearchUsersByName>(() => MockSearchUsersByName(),
    registerFor: {_test});
  gh.factory<SearchUsersByNameWatcherBloc>(
      () => SearchUsersByNameWatcherBloc());
  gh.lazySingleton<SearchUsersByUsername>(() => MockSearchUsersByUsername(),
    registerFor: {_test});
  gh.lazySingleton<SearchUsersByUsername>(
      () => SearchUsersByUsername(g<SearchRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<SendNotification>(
      () => SendNotification(g<NotificationRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<SendNotification>(() => MockSendNotification(),
    registerFor: {_test});
  gh.factory<TagCardActorBloc>(() => TagCardActorBloc());
  gh.factory<TagCardCheckBloc>(() => TagCardCheckBloc());
  gh.lazySingleton<TagCoreRepositoryInterface>(() => MockTagRepository(),
    registerFor: {_test});
  gh.lazySingleton<TagCoreRepositoryInterface>(() => DevelopmentTagRepository(),
    registerFor: {_dev});
  gh.lazySingleton<TagCoreRepositoryInterface>(() => ProductionTagRepository(),
    registerFor: {_prod});
  gh.factory<TagManagementActorBloc>(() => TagManagementActorBloc());
  gh.factory<TagManagementFormBloc>(() => TagManagementFormBloc());
  gh.lazySingleton<TagManagementRepositoryInterface>(
      () => MockTagManagementRepository(),
    registerFor: {_test});
  gh.lazySingleton<TagManagementRepositoryInterface>(
      () => DevelopmentTagManagementRepository(),
    registerFor: {_dev});
  gh.lazySingleton<TagManagementRepositoryInterface>(
      () => ProductionTagManagementRepository(),
    registerFor: {_prod});
  gh.factory<TagManagementWatcherBloc>(() => TagManagementWatcherBloc());
  gh.factory<TagSelectorBloc>(() => TagSelectorBloc());
  gh.lazySingleton<UnBlockUser>(() => MockUnBlockUser(), registerFor: {_test});
  gh.lazySingleton<UnBlockUser>(
      () => UnBlockUser(g<ProfileRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<UnFollowUser>(() => MockUnFollowUser(),
    registerFor: {_test});
  gh.lazySingleton<UnFollowUser>(
      () => UnFollowUser(g<ProfileRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.factory<UserActorBloc>(() => UserActorBloc());
  gh.lazySingleton<AddExperienceToLog>(
      () => AddExperienceToLog(g<ExperienceLogRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<AddTagToInterests>(
      () => AddTagToInterests(g<TagCoreRepositoryInterface>()),
    registerFor: {_dev, _prod});
  gh.lazySingleton<BlockUser>(() => BlockUser(g<ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<CheckNotification>(
      () => CheckNotification(g<NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<CreateExperience>(
      () => CreateExperience(g<ExperienceManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<CreateTag>(
      () => CreateTag(g<TagManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<DeleteExperience>(
      () => DeleteExperience(g<ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<DeleteNotification>(
      () => DeleteNotification(g<NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<DeleteTag>(
      () => DeleteTag(g<TagManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<DeleteUser>(
      () => DeleteUser(g<RemoteOptionsRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<DeleteUserNotifications>(
      () => DeleteUserNotifications(g<NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<DismissExperienceFromLog>(
      () => DismissExperienceFromLog(g<ExperienceLogRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<DismissTagFromInterests>(
      () => DismissTagFromInterests(g<TagCoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<EditExperience>(
      () => EditExperience(g<ExperienceManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<EditTag>(
      () => EditTag(g<TagManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<EditUser>(() => EditUser(g<ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<FillFeed>(() => FillFeed(g<MainFeedRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<FollowUser>(
      () => FollowUser(g<ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<GetAllTags>(
      () => GetAllTags(g<TagCoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<GetPublicKey>(
      () => GetPublicKey(g<PublicKeyRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<GetTag>(() => GetTag(g<TagManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<GetTagCreator>(
      () => GetTagCreator(g<TagCoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<GetTagsByCreator>(
      () => GetTagsByCreator(g<TagCoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<LoadBlockedUsers>(
      () => LoadBlockedUsers(g<ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<LoadExperiencesCreated>(
      () => LoadExperiencesCreated(g<ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<LoadExperiencesDone>(
      () => LoadExperiencesDone(g<ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<LoadExperiencesLiked>(
      () => LoadExperiencesLiked(g<ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<LoadFollowedUsers>(
      () => LoadFollowedUsers(g<ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<LoadFollowingUsers>(
      () => LoadFollowingUsers(g<ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<LoadNotifications>(
      () => LoadNotifications(g<NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<LoadUser>(() => LoadUser(g<ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<LoadUserAchievements>(
      () => LoadUserAchievements(g<ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<LoadUserInterests>(
      () => LoadUserInterests(g<ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<SearchExperiencesByDifficulty>(
      () => SearchExperiencesByDifficulty(g<SearchRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<SearchExperiencesByName>(
      () => SearchExperiencesByName(g<SearchRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<SearchExperiencesByTags>(
      () => SearchExperiencesByTags(g<SearchRepositoryInterface>()),
      registerFor: {_dev, _prod});
}
