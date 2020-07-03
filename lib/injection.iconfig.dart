// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:worldon/application/achievement_management/achievement_management_actor/achievement_management_actor_bloc.dart';
import 'package:worldon/application/achievement_management/achievement_management_form/achievement_management_form_bloc.dart';
import 'package:worldon/application/achievement_management/achievement_management_watcher/achievement_management_watcher_bloc.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/application/authentication/log_in_form/log_in_form_bloc.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';
import 'package:worldon/application/comments/comment_actor/comment_actor_bloc.dart';
import 'package:worldon/application/comments/comment_form/comment_form_bloc.dart';
import 'package:worldon/application/comments/comment_watcher/comment_watcher_bloc.dart';
import 'package:worldon/application/core/experience_card_actor/experience_card_actor_bloc.dart';
import 'package:worldon/application/experience_log/experience_log_actor/experience_log_actor_bloc.dart';
import 'package:worldon/application/experience_log/experience_log_watcher/experience_log_watcher_bloc.dart';
import 'package:worldon/application/experience_management/experience_management_actor/experience_management_actor_bloc.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/core/util/cypher.dart';
import 'package:worldon/data/achievement_management/repository/development_achievement_repository.dart';
import 'package:worldon/data/achievement_management/repository/production_achievement_repository.dart';
import 'package:worldon/data/authentication/repository/development_authentication_repository.dart';
import 'package:worldon/data/authentication/repository/production_authentication_repository.dart';
import 'package:worldon/data/comments/repository/development_comment_repository.dart';
import 'package:worldon/data/comments/repository/production_comment_repository.dart';
import 'package:worldon/data/core/repository/development_core_repository.dart';
import 'package:worldon/data/core/repository/development_geo_location_repository.dart';
import 'package:worldon/data/core/repository/production_core_repository.dart';
import 'package:worldon/data/core/repository/production_geo_location_repository.dart';
import 'package:worldon/data/experience_log/repository/development_experience_log_repository.dart';
import 'package:worldon/data/experience_log/repository/production_experience_log_repository.dart';
import 'package:worldon/data/experience_management/repository/development_experience_management_repository.dart';
import 'package:worldon/data/experience_management/repository/production_experience_management_repository.dart';
import 'package:worldon/data/experience_navigation/repository/development_experience_navigation_repository.dart';
import 'package:worldon/data/experience_navigation/repository/production_experience_navigation_repository.dart';
import 'package:worldon/data/main_feed/repository/development_main_feed_repository.dart';
import 'package:worldon/data/main_feed/repository/production_main_feed_repository.dart';
import 'package:worldon/data/notifications/repository/development_notification_repository.dart';
import 'package:worldon/data/notifications/repository/production_notification_repository.dart';
import 'package:worldon/data/options/repository/development_local_options_repository.dart';
import 'package:worldon/data/options/repository/development_remote_options_repository.dart';
import 'package:worldon/data/options/repository/production_local_options_repository.dart';
import 'package:worldon/data/options/repository/production_remote_options_repository.dart';
import 'package:worldon/data/profile/repository/development_profile_repository.dart';
import 'package:worldon/data/profile/repository/production_profile_repository.dart';
import 'package:worldon/data/search/repository/development_search_repository.dart';
import 'package:worldon/data/search/repository/production_search_repository.dart';
import 'package:worldon/data/tag_management/repository/development_tag_management_repository.dart';
import 'package:worldon/data/tag_management/repository/development_tag_repository.dart';
import 'package:worldon/data/tag_management/repository/production_tag_management_repository.dart';
import 'package:worldon/data/tag_management/repository/production_tag_repository.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository_interface.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository_mock.dart';
import 'package:worldon/domain/achievement_management/use_case/award_achievement.dart';
import 'package:worldon/domain/achievement_management/use_case/create_achievement.dart';
import 'package:worldon/domain/achievement_management/use_case/delete_achievement.dart';
import 'package:worldon/domain/achievement_management/use_case/edit_achievement.dart';
import 'package:worldon/domain/achievement_management/use_case/get_achievement.dart';
import 'package:worldon/domain/achievement_management/use_case/get_all_achievements.dart';
import 'package:worldon/domain/achievement_management/use_case/get_user_achievements.dart';
import 'package:worldon/domain/achievement_management/use_case/use_case_mocks.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository_interface.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository_mock.dart';
import 'package:worldon/domain/authentication/repository/cached_credentials_repository_interface.dart';
import 'package:worldon/domain/authentication/repository/cached_user_repository_mock.dart';
import 'package:worldon/domain/authentication/repository/public_key_repository_interface.dart';
import 'package:worldon/domain/authentication/repository/public_key_repository_mock.dart';
import 'package:worldon/domain/authentication/use_case/get_cached_user.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/authentication/use_case/get_public_key.dart';
import 'package:worldon/domain/authentication/use_case/log_in.dart';
import 'package:worldon/domain/authentication/use_case/log_in_google.dart';
import 'package:worldon/domain/authentication/use_case/log_out.dart';
import 'package:worldon/domain/authentication/use_case/register.dart';
import 'package:worldon/domain/authentication/use_case/use_case_mocks.dart';
import 'package:worldon/domain/comments/repository/comment_repository_interface.dart';
import 'package:worldon/domain/comments/repository/comment_repository_mock.dart';
import 'package:worldon/domain/comments/use_case/delete_comment.dart';
import 'package:worldon/domain/comments/use_case/edit_comment.dart';
import 'package:worldon/domain/comments/use_case/get_experience_comments.dart';
import 'package:worldon/domain/comments/use_case/get_user_comments.dart';
import 'package:worldon/domain/comments/use_case/post_comment.dart';
import 'package:worldon/domain/comments/use_case/use_case_mocks.dart';
import 'package:worldon/domain/core/repository/core_repository_interface.dart';
import 'package:worldon/domain/core/repository/core_repository_mock.dart';
import 'package:worldon/domain/core/repository/geo_location_repository_interface.dart';
import 'package:worldon/domain/core/repository/geo_location_repository_mock.dart';
import 'package:worldon/domain/core/use_case/delete_cache.dart';
import 'package:worldon/domain/core/use_case/get_current_location.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/use_case/use_case_mocks.dart';
import 'package:worldon/domain/experience_log/repository/experience_log_repository_interface.dart';
import 'package:worldon/domain/experience_log/repository/experience_log_repository_mock.dart';
import 'package:worldon/domain/experience_log/use_case/add_experience_to_log.dart';
import 'package:worldon/domain/experience_log/use_case/dismiss_experience_from_log.dart';
import 'package:worldon/domain/experience_log/use_case/load_user_log.dart';
import 'package:worldon/domain/experience_log/use_case/use_case_mocks.dart';
import 'package:worldon/domain/experience_management/repository/experience_management_repository_interface.dart';
import 'package:worldon/domain/experience_management/repository/experience_management_repository_mock.dart';
import 'package:worldon/domain/experience_management/use_case/create_experience.dart';
import 'package:worldon/domain/experience_management/use_case/create_objectives.dart';
import 'package:worldon/domain/experience_management/use_case/edit_experience.dart';
import 'package:worldon/domain/experience_management/use_case/get_experience.dart';
import 'package:worldon/domain/experience_management/use_case/use_case_mocks.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository_interface.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository_mock.dart';
import 'package:worldon/domain/experience_navigation/use_case/finish_experience.dart';
import 'package:worldon/domain/experience_navigation/use_case/like_experience.dart';
import 'package:worldon/domain/experience_navigation/use_case/load_surrounding_experiences.dart';
import 'package:worldon/domain/experience_navigation/use_case/rate_difficulty.dart';
import 'package:worldon/domain/experience_navigation/use_case/reward_user.dart';
import 'package:worldon/domain/experience_navigation/use_case/use_case_mocks.dart';
import 'package:worldon/domain/main_feed/repository/main_feed_repository_interface.dart';
import 'package:worldon/domain/main_feed/repository/main_feed_repository_mock.dart';
import 'package:worldon/domain/main_feed/use_case/fill_feed.dart';
import 'package:worldon/domain/main_feed/use_case/use_case_mocks.dart';
import 'package:worldon/domain/notifications/repository/notification_repository_interface.dart';
import 'package:worldon/domain/notifications/repository/notification_repository_mock.dart';
import 'package:worldon/domain/notifications/use_case/check_notification.dart';
import 'package:worldon/domain/notifications/use_case/delete_user_notifications.dart';
import 'package:worldon/domain/notifications/use_case/load_notifications.dart';
import 'package:worldon/domain/notifications/use_case/send_notification.dart';
import 'package:worldon/domain/notifications/use_case/use_case_mocks.dart';
import 'package:worldon/domain/options/repository/local_options_repository_interface.dart';
import 'package:worldon/domain/options/repository/local_options_repository_mock.dart';
import 'package:worldon/domain/options/repository/remote_options_repository_interface.dart';
import 'package:worldon/domain/options/repository/remote_options_repository_mock.dart';
import 'package:worldon/domain/options/use_case/delete_user.dart';
import 'package:worldon/domain/options/use_case/save_global_options.dart';
import 'package:worldon/domain/options/use_case/use_case_mocks.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';
import 'package:worldon/domain/profile/repository/profile_repository_mock.dart';
import 'package:worldon/domain/profile/use_case/block_user.dart';
import 'package:worldon/domain/profile/use_case/delete_experience.dart';
import 'package:worldon/domain/profile/use_case/edit_user.dart';
import 'package:worldon/domain/profile/use_case/follow_user.dart';
import 'package:worldon/domain/profile/use_case/load_blocked_users.dart';
import 'package:worldon/domain/profile/use_case/load_experiences_created.dart';
import 'package:worldon/domain/profile/use_case/load_experiences_done.dart';
import 'package:worldon/domain/profile/use_case/load_experiences_liked.dart';
import 'package:worldon/domain/profile/use_case/load_followed_users.dart';
import 'package:worldon/domain/profile/use_case/load_following_users.dart';
import 'package:worldon/domain/profile/use_case/load_user.dart';
import 'package:worldon/domain/profile/use_case/load_user_achievements.dart';
import 'package:worldon/domain/profile/use_case/load_user_interests.dart';
import 'package:worldon/domain/profile/use_case/remove_experience_liked.dart';
import 'package:worldon/domain/profile/use_case/un_block_user.dart';
import 'package:worldon/domain/profile/use_case/un_follow_user.dart';
import 'package:worldon/domain/profile/use_case/use_case_mocks.dart';
import 'package:worldon/domain/search/repository/search_repository_interface.dart';
import 'package:worldon/domain/search/repository/search_repository_mock.dart';
import 'package:worldon/domain/search/use_case/search_experiences_by_difficulty.dart';
import 'package:worldon/domain/search/use_case/search_experiences_by_name.dart';
import 'package:worldon/domain/search/use_case/search_experiences_by_tags.dart';
import 'package:worldon/domain/search/use_case/search_tags_by_name.dart';
import 'package:worldon/domain/search/use_case/search_users_by_name.dart';
import 'package:worldon/domain/search/use_case/search_users_by_username.dart';
import 'package:worldon/domain/search/use_case/use_case_mocks.dart';
import 'package:worldon/domain/tag_management/repository/tag_management_repository_interface.dart';
import 'package:worldon/domain/tag_management/repository/tag_management_repository_mock.dart';
import 'package:worldon/domain/tag_management/repository/tag_repository_interface.dart';
import 'package:worldon/domain/tag_management/repository/tag_repository_mock.dart';
import 'package:worldon/domain/tag_management/use_case/create_tag.dart';
import 'package:worldon/domain/tag_management/use_case/delete_tag.dart';
import 'package:worldon/domain/tag_management/use_case/edit_tag.dart';
import 'package:worldon/domain/tag_management/use_case/get_all_tags.dart';
import 'package:worldon/domain/tag_management/use_case/get_tag.dart';
import 'package:worldon/domain/tag_management/use_case/get_tag_creator.dart';
import 'package:worldon/domain/tag_management/use_case/get_tags_by_creator.dart';
import 'package:worldon/domain/tag_management/use_case/use_case_mocks.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerFactory<AchievementManagementActorBloc>(
      () => AchievementManagementActorBloc());
  g.registerFactory<AchievementManagementFormBloc>(
      () => AchievementManagementFormBloc());
  g.registerFactory<AchievementManagementWatcherBloc>(() => AchievementManagementWatcherBloc());
  g.registerFactory<AuthenticationBloc>(() => AuthenticationBloc());
  g.registerFactory<CommentActorBloc>(() => CommentActorBloc());
  g.registerFactory<CommentFormBloc>(() => CommentFormBloc());
  g.registerFactory<CommentWatcherBloc>(() => CommentWatcherBloc());
  g.registerFactory<ExperienceCardActorBloc>(() => ExperienceCardActorBloc());
  g.registerFactory<ExperienceLogActorBloc>(() => ExperienceLogActorBloc());
  g.registerFactory<ExperienceLogWatcherBloc>(() => ExperienceLogWatcherBloc());
  g.registerFactory<ExperienceManagementActorBloc>(() => ExperienceManagementActorBloc());
  g.registerFactory<ExperienceManagementFormBloc>(() => ExperienceManagementFormBloc());
  g.registerFactory<LogInFormBloc>(() => LogInFormBloc());
  g.registerFactory<RegistrationFormBloc>(() => RegistrationFormBloc());

  //Register dev Dependencies --------
  if (environment == 'dev') {
    g.registerLazySingleton<AchievementRepositoryInterface>(
        () => DevelopmentAchievementRepository());
    g.registerLazySingleton<AuthenticationRepositoryInterface>(
        () => DevelopmentAuthenticationRepository());
    g.registerLazySingleton<CommentRepositoryInterface>(
        () => DevelopmentCommentRepository());
    g.registerLazySingleton<CoreRepositoryInterface>(
        () => DevelopmentCoreRepository());
    g.registerLazySingleton<ExperienceLogRepositoryInterface>(
        () => DevelopmentExperienceLogRepository());
    g.registerLazySingleton<ExperienceManagementRepositoryInterface>(
        () => DevelopmentExperienceManagementRepository());
    g.registerLazySingleton<ExperienceNavigationRepositoryInterface>(
        () => DevelopmentExperienceNavigationRepository());
    g.registerLazySingleton<GeoLocationRepositoryInterface>(
        () => DevelopmentGeoLocationRepository());
    g.registerLazySingleton<LocalOptionsRepositoryInterface>(
        () => DevelopmentLocalOptionsRepository());
    g.registerLazySingleton<MainFeedRepositoryInterface>(
        () => DevelopmentMainFeedRepository());
    g.registerLazySingleton<NotificationRepositoryInterface>(
        () => DevelopmentNotificationRepository());
    g.registerLazySingleton<ProfileRepositoryInterface>(
        () => DevelopmentProfileRepository());
    g.registerLazySingleton<RemoteOptionsRepositoryInterface>(
        () => DevelopmentRemoteOptionsRepository());
    g.registerLazySingleton<SearchRepositoryInterface>(
        () => DevelopmentSearchRepository());
    g.registerLazySingleton<TagCoreRepositoryInterface>(
        () => DevelopmentTagRepository());
    g.registerLazySingleton<TagManagementRepositoryInterface>(
        () => DevelopmentTagManagementRepository());
  }

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerLazySingleton<AchievementRepositoryInterface>(
        () => ProductionAchievementRepository());
    g.registerLazySingleton<AuthenticationRepositoryInterface>(
        () => ProductionAuthenticationRepository());
    g.registerLazySingleton<AwardAchievement>(
        () => AwardAchievement(g<AchievementRepositoryInterface>()));
    g.registerLazySingleton<CommentRepositoryInterface>(
        () => ProductionCommentRepository());
    g.registerLazySingleton<CoreRepositoryInterface>(
        () => ProductionCoreRepository());
    g.registerLazySingleton<CreateAchievement>(
        () => CreateAchievement(g<AchievementRepositoryInterface>()));
    g.registerLazySingleton<CreateObjectives>(() => CreateObjectives());
    g.registerLazySingleton<Cypher>(() => Cypher());
    g.registerLazySingleton<DeleteAchievement>(
        () => DeleteAchievement(g<AchievementRepositoryInterface>()));
    g.registerLazySingleton<DeleteCache>(
        () => DeleteCache(g<CoreRepositoryInterface>()));
    g.registerLazySingleton<DeleteComment>(
        () => DeleteComment(g<CommentRepositoryInterface>()));
    g.registerLazySingleton<EditAchievement>(
        () => EditAchievement(g<AchievementRepositoryInterface>()));
    g.registerLazySingleton<EditComment>(
        () => EditComment(g<CommentRepositoryInterface>()));
    g.registerLazySingleton<ExperienceLogRepositoryInterface>(
        () => ProductionExperienceLogRepository());
    g.registerLazySingleton<ExperienceManagementRepositoryInterface>(
        () => ProductionExperienceManagementRepository());
    g.registerLazySingleton<ExperienceNavigationRepositoryInterface>(
        () => ProductionExperienceNavigationRepository());
    g.registerLazySingleton<FinishExperience>(
        () => FinishExperience(g<ExperienceNavigationRepositoryInterface>()));
    g.registerLazySingleton<GeoLocationRepositoryInterface>(
        () => ProductionGeoLocationRepository());
    g.registerLazySingleton<GetAchievement>(
        () => GetAchievement(g<AchievementRepositoryInterface>()));
    g.registerLazySingleton<GetAllAchievements>(
        () => GetAllAchievements(g<AchievementRepositoryInterface>()));
    g.registerLazySingleton<GetCachedUser>(
        () => GetCachedUser(g<CachedCredentialsRepositoryInterface>()));
    g.registerLazySingleton<GetCurrentLocation>(
        () => GetCurrentLocation(g<GeoLocationRepositoryInterface>()));
    g.registerLazySingleton<GetExperience>(
        () => GetExperience(g<ExperienceManagementRepositoryInterface>()));
    g.registerLazySingleton<GetExperienceComments>(
        () => GetExperienceComments(g<CommentRepositoryInterface>()));
    g.registerLazySingleton<GetLoggedInUser>(
        () => GetLoggedInUser(g<AuthenticationRepositoryInterface>()));
    g.registerLazySingleton<GetUserAchievements>(
        () => GetUserAchievements(g<AchievementRepositoryInterface>()));
    g.registerLazySingleton<GetUserComments>(
        () => GetUserComments(g<CommentRepositoryInterface>()));
    g.registerLazySingleton<LikeExperience>(
        () => LikeExperience(g<ExperienceNavigationRepositoryInterface>()));
    g.registerLazySingleton<LoadSurroundingExperiences>(() =>
        LoadSurroundingExperiences(
            g<ExperienceNavigationRepositoryInterface>()));
    g.registerLazySingleton<LoadUserLog>(
        () => LoadUserLog(g<ExperienceLogRepositoryInterface>()));
    g.registerLazySingleton<LocalOptionsRepositoryInterface>(
        () => ProductionLocalOptionsRepository());
    g.registerLazySingleton<LogIn>(
        () => LogIn(g<AuthenticationRepositoryInterface>()));
    g.registerLazySingleton<LogInGoogle>(
        () => LogInGoogle(g<AuthenticationRepositoryInterface>()));
    g.registerLazySingleton<LogOut>(
        () => LogOut(g<AuthenticationRepositoryInterface>()));
    g.registerLazySingleton<MainFeedRepositoryInterface>(
        () => ProductionMainFeedRepository());
    g.registerLazySingleton<NotificationRepositoryInterface>(
        () => ProductionNotificationRepository());
    g.registerLazySingleton<PostComment>(
        () => PostComment(g<CommentRepositoryInterface>()));
    g.registerLazySingleton<ProfileRepositoryInterface>(
        () => ProductionProfileRepository());
    g.registerLazySingleton<RateDifficulty>(
        () => RateDifficulty(g<ExperienceNavigationRepositoryInterface>()));
    g.registerLazySingleton<Register>(
        () => Register(g<AuthenticationRepositoryInterface>()));
    g.registerLazySingleton<RemoteOptionsRepositoryInterface>(
        () => ProductionRemoteOptionsRepository());
    g.registerLazySingleton<RemoveExperienceLiked>(
        () => RemoveExperienceLiked(g<ProfileRepositoryInterface>()));
    g.registerLazySingleton<RewardUser>(
        () => RewardUser(g<ExperienceNavigationRepositoryInterface>()));
    g.registerLazySingleton<SaveGlobalOptions>(
        () => SaveGlobalOptions(g<RemoteOptionsRepositoryInterface>()));
    g.registerLazySingleton<SearchRepositoryInterface>(
        () => ProductionSearchRepository());
    g.registerLazySingleton<SearchTagsByName>(
        () => SearchTagsByName(g<SearchRepositoryInterface>()));
    g.registerLazySingleton<SearchUsersByName>(
        () => SearchUsersByName(g<SearchRepositoryInterface>()));
    g.registerLazySingleton<SearchUsersByUsername>(
        () => SearchUsersByUsername(g<SearchRepositoryInterface>()));
    g.registerLazySingleton<SendNotification>(
        () => SendNotification(g<NotificationRepositoryInterface>()));
    g.registerLazySingleton<TagCoreRepositoryInterface>(
        () => ProductionTagRepository());
    g.registerLazySingleton<TagManagementRepositoryInterface>(
        () => ProductionTagManagementRepository());
    g.registerLazySingleton<UnBlockUser>(
        () => UnBlockUser(g<ProfileRepositoryInterface>()));
    g.registerLazySingleton<UnFollowUser>(
        () => UnFollowUser(g<ProfileRepositoryInterface>()));
    g.registerLazySingleton<AddExperienceToLog>(
        () => AddExperienceToLog(g<ExperienceLogRepositoryInterface>()));
    g.registerLazySingleton<BlockUser>(
        () => BlockUser(g<ProfileRepositoryInterface>()));
    g.registerLazySingleton<CheckNotification>(
        () => CheckNotification(g<NotificationRepositoryInterface>()));
    g.registerLazySingleton<CreateExperience>(
        () => CreateExperience(g<ExperienceManagementRepositoryInterface>()));
    g.registerLazySingleton<CreateTag>(
        () => CreateTag(g<TagManagementRepositoryInterface>()));
    g.registerLazySingleton<DeleteExperience>(
        () => DeleteExperience(g<ProfileRepositoryInterface>()));
    g.registerLazySingleton<DeleteTag>(
        () => DeleteTag(g<TagManagementRepositoryInterface>()));
    g.registerLazySingleton<DeleteUser>(
        () => DeleteUser(g<RemoteOptionsRepositoryInterface>()));
    g.registerLazySingleton<DeleteUserNotifications>(
        () => DeleteUserNotifications(g<NotificationRepositoryInterface>()));
    g.registerLazySingleton<DismissExperienceFromLog>(
        () => DismissExperienceFromLog(g<ExperienceLogRepositoryInterface>()));
    g.registerLazySingleton<EditExperience>(
        () => EditExperience(g<ExperienceManagementRepositoryInterface>()));
    g.registerLazySingleton<EditTag>(
        () => EditTag(g<TagManagementRepositoryInterface>()));
    g.registerLazySingleton<EditUser>(
        () => EditUser(g<ProfileRepositoryInterface>()));
    g.registerLazySingleton<FillFeed>(
        () => FillFeed(g<MainFeedRepositoryInterface>()));
    g.registerLazySingleton<FollowUser>(
        () => FollowUser(g<ProfileRepositoryInterface>()));
    g.registerLazySingleton<GetAllTags>(
        () => GetAllTags(g<TagCoreRepositoryInterface>()));
    g.registerLazySingleton<GetPublicKey>(
        () => GetPublicKey(g<PublicKeyRepositoryInterface>()));
    g.registerLazySingleton<GetTag>(
        () => GetTag(g<TagManagementRepositoryInterface>()));
    g.registerLazySingleton<GetTagCreator>(
        () => GetTagCreator(g<TagCoreRepositoryInterface>()));
    g.registerLazySingleton<GetTagsByCreator>(
        () => GetTagsByCreator(g<TagCoreRepositoryInterface>()));
    g.registerLazySingleton<LoadBlockedUsers>(
        () => LoadBlockedUsers(g<ProfileRepositoryInterface>()));
    g.registerLazySingleton<LoadExperiencesCreated>(
        () => LoadExperiencesCreated(g<ProfileRepositoryInterface>()));
    g.registerLazySingleton<LoadExperiencesDone>(
        () => LoadExperiencesDone(g<ProfileRepositoryInterface>()));
    g.registerLazySingleton<LoadExperiencesLiked>(
        () => LoadExperiencesLiked(g<ProfileRepositoryInterface>()));
    g.registerLazySingleton<LoadFollowedUsers>(
        () => LoadFollowedUsers(g<ProfileRepositoryInterface>()));
    g.registerLazySingleton<LoadFollowingUsers>(
        () => LoadFollowingUsers(g<ProfileRepositoryInterface>()));
    g.registerLazySingleton<LoadNotifications>(
        () => LoadNotifications(g<NotificationRepositoryInterface>()));
    g.registerLazySingleton<LoadUser>(
        () => LoadUser(g<ProfileRepositoryInterface>()));
    g.registerLazySingleton<LoadUserAchievements>(
        () => LoadUserAchievements(g<ProfileRepositoryInterface>()));
    g.registerLazySingleton<LoadUserInterests>(
        () => LoadUserInterests(g<ProfileRepositoryInterface>()));
    g.registerLazySingleton<SearchExperiencesByDifficulty>(
        () => SearchExperiencesByDifficulty(g<SearchRepositoryInterface>()));
    g.registerLazySingleton<SearchExperiencesByName>(
        () => SearchExperiencesByName(g<SearchRepositoryInterface>()));
    g.registerLazySingleton<SearchExperiencesByTags>(
        () => SearchExperiencesByTags(g<SearchRepositoryInterface>()));
  }

  //Register test Dependencies --------
  if (environment == 'test') {
    g.registerLazySingleton<AchievementRepositoryInterface>(
        () => MockAchievementRepository());
    g.registerLazySingleton<AddExperienceToLog>(() => MockAddExperienceToLog());
    g.registerLazySingleton<AuthenticationRepositoryInterface>(
        () => MockAuthenticationRepository());
    g.registerLazySingleton<AwardAchievement>(() => MockAwardAchievement());
    g.registerLazySingleton<BlockUser>(() => MockBlockUser());
    g.registerLazySingleton<CachedCredentialsRepositoryInterface>(
        () => MockCachedUserRepository());
    g.registerLazySingleton<CheckNotification>(() => MockCheckNotification());
    g.registerLazySingleton<CommentRepositoryInterface>(
        () => MockCommentRepository());
    g.registerLazySingleton<CoreRepositoryInterface>(
        () => MockCoreRepository());
    g.registerLazySingleton<CreateAchievement>(() => MockCreateAchievement());
    g.registerLazySingleton<CreateExperience>(() => MockCreateExperience());
    g.registerLazySingleton<CreateObjectives>(() => MockCreateObjectives());
    g.registerLazySingleton<CreateTag>(() => MockCreateTag());
    g.registerLazySingleton<DeleteAchievement>(() => MockDeleteAchievement());
    g.registerLazySingleton<DeleteCache>(() => MockDeleteCache());
    g.registerLazySingleton<DeleteComment>(() => MockDeleteComment());
    g.registerLazySingleton<DeleteExperience>(() => MockDeleteExperience());
    g.registerLazySingleton<DeleteTag>(() => MockDeleteTag());
    g.registerLazySingleton<DeleteUser>(() => MockDeleteUser());
    g.registerLazySingleton<DeleteUserNotifications>(
        () => MockDeleteUserNotifications());
    g.registerLazySingleton<DismissExperienceFromLog>(
        () => MockDismissExperienceFromLog());
    g.registerLazySingleton<EditAchievement>(() => MockEditAchievement());
    g.registerLazySingleton<EditComment>(() => MockEditComment());
    g.registerLazySingleton<EditExperience>(() => MockEditExperience());
    g.registerLazySingleton<EditTag>(() => MockEditTag());
    g.registerLazySingleton<EditUser>(() => MockEditUser());
    g.registerLazySingleton<ExperienceLogRepositoryInterface>(
        () => MockExperienceLogRepository());
    g.registerLazySingleton<ExperienceManagementRepositoryInterface>(
        () => MockExperienceManagementRepository());
    g.registerLazySingleton<ExperienceNavigationRepositoryInterface>(
        () => MockExperienceNavigationRepository());
    g.registerLazySingleton<FillFeed>(() => MockFillFeed());
    g.registerLazySingleton<FinishExperience>(() => MockFinishExperience());
    g.registerLazySingleton<FollowUser>(() => MockFollowUser());
    g.registerLazySingleton<GeoLocationRepositoryInterface>(
        () => MockGeoLocationRepository());
    g.registerLazySingleton<GetAchievement>(() => MockGetAchievement());
    g.registerLazySingleton<GetAllAchievements>(() => MockGetAllAchievements());
    g.registerLazySingleton<GetAllTags>(() => MockGetAllTags());
    g.registerLazySingleton<GetCachedUser>(() => MockGetCachedUser());
    g.registerLazySingleton<GetCurrentLocation>(() => MockGetCurrentLocation());
    g.registerLazySingleton<GetExperience>(() => MockGetExperience());
    g.registerLazySingleton<GetExperienceComments>(
        () => MockGetExperienceComments());
    g.registerLazySingleton<GetLoggedInUser>(() => MockGetLoggedInUser());
    g.registerLazySingleton<GetTag>(() => MockGetTag());
    g.registerLazySingleton<GetTagCreator>(() => MockGetTagCreator());
    g.registerLazySingleton<GetTagsByCreator>(() => MockGetTagsByCreator());
    g.registerLazySingleton<GetUserAchievements>(
        () => MockGetUserAchievements());
    g.registerLazySingleton<GetUserComments>(() => MockGetUserComments());
    g.registerLazySingleton<LikeExperience>(() => MockLikeExperience());
    g.registerLazySingleton<LoadBlockedUsers>(() => MockLoadBlockedUsers());
    g.registerLazySingleton<LoadExperiencesCreated>(
        () => MockLoadExperiencesCreated());
    g.registerLazySingleton<LoadExperiencesDone>(
        () => MockLoadExperiencesDone());
    g.registerLazySingleton<LoadExperiencesLiked>(
        () => MockLoadExperiencesLiked());
    g.registerLazySingleton<LoadFollowedUsers>(() => MockLoadFollowedUsers());
    g.registerLazySingleton<LoadFollowingUsers>(() => MockLoadFollowingUsers());
    g.registerLazySingleton<LoadNotifications>(() => MockLoadNotifications());
    g.registerLazySingleton<LoadSurroundingExperiences>(
        () => MockLoadSurroundingExperiences());
    g.registerLazySingleton<LoadUser>(() => MockLoadUser());
    g.registerLazySingleton<LoadUserAchievements>(
        () => MockLoadUserAchievements());
    g.registerLazySingleton<LoadUserInterests>(() => MockLoadUserInterests());
    g.registerLazySingleton<LoadUserLog>(() => MockLoadUserLog());
    g.registerLazySingleton<LocalOptionsRepositoryInterface>(
        () => MockLocalOptionsRepository());
    g.registerLazySingleton<LogIn>(() => MockLogIn());
    g.registerLazySingleton<LogInGoogle>(() => MockLogInGoogle());
    g.registerLazySingleton<LogOut>(() => MockLogOut());
    g.registerLazySingleton<MainFeedRepositoryInterface>(
        () => MockMainFeedRepository());
    g.registerLazySingleton<NoParams>(() => NoParams());
    g.registerLazySingleton<NotificationRepositoryInterface>(
        () => MockNotificationRepository());
    g.registerLazySingleton<PostComment>(() => MockPostComment());
    g.registerLazySingleton<ProfileRepositoryInterface>(
        () => MockProfileRepository());
    g.registerLazySingleton<PublicKeyRepositoryInterface>(
        () => MockPublicKeyRepository());
    g.registerLazySingleton<RateDifficulty>(() => MockRateDifficulty());
    g.registerLazySingleton<Register>(() => MockRegister());
    g.registerLazySingleton<RemoteOptionsRepositoryInterface>(
        () => MockRemoteOptionsRepository());
    g.registerLazySingleton<RemoveExperienceLiked>(
        () => MockRemoveExperienceLiked());
    g.registerLazySingleton<RewardUser>(() => MockRewardUser());
    g.registerLazySingleton<SaveGlobalOptions>(() => MockSaveGlobalOptions());
    g.registerLazySingleton<SearchExperiencesByDifficulty>(
        () => MockSearchExperiencesByDifficulty());
    g.registerLazySingleton<SearchExperiencesByName>(
        () => MockSearchExperiencesByName());
    g.registerLazySingleton<SearchExperiencesByTags>(
        () => MockSearchExperiencesByTags());
    g.registerLazySingleton<SearchRepositoryInterface>(
        () => MockSearchRepository());
    g.registerLazySingleton<SearchTagsByName>(() => MockSearchTagsByName());
    g.registerLazySingleton<SearchUsersByName>(() => MockSearchUsersByName());
    g.registerLazySingleton<SearchUsersByUsername>(
        () => MockSearchUsersByUsername());
    g.registerLazySingleton<SendNotification>(() => MockSendNotification());
    g.registerLazySingleton<TagCoreRepositoryInterface>(
        () => MockTagRepository());
    g.registerLazySingleton<TagManagementRepositoryInterface>(
        () => MockTagManagementRepository());
    g.registerLazySingleton<UnBlockUser>(() => MockUnBlockUser());
    g.registerLazySingleton<UnFollowUser>(() => MockUnFollowUser());
  }
}
