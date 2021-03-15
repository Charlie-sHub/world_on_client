// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i89;
import 'package:firebase_auth/firebase_auth.dart' as _i88;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i105;
import 'package:injectable/injectable.dart' as _i2;

import 'application/achievement_management/achievement_management_actor/achievement_management_actor_bloc.dart'
    as _i5;
import 'application/achievement_management/achievement_management_form/achievement_management_form_bloc.dart'
    as _i6;
import 'application/achievement_management/achievement_management_watcher/achievement_management_watcher_bloc.dart'
    as _i7;
import 'application/authentication/authentication/authentication_bloc.dart'
    as _i16;
import 'application/authentication/log_in_form/log_in_form_bloc.dart' as _i116;
import 'application/authentication/registration_form/registration_form_bloc.dart'
    as _i154;
import 'application/comments/comment_actor/comment_actor_bloc.dart' as _i33;
import 'application/comments/comment_form/comment_form_bloc.dart' as _i34;
import 'application/comments/comment_watcher/comment_watcher_bloc.dart' as _i38;
import 'application/core/experience_card_actor/experience_card_actor_bloc.dart'
    as _i68;
import 'application/core/experience_card_like_check/experience_card_like_check_bloc.dart'
    as _i69;
import 'application/experience_log/experience_log_actor/experience_log_actor_bloc.dart'
    as _i72;
import 'application/experience_log/experience_log_watcher/experience_log_watcher_bloc.dart'
    as _i76;
import 'application/experience_management/experience_management_actor/experience_management_actor_bloc.dart'
    as _i77;
import 'application/experience_management/experience_management_form/experience_management_form_bloc.dart'
    as _i78;
import 'application/experience_management/objective_form/objective_form_bloc.dart'
    as _i133;
import 'application/experience_management/objectives_creation/objectives_creation_bloc.dart'
    as _i134;
import 'application/experience_management/reward_form/reward_form_bloc.dart'
    as _i160;
import 'application/experience_management/rewards_creation/rewards_creation_bloc.dart'
    as _i162;
import 'application/experience_navigation/experience_finish_actor/experience_finish_actor_bloc.dart'
    as _i70;
import 'application/experience_navigation/experience_like_actor/experience_like_actor_bloc.dart'
    as _i71;
import 'application/experience_navigation/experience_navigation_watcher/experience_navigation_watcher_bloc.dart'
    as _i85;
import 'application/experience_navigation/map_controller/map_controller_bloc.dart'
    as _i124;
import 'application/experience_navigation/objectives_tracker/objectives_tracker_bloc.dart'
    as _i135;
import 'application/experience_navigation/rate_experience_difficulty_actor/rate_experience_difficulty_actor_bloc.dart'
    as _i151;
import 'application/experience_navigation/recommended_experiences_watcher/recommended_experiences_watcher_bloc.dart'
    as _i152;
import 'application/main_feed/main_feed_watcher/main_feed_watcher_bloc.dart'
    as _i123;
import 'application/navigation/navigation_actor/navigation_actor_bloc.dart'
    as _i125;
import 'application/notifications/notification_actor/notification_actor_bloc.dart'
    as _i127;
import 'application/notifications/notifications_watcher/notifications_watcher_bloc.dart'
    as _i132;
import 'application/options/options_form/options_form_bloc.dart' as _i136;
import 'application/options/user_actor/user_actor_bloc.dart' as _i196;
import 'application/profile/block_actor/block_actor_bloc.dart' as _i22;
import 'application/profile/blocked_watcher/blocked_watcher_bloc.dart' as _i25;
import 'application/profile/follow_actor/follow_actor_bloc.dart' as _i90;
import 'application/profile/profile_achievements_watcher/profile_achievements_watcher_bloc.dart'
    as _i138;
import 'application/profile/profile_editing_form/profile_editing_form_bloc.dart'
    as _i139;
import 'application/profile/profile_experiences_watcher/profile_experiences_watcher_bloc.dart'
    as _i140;
import 'application/profile/profile_interests_watcher/profile_interests_watcher_bloc.dart'
    as _i141;
import 'application/profile/profile_users_watcher/profile_users_watcher_bloc.dart'
    as _i146;
import 'application/profile/profile_watcher/profile_watcher_bloc.dart' as _i147;
import 'application/search/search_by_name_form/search_by_name_form_bloc.dart'
    as _i164;
import 'application/search/search_experiences_by_difficulty/search_experiences_by_difficulty_bloc.dart'
    as _i165;
import 'application/search/search_experiences_by_name_watcher/search_experiences_by_name_watcher_bloc.dart'
    as _i166;
import 'application/search/search_experiences_by_tags/search_experiences_by_tags_bloc.dart'
    as _i167;
import 'application/search/search_tags_by_name_watcher/search_tags_by_name_watcher_bloc.dart'
    as _i172;
import 'application/search/search_users_by_name_watcher/search_users_by_name_watcher_bloc.dart'
    as _i173;
import 'application/search/tag_selector/tag_selector_bloc.dart' as _i193;
import 'application/store/buy_coins/buy_coins_bloc.dart' as _i26;
import 'application/store/buy_item/buy_item_bloc.dart' as _i27;
import 'application/store/load_user/load_user_bloc.dart' as _i110;
import 'application/store/purchasable_items_watcher/watch_purchasable_items_bloc.dart'
    as _i211;
import 'application/store/store_navigation_actor/store_navigation_actor_bloc.dart'
    as _i175;
import 'application/tag_management/tag_card_actor/tag_card_actor_bloc.dart'
    as _i180;
import 'application/tag_management/tag_card_check/tag_card_check_bloc.dart'
    as _i181;
import 'application/tag_management/tag_management_actor/tag_management_actor_bloc.dart'
    as _i186;
import 'application/tag_management/tag_management_form/tag_management_form_bloc.dart'
    as _i187;
import 'application/tag_management/tag_management_watcher/tag_management_watcher_bloc.dart'
    as _i192;
import 'core/util/cypher.dart' as _i48;
import 'data/achievement_management/repository/development_achievement_repository.dart'
    as _i9;
import 'data/achievement_management/repository/production_achievement_repository.dart'
    as _i10;
import 'data/authentication/repository/development_authentication_repository.dart'
    as _i19;
import 'data/authentication/repository/production_authentication_repository.dart'
    as _i225;
import 'data/comments/repository/development_comment_repository.dart' as _i37;
import 'data/comments/repository/production_comment_repository.dart' as _i228;
import 'data/core/misc/cloud_storage/cloud_storage_service.dart' as _i32;
import 'data/core/modules/firebase_injectable_module.dart' as _i233;
import 'data/core/repository/development_core_repository.dart' as _i42;
import 'data/core/repository/development_geo_location_repository.dart' as _i93;
import 'data/core/repository/production_core_repository.dart' as _i41;
import 'data/core/repository/production_geo_location_repository.dart' as _i94;
import 'data/experience_log/repository/development_experience_log_repository.dart'
    as _i74;
import 'data/experience_log/repository/production_experience_log_repository.dart'
    as _i229;
import 'data/experience_management/repository/development_experience_management_repository.dart'
    as _i81;
import 'data/experience_management/repository/production_experience_management_repository.dart'
    as _i230;
import 'data/experience_navigation/repository/development_experience_navigation_repository.dart'
    as _i84;
import 'data/experience_navigation/repository/production_experience_navigation_repository.dart'
    as _i231;
import 'data/main_feed/repository/development_main_feed_repository.dart'
    as _i121;
import 'data/main_feed/repository/production_main_feed_repository.dart'
    as _i120;
import 'data/notifications/repository/development_notification_repository.dart'
    as _i130;
import 'data/notifications/repository/production_notification_repository.dart'
    as _i129;
import 'data/options/repository/development_local_options_repository.dart'
    as _i113;
import 'data/options/repository/development_remote_options_repository.dart'
    as _i157;
import 'data/options/repository/production_local_options_repository.dart'
    as _i112;
import 'data/options/repository/production_remote_options_repository.dart'
    as _i156;
import 'data/profile/repository/development_profile_repository.dart' as _i143;
import 'data/profile/repository/production_profile_repository.dart' as _i144;
import 'data/search/repository/development_search_repository.dart' as _i171;
import 'data/search/repository/production_search_repository.dart' as _i169;
import 'data/store/repository/development_store_repository.dart' as _i177;
import 'data/store/repository/production_store_repository.dart' as _i178;
import 'data/tag_management/repository/development_tag_management_repository.dart'
    as _i189;
import 'data/tag_management/repository/development_tag_repository.dart'
    as _i183;
import 'data/tag_management/repository/production_tag_management_repository.dart'
    as _i190;
import 'data/tag_management/repository/production_tag_repository.dart' as _i185;
import 'domain/achievement_management/repository/achievement_repository_interface.dart'
    as _i8;
import 'domain/achievement_management/repository/achievement_repository_mock.dart'
    as _i11;
import 'domain/achievement_management/use_case/award_achievement.dart' as _i20;
import 'domain/achievement_management/use_case/create_achievement.dart' as _i43;
import 'domain/achievement_management/use_case/delete_achievement.dart' as _i49;
import 'domain/achievement_management/use_case/edit_achievement.dart' as _i63;
import 'domain/achievement_management/use_case/get_achievement.dart' as _i96;
import 'domain/achievement_management/use_case/use_case_mocks.dart' as _i21;
import 'domain/achievement_management/use_case/watch_all_achievements.dart'
    as _i197;
import 'domain/authentication/repository/authentication_repository_interface.dart'
    as _i17;
import 'domain/authentication/repository/authentication_repository_mock.dart'
    as _i18;
import 'domain/authentication/repository/cached_credentials_repository_interface.dart'
    as _i28;
import 'domain/authentication/repository/cached_user_repository_mock.dart'
    as _i29;
import 'domain/authentication/repository/public_key_repository_interface.dart'
    as _i148;
import 'domain/authentication/repository/public_key_repository_mock.dart'
    as _i149;
import 'domain/authentication/use_case/get_cached_user.dart' as _i98;
import 'domain/authentication/use_case/get_logged_in_user.dart' as _i102;
import 'domain/authentication/use_case/get_public_key.dart' as _i232;
import 'domain/authentication/use_case/log_in.dart' as _i115;
import 'domain/authentication/use_case/log_in_google.dart' as _i117;
import 'domain/authentication/use_case/log_out.dart' as _i118;
import 'domain/authentication/use_case/register.dart' as _i153;
import 'domain/authentication/use_case/use_case_mocks.dart' as _i99;
import 'domain/comments/repository/comment_repository_interface.dart' as _i35;
import 'domain/comments/repository/comment_repository_mock.dart' as _i36;
import 'domain/comments/use_case/delete_comment.dart' as _i52;
import 'domain/comments/use_case/edit_comment.dart' as _i64;
import 'domain/comments/use_case/post_comment.dart' as _i137;
import 'domain/comments/use_case/use_case_mocks.dart' as _i53;
import 'domain/comments/use_case/watch_experience_comments.dart' as _i200;
import 'domain/comments/use_case/watch_user_comments.dart' as _i222;
import 'domain/core/repository/core_repository_interface.dart' as _i39;
import 'domain/core/repository/core_repository_mock.dart' as _i40;
import 'domain/core/repository/geo_location_repository_interface.dart' as _i92;
import 'domain/core/repository/geo_location_repository_mock.dart' as _i95;
import 'domain/core/use_case/delete_cache.dart' as _i50;
import 'domain/core/use_case/get_current_location.dart' as _i100;
import 'domain/core/use_case/is_logged_in_user.dart' as _i106;
import 'domain/core/use_case/use_case.dart' as _i126;
import 'domain/core/use_case/use_case_mocks.dart' as _i51;
import 'domain/experience_log/repository/experience_log_repository_interface.dart'
    as _i73;
import 'domain/experience_log/repository/experience_log_repository_mock.dart'
    as _i75;
import 'domain/experience_log/use_case/add_experience_to_log.dart' as _i12;
import 'domain/experience_log/use_case/dismiss_experience_from_log.dart'
    as _i61;
import 'domain/experience_log/use_case/use_case_mocks.dart' as _i13;
import 'domain/experience_log/use_case/watch_user_log.dart' as _i224;
import 'domain/experience_management/repository/experience_management_repository_interface.dart'
    as _i79;
import 'domain/experience_management/repository/experience_management_repository_mock.dart'
    as _i80;
import 'domain/experience_management/use_case/create_experience.dart' as _i44;
import 'domain/experience_management/use_case/create_objectives.dart' as _i46;
import 'domain/experience_management/use_case/edit_experience.dart' as _i65;
import 'domain/experience_management/use_case/get_experience.dart' as _i101;
import 'domain/experience_management/use_case/use_case_mocks.dart' as _i45;
import 'domain/experience_navigation/repository/experience_navigation_repository_interface.dart'
    as _i82;
import 'domain/experience_navigation/repository/experience_navigation_repository_mock.dart'
    as _i83;
import 'domain/experience_navigation/use_case/accomplish_objective.dart' as _i3;
import 'domain/experience_navigation/use_case/dislike_experience.dart' as _i60;
import 'domain/experience_navigation/use_case/fill_objective_tracker.dart'
    as _i86;
import 'domain/experience_navigation/use_case/finish_experience.dart' as _i87;
import 'domain/experience_navigation/use_case/like_experience.dart' as _i107;
import 'domain/experience_navigation/use_case/load_surrounding_experiences.dart'
    as _i108;
import 'domain/experience_navigation/use_case/rate_difficulty.dart' as _i150;
import 'domain/experience_navigation/use_case/reward_user.dart' as _i161;
import 'domain/experience_navigation/use_case/use_case_mocks.dart' as _i4;
import 'domain/experience_navigation/use_case/watch_recommended_experiences.dart'
    as _i212;
import 'domain/main_feed/repository/main_feed_repository_interface.dart'
    as _i119;
import 'domain/main_feed/repository/main_feed_repository_mock.dart' as _i122;
import 'domain/main_feed/use_case/use_case_mocks.dart' as _i205;
import 'domain/main_feed/use_case/watch_feed.dart' as _i204;
import 'domain/notifications/repository/notification_repository_interface.dart'
    as _i128;
import 'domain/notifications/repository/notification_repository_mock.dart'
    as _i131;
import 'domain/notifications/use_case/check_notification.dart' as _i30;
import 'domain/notifications/use_case/delete_notification.dart' as _i55;
import 'domain/notifications/use_case/delete_user_notifications.dart' as _i59;
import 'domain/notifications/use_case/send_notification.dart' as _i174;
import 'domain/notifications/use_case/use_case_mocks.dart' as _i31;
import 'domain/notifications/use_case/watch_notifications.dart' as _i208;
import 'domain/options/repository/local_options_repository_interface.dart'
    as _i111;
import 'domain/options/repository/local_options_repository_mock.dart' as _i114;
import 'domain/options/repository/remote_options_repository_interface.dart'
    as _i155;
import 'domain/options/repository/remote_options_repository_mock.dart' as _i158;
import 'domain/options/use_case/delete_user.dart' as _i57;
import 'domain/options/use_case/save_global_options.dart' as _i163;
import 'domain/options/use_case/use_case_mocks.dart' as _i58;
import 'domain/profile/repository/profile_repository_interface.dart' as _i142;
import 'domain/profile/repository/profile_repository_mock.dart' as _i145;
import 'domain/profile/use_case/block_user.dart' as _i23;
import 'domain/profile/use_case/delete_experience.dart' as _i54;
import 'domain/profile/use_case/edit_user.dart' as _i67;
import 'domain/profile/use_case/follow_user.dart' as _i91;
import 'domain/profile/use_case/get_amout_of_followers.dart' as _i97;
import 'domain/profile/use_case/load_user.dart' as _i109;
import 'domain/profile/use_case/remove_experience_liked.dart' as _i159;
import 'domain/profile/use_case/un_block_user.dart' as _i194;
import 'domain/profile/use_case/un_follow_user.dart' as _i195;
import 'domain/profile/use_case/use_case_mocks.dart' as _i24;
import 'domain/profile/use_case/watch_blocked_users.dart' as _i199;
import 'domain/profile/use_case/watch_experiences_created.dart' as _i201;
import 'domain/profile/use_case/watch_experiences_done.dart' as _i202;
import 'domain/profile/use_case/watch_experiences_liked.dart' as _i203;
import 'domain/profile/use_case/watch_followed_users.dart' as _i206;
import 'domain/profile/use_case/watch_following_users.dart' as _i207;
import 'domain/profile/use_case/watch_user_achievements.dart' as _i221;
import 'domain/profile/use_case/watch_user_interests.dart' as _i223;
import 'domain/search/repository/search_repository_interface.dart' as _i168;
import 'domain/search/repository/search_repository_mock.dart' as _i170;
import 'domain/search/use_case/use_case_mocks.dart' as _i214;
import 'domain/search/use_case/watch_search_experiences_by_difficulty.dart'
    as _i213;
import 'domain/search/use_case/watch_search_experiences_by_name.dart' as _i215;
import 'domain/search/use_case/watch_search_experiences_by_tags.dart' as _i216;
import 'domain/search/use_case/watch_search_tags_by_name.dart' as _i217;
import 'domain/search/use_case/watch_search_users_by_name.dart' as _i218;
import 'domain/search/use_case/watch_search_users_by_username.dart' as _i219;
import 'domain/store/repository/store_repository_interface.dart' as _i176;
import 'domain/store/repository/store_repository_mock.dart' as _i179;
import 'domain/store/use_case/buy_coin.dart' as _i226;
import 'domain/store/use_case/buy_item.dart' as _i227;
import 'domain/store/use_case/watch_owned_items.dart' as _i209;
import 'domain/store/use_case/watch_purchasable_items.dart' as _i210;
import 'domain/tag_management/repository/tag_management_repository_interface.dart'
    as _i188;
import 'domain/tag_management/repository/tag_management_repository_mock.dart'
    as _i191;
import 'domain/tag_management/repository/tag_repository_interface.dart'
    as _i182;
import 'domain/tag_management/repository/tag_repository_mock.dart' as _i184;
import 'domain/tag_management/use_case/add_tag_to_interests.dart' as _i14;
import 'domain/tag_management/use_case/create_tag.dart' as _i47;
import 'domain/tag_management/use_case/delete_tag.dart' as _i56;
import 'domain/tag_management/use_case/dismiss_tag_from_interests.dart' as _i62;
import 'domain/tag_management/use_case/edit_tag.dart' as _i66;
import 'domain/tag_management/use_case/get_tag.dart' as _i103;
import 'domain/tag_management/use_case/get_tag_creator.dart' as _i104;
import 'domain/tag_management/use_case/use_case_mocks.dart' as _i15;
import 'domain/tag_management/use_case/watch_all_tags.dart' as _i198;
import 'domain/tag_management/use_case/watch_tags_by_creator.dart' as _i220;

const String _test = 'test';
const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.AccomplishObjective>(() => _i4.MockAccomplishObjective(),
      registerFor: {_test});
  gh.factory<_i5.AchievementManagementActorBloc>(
      () => _i5.AchievementManagementActorBloc());
  gh.factory<_i6.AchievementManagementFormBloc>(
      () => _i6.AchievementManagementFormBloc());
  gh.factory<_i7.AchievementManagementWatcherBloc>(
      () => _i7.AchievementManagementWatcherBloc());
  gh.lazySingleton<_i8.AchievementRepositoryInterface>(
      () => _i9.DevelopmentAchievementRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i8.AchievementRepositoryInterface>(
      () => _i10.ProductionAchievementRepository(),
      registerFor: {_prod});
  gh.lazySingleton<_i8.AchievementRepositoryInterface>(
      () => _i11.MockAchievementRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i12.AddExperienceToLog>(() => _i13.MockAddExperienceToLog(),
      registerFor: {_test});
  gh.lazySingleton<_i14.AddTagToInterests>(() => _i15.MockAddTagToInterests(),
      registerFor: {_test});
  gh.factory<_i16.AuthenticationBloc>(() => _i16.AuthenticationBloc());
  gh.lazySingleton<_i17.AuthenticationRepositoryInterface>(
      () => _i18.MockAuthenticationRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i17.AuthenticationRepositoryInterface>(
      () => _i19.DevelopmentAuthenticationRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i20.AwardAchievement>(() => _i21.MockAwardAchievement(),
      registerFor: {_test});
  gh.lazySingleton<_i20.AwardAchievement>(
      () => _i20.AwardAchievement(get<_i8.AchievementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.factory<_i22.BlockActorBloc>(() => _i22.BlockActorBloc());
  gh.lazySingleton<_i23.BlockUser>(() => _i24.MockBlockUser(),
      registerFor: {_test});
  gh.factory<_i25.BlockedWatcherBloc>(() => _i25.BlockedWatcherBloc());
  gh.factory<_i26.BuyCoinsBloc>(() => _i26.BuyCoinsBloc());
  gh.factory<_i27.BuyItemBloc>(() => _i27.BuyItemBloc());
  gh.lazySingleton<_i28.CachedCredentialsRepositoryInterface>(
      () => _i29.MockCachedUserRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i30.CheckNotification>(() => _i31.MockCheckNotification(),
      registerFor: {_test});
  gh.factory<_i32.CloudStorageService>(() => _i32.CloudStorageService());
  gh.factory<_i33.CommentActorBloc>(() => _i33.CommentActorBloc());
  gh.factory<_i34.CommentFormBloc>(() => _i34.CommentFormBloc());
  gh.lazySingleton<_i35.CommentRepositoryInterface>(
      () => _i36.MockCommentRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i35.CommentRepositoryInterface>(
      () => _i37.DevelopmentCommentRepository(),
      registerFor: {_dev});
  gh.factory<_i38.CommentWatcherBloc>(() => _i38.CommentWatcherBloc());
  gh.lazySingleton<_i39.CoreRepositoryInterface>(
      () => _i40.MockCoreRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i39.CoreRepositoryInterface>(
      () => _i41.ProductionCoreRepository(),
      registerFor: {_prod});
  gh.lazySingleton<_i39.CoreRepositoryInterface>(
      () => _i42.DevelopmentCoreRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i43.CreateAchievement>(
      () => _i43.CreateAchievement(get<_i8.AchievementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i43.CreateAchievement>(() => _i21.MockCreateAchievement(),
      registerFor: {_test});
  gh.lazySingleton<_i44.CreateExperience>(() => _i45.MockCreateExperience(),
      registerFor: {_test});
  gh.lazySingleton<_i46.CreateObjectives>(() => _i46.CreateObjectives(),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i46.CreateObjectives>(() => _i45.MockCreateObjectives(),
      registerFor: {_test});
  gh.lazySingleton<_i47.CreateTag>(() => _i15.MockCreateTag(),
      registerFor: {_test});
  gh.lazySingleton<_i48.Cypher>(() => _i48.Cypher(), registerFor: {_prod});
  gh.lazySingleton<_i49.DeleteAchievement>(
      () => _i49.DeleteAchievement(get<_i8.AchievementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i49.DeleteAchievement>(() => _i21.MockDeleteAchievement(),
      registerFor: {_test});
  gh.lazySingleton<_i50.DeleteCache>(() => _i51.MockDeleteCache(),
      registerFor: {_test});
  gh.lazySingleton<_i50.DeleteCache>(
      () => _i50.DeleteCache(get<_i39.CoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i52.DeleteComment>(() => _i53.MockDeleteComment(),
      registerFor: {_test});
  gh.lazySingleton<_i52.DeleteComment>(
      () => _i52.DeleteComment(get<_i35.CommentRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i54.DeleteExperience>(() => _i24.MockDeleteExperience(),
      registerFor: {_test});
  gh.lazySingleton<_i55.DeleteNotification>(() => _i31.MockDeleteNotification(),
      registerFor: {_test});
  gh.lazySingleton<_i56.DeleteTag>(() => _i15.MockDeleteTag(),
      registerFor: {_test});
  gh.lazySingleton<_i57.DeleteUser>(() => _i58.MockDeleteUser(),
      registerFor: {_test});
  gh.lazySingleton<_i59.DeleteUserNotifications>(
      () => _i31.MockDeleteUserNotifications(),
      registerFor: {_test});
  gh.lazySingleton<_i60.DislikeExperience>(() => _i4.MockDislikeExperience(),
      registerFor: {_test});
  gh.lazySingleton<_i61.DismissExperienceFromLog>(
      () => _i13.MockDismissExperienceFromLog(),
      registerFor: {_test});
  gh.lazySingleton<_i62.DismissTagFromInterests>(
      () => _i15.MockDismissTagFromInterests(),
      registerFor: {_test});
  gh.lazySingleton<_i63.EditAchievement>(
      () => _i63.EditAchievement(get<_i8.AchievementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i63.EditAchievement>(() => _i21.MockEditAchievement(),
      registerFor: {_test});
  gh.lazySingleton<_i64.EditComment>(() => _i53.MockEditComment(),
      registerFor: {_test});
  gh.lazySingleton<_i64.EditComment>(
      () => _i64.EditComment(get<_i35.CommentRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i65.EditExperience>(() => _i45.MockEditExperience(),
      registerFor: {_test});
  gh.lazySingleton<_i66.EditTag>(() => _i15.MockEditTag(),
      registerFor: {_test});
  gh.lazySingleton<_i67.EditUser>(() => _i24.MockEditUser(),
      registerFor: {_test});
  gh.factory<_i68.ExperienceCardActorBloc>(
      () => _i68.ExperienceCardActorBloc());
  gh.factory<_i69.ExperienceCardLikeCheckBloc>(
      () => _i69.ExperienceCardLikeCheckBloc());
  gh.factory<_i70.ExperienceFinishActorBloc>(
      () => _i70.ExperienceFinishActorBloc());
  gh.factory<_i71.ExperienceLikeActorBloc>(
      () => _i71.ExperienceLikeActorBloc());
  gh.factory<_i72.ExperienceLogActorBloc>(() => _i72.ExperienceLogActorBloc());
  gh.lazySingleton<_i73.ExperienceLogRepositoryInterface>(
      () => _i74.DevelopmentExperienceLogRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i73.ExperienceLogRepositoryInterface>(
      () => _i75.MockExperienceLogRepository(),
      registerFor: {_test});
  gh.factory<_i76.ExperienceLogWatcherBloc>(
      () => _i76.ExperienceLogWatcherBloc());
  gh.factory<_i77.ExperienceManagementActorBloc>(
      () => _i77.ExperienceManagementActorBloc());
  gh.factory<_i78.ExperienceManagementFormBloc>(
      () => _i78.ExperienceManagementFormBloc());
  gh.lazySingleton<_i79.ExperienceManagementRepositoryInterface>(
      () => _i80.MockExperienceManagementRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i79.ExperienceManagementRepositoryInterface>(
      () => _i81.DevelopmentExperienceManagementRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i82.ExperienceNavigationRepositoryInterface>(
      () => _i83.MockExperienceNavigationRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i82.ExperienceNavigationRepositoryInterface>(
      () => _i84.DevelopmentExperienceNavigationRepository(),
      registerFor: {_dev});
  gh.factory<_i85.ExperienceNavigationWatcherBloc>(
      () => _i85.ExperienceNavigationWatcherBloc());
  gh.lazySingleton<_i86.FillObjectiveTracker>(() => _i86.FillObjectiveTracker(),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i86.FillObjectiveTracker>(
      () => _i4.MockFillObjectiveTracker(),
      registerFor: {_test});
  gh.lazySingleton<_i87.FinishExperience>(
      () => _i87.FinishExperience(
          get<_i82.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i87.FinishExperience>(() => _i4.MockFinishExperience(),
      registerFor: {_test});
  gh.lazySingleton<_i88.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i89.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.factory<_i90.FollowActorBloc>(() => _i90.FollowActorBloc());
  gh.lazySingleton<_i91.FollowUser>(() => _i24.MockFollowUser(),
      registerFor: {_test});
  gh.lazySingleton<_i92.GeoLocationRepositoryInterface>(
      () => _i93.DevelopmentGeoLocationRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i92.GeoLocationRepositoryInterface>(
      () => _i94.ProductionGeoLocationRepository(),
      registerFor: {_prod});
  gh.lazySingleton<_i92.GeoLocationRepositoryInterface>(
      () => _i95.MockGeoLocationRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i96.GetAchievement>(() => _i21.MockGetAchievement(),
      registerFor: {_test});
  gh.lazySingleton<_i96.GetAchievement>(
      () => _i96.GetAchievement(get<_i8.AchievementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i97.GetAmountOfFollowers>(
      () => _i24.MockGetAmountOfFollowers(),
      registerFor: {_test});
  gh.lazySingleton<_i98.GetCachedUser>(
      () =>
          _i98.GetCachedUser(get<_i28.CachedCredentialsRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i98.GetCachedUser>(() => _i99.MockGetCachedUser(),
      registerFor: {_test});
  gh.lazySingleton<_i100.GetCurrentLocation>(
      () =>
          _i100.GetCurrentLocation(get<_i92.GeoLocationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i100.GetCurrentLocation>(
      () => _i51.MockGetCurrentLocation(),
      registerFor: {_test});
  gh.lazySingleton<_i101.GetExperience>(() => _i45.MockGetExperience(),
      registerFor: {_test});
  gh.lazySingleton<_i101.GetExperience>(
      () => _i101.GetExperience(
          get<_i79.ExperienceManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i102.GetLoggedInUser>(
      () =>
          _i102.GetLoggedInUser(get<_i17.AuthenticationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i102.GetLoggedInUser>(() => _i99.MockGetLoggedInUser(),
      registerFor: {_test});
  gh.lazySingleton<_i103.GetTag>(() => _i15.MockGetTag(), registerFor: {_test});
  gh.lazySingleton<_i104.GetTagCreator>(() => _i15.MockGetTagCreator(),
      registerFor: {_test});
  gh.lazySingleton<_i105.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i106.IsLoggedInUser>(() => _i51.MockIsLoggedInUser(),
      registerFor: {_test});
  gh.lazySingleton<_i106.IsLoggedInUser>(() => _i106.IsLoggedInUser(),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i107.LikeExperience>(
      () => _i107.LikeExperience(
          get<_i82.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i107.LikeExperience>(() => _i4.MockLikeExperience(),
      registerFor: {_test});
  gh.lazySingleton<_i108.LoadSurroundingExperiences>(
      () => _i108.LoadSurroundingExperiences(
          get<_i82.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i108.LoadSurroundingExperiences>(
      () => _i4.MockLoadSurroundingExperiences(),
      registerFor: {_test});
  gh.lazySingleton<_i109.LoadUser>(() => _i24.MockLoadUser(),
      registerFor: {_test});
  gh.factory<_i110.LoadUserBloc>(() => _i110.LoadUserBloc());
  gh.lazySingleton<_i111.LocalOptionsRepositoryInterface>(
      () => _i112.ProductionLocalOptionsRepository(),
      registerFor: {_prod});
  gh.lazySingleton<_i111.LocalOptionsRepositoryInterface>(
      () => _i113.DevelopmentLocalOptionsRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i111.LocalOptionsRepositoryInterface>(
      () => _i114.MockLocalOptionsRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i115.LogIn>(() => _i99.MockLogIn(), registerFor: {_test});
  gh.lazySingleton<_i115.LogIn>(
      () => _i115.LogIn(get<_i17.AuthenticationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.factory<_i116.LogInFormBloc>(() => _i116.LogInFormBloc());
  gh.lazySingleton<_i117.LogInGoogle>(() => _i99.MockLogInGoogle(),
      registerFor: {_test});
  gh.lazySingleton<_i117.LogInGoogle>(
      () => _i117.LogInGoogle(get<_i17.AuthenticationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i118.LogOut>(
      () => _i118.LogOut(get<_i17.AuthenticationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i118.LogOut>(() => _i99.MockLogOut(), registerFor: {_test});
  gh.lazySingleton<_i119.MainFeedRepositoryInterface>(
      () => _i120.ProductionMainFeedRepository(get<_i89.FirebaseFirestore>()),
      registerFor: {_prod});
  gh.lazySingleton<_i119.MainFeedRepositoryInterface>(
      () => _i121.DevelopmentMainFeedRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i119.MainFeedRepositoryInterface>(
      () => _i122.MockMainFeedRepository(),
      registerFor: {_test});
  gh.factory<_i123.MainFeedWatcherBloc>(() => _i123.MainFeedWatcherBloc());
  gh.factory<_i124.MapControllerBloc>(() => _i124.MapControllerBloc());
  gh.factory<_i125.NavigationActorBloc>(() => _i125.NavigationActorBloc());
  gh.lazySingleton<_i126.NoParams>(() => _i126.NoParams());
  gh.factory<_i127.NotificationActorBloc>(() => _i127.NotificationActorBloc());
  gh.lazySingleton<_i128.NotificationRepositoryInterface>(
      () =>
          _i129.ProductionNotificationRepository(get<_i89.FirebaseFirestore>()),
      registerFor: {_prod});
  gh.lazySingleton<_i128.NotificationRepositoryInterface>(
      () => _i130.DevelopmentNotificationRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i128.NotificationRepositoryInterface>(
      () => _i131.MockNotificationRepository(),
      registerFor: {_test});
  gh.factory<_i132.NotificationsWatcherBloc>(
      () => _i132.NotificationsWatcherBloc());
  gh.factory<_i133.ObjectiveFormBloc>(() => _i133.ObjectiveFormBloc());
  gh.factory<_i134.ObjectivesCreationBloc>(
      () => _i134.ObjectivesCreationBloc());
  gh.factory<_i135.ObjectivesTrackerBloc>(() => _i135.ObjectivesTrackerBloc());
  gh.factory<_i136.OptionsFormBloc>(() => _i136.OptionsFormBloc());
  gh.lazySingleton<_i137.PostComment>(() => _i53.MockPostComment(),
      registerFor: {_test});
  gh.lazySingleton<_i137.PostComment>(
      () => _i137.PostComment(get<_i35.CommentRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.factory<_i138.ProfileAchievementsWatcherBloc>(
      () => _i138.ProfileAchievementsWatcherBloc());
  gh.factory<_i139.ProfileEditingFormBloc>(
      () => _i139.ProfileEditingFormBloc());
  gh.factory<_i140.ProfileExperiencesWatcherBloc>(
      () => _i140.ProfileExperiencesWatcherBloc());
  gh.factory<_i141.ProfileInterestsWatcherBloc>(
      () => _i141.ProfileInterestsWatcherBloc());
  gh.lazySingleton<_i142.ProfileRepositoryInterface>(
      () => _i143.DevelopmentProfileRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i142.ProfileRepositoryInterface>(
      () => _i144.ProductionProfileRepository(get<_i89.FirebaseFirestore>()),
      registerFor: {_prod});
  gh.lazySingleton<_i142.ProfileRepositoryInterface>(
      () => _i145.MockProfileRepository(),
      registerFor: {_test});
  gh.factory<_i146.ProfileUsersWatcherBloc>(
      () => _i146.ProfileUsersWatcherBloc());
  gh.factory<_i147.ProfileWatcherBloc>(() => _i147.ProfileWatcherBloc());
  gh.lazySingleton<_i148.PublicKeyRepositoryInterface>(
      () => _i149.MockPublicKeyRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i150.RateDifficulty>(
      () => _i150.RateDifficulty(
          get<_i82.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i150.RateDifficulty>(() => _i4.MockRateDifficulty(),
      registerFor: {_test});
  gh.factory<_i151.RateExperienceDifficultyActorBloc>(
      () => _i151.RateExperienceDifficultyActorBloc());
  gh.factory<_i152.RecommendedExperiencesWatcherBloc>(
      () => _i152.RecommendedExperiencesWatcherBloc());
  gh.lazySingleton<_i153.Register>(
      () => _i153.Register(get<_i17.AuthenticationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i153.Register>(() => _i99.MockRegister(),
      registerFor: {_test});
  gh.factory<_i154.RegistrationFormBloc>(() => _i154.RegistrationFormBloc());
  gh.lazySingleton<_i155.RemoteOptionsRepositoryInterface>(
      () => _i156.ProductionRemoteOptionsRepository(),
      registerFor: {_prod});
  gh.lazySingleton<_i155.RemoteOptionsRepositoryInterface>(
      () => _i157.DevelopmentRemoteOptionsRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i155.RemoteOptionsRepositoryInterface>(
      () => _i158.MockRemoteOptionsRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i159.RemoveExperienceLiked>(
      () =>
          _i159.RemoveExperienceLiked(get<_i142.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i159.RemoveExperienceLiked>(
      () => _i24.MockRemoveExperienceLiked(),
      registerFor: {_test});
  gh.factory<_i160.RewardFormBloc>(() => _i160.RewardFormBloc());
  gh.lazySingleton<_i161.RewardUser>(() => _i4.MockRewardUser(),
      registerFor: {_test});
  gh.lazySingleton<_i161.RewardUser>(
      () =>
          _i161.RewardUser(get<_i82.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.factory<_i162.RewardsCreationBloc>(() => _i162.RewardsCreationBloc());
  gh.lazySingleton<_i163.SaveGlobalOptions>(() => _i58.MockSaveGlobalOptions(),
      registerFor: {_test});
  gh.lazySingleton<_i163.SaveGlobalOptions>(
      () => _i163.SaveGlobalOptions(
          get<_i155.RemoteOptionsRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.factory<_i164.SearchByNameFormBloc>(() => _i164.SearchByNameFormBloc());
  gh.factory<_i165.SearchExperiencesByDifficultyBloc>(
      () => _i165.SearchExperiencesByDifficultyBloc());
  gh.factory<_i166.SearchExperiencesByNameWatcherBloc>(
      () => _i166.SearchExperiencesByNameWatcherBloc());
  gh.factory<_i167.SearchExperiencesByTagsBloc>(
      () => _i167.SearchExperiencesByTagsBloc());
  gh.lazySingleton<_i168.SearchRepositoryInterface>(
      () => _i169.ProductionSearchRepository(get<_i89.FirebaseFirestore>()),
      registerFor: {_prod});
  gh.lazySingleton<_i168.SearchRepositoryInterface>(
      () => _i170.MockSearchRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i168.SearchRepositoryInterface>(
      () => _i171.DevelopmentSearchRepository(),
      registerFor: {_dev});
  gh.factory<_i172.SearchTagsByNameWatcherBloc>(
      () => _i172.SearchTagsByNameWatcherBloc());
  gh.factory<_i173.SearchUsersByNameWatcherBloc>(
      () => _i173.SearchUsersByNameWatcherBloc());
  gh.lazySingleton<_i174.SendNotification>(
      () =>
          _i174.SendNotification(get<_i128.NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i174.SendNotification>(() => _i31.MockSendNotification(),
      registerFor: {_test});
  gh.factory<_i175.StoreNavigationActorBloc>(
      () => _i175.StoreNavigationActorBloc());
  gh.lazySingleton<_i176.StoreRepositoryInterface>(
      () => _i177.DevelopmentStoreRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i176.StoreRepositoryInterface>(
      () => _i178.ProductionStoreRepository(get<_i89.FirebaseFirestore>()),
      registerFor: {_prod});
  gh.lazySingleton<_i176.StoreRepositoryInterface>(
      () => _i179.MockStoreRepository(),
      registerFor: {_test});
  gh.factory<_i180.TagCardActorBloc>(() => _i180.TagCardActorBloc());
  gh.factory<_i181.TagCardCheckBloc>(() => _i181.TagCardCheckBloc());
  gh.lazySingleton<_i182.TagCoreRepositoryInterface>(
      () => _i183.DevelopmentTagRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i182.TagCoreRepositoryInterface>(
      () => _i184.MockTagRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i182.TagCoreRepositoryInterface>(
      () => _i185.ProductionTagRepository(get<_i89.FirebaseFirestore>()),
      registerFor: {_prod});
  gh.factory<_i186.TagManagementActorBloc>(
      () => _i186.TagManagementActorBloc());
  gh.factory<_i187.TagManagementFormBloc>(() => _i187.TagManagementFormBloc());
  gh.lazySingleton<_i188.TagManagementRepositoryInterface>(
      () => _i189.DevelopmentTagManagementRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i188.TagManagementRepositoryInterface>(
      () => _i190.ProductionTagManagementRepository(
          get<_i89.FirebaseFirestore>()),
      registerFor: {_prod});
  gh.lazySingleton<_i188.TagManagementRepositoryInterface>(
      () => _i191.MockTagManagementRepository(),
      registerFor: {_test});
  gh.factory<_i192.TagManagementWatcherBloc>(
      () => _i192.TagManagementWatcherBloc());
  gh.factory<_i193.TagSelectorBloc>(() => _i193.TagSelectorBloc());
  gh.lazySingleton<_i194.UnBlockUser>(
      () => _i194.UnBlockUser(get<_i142.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i194.UnBlockUser>(() => _i24.MockUnBlockUser(),
      registerFor: {_test});
  gh.lazySingleton<_i195.UnFollowUser>(
      () => _i195.UnFollowUser(get<_i142.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i195.UnFollowUser>(() => _i24.MockUnFollowUser(),
      registerFor: {_test});
  gh.factory<_i196.UserActorBloc>(() => _i196.UserActorBloc());
  gh.lazySingleton<_i197.WatchAllAchievements>(
      () => _i21.MockGetAllAchievements(),
      registerFor: {_test});
  gh.lazySingleton<_i197.WatchAllAchievements>(
      () =>
          _i197.WatchAllAchievements(get<_i8.AchievementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i198.WatchAllTags>(() => _i15.MockGetAllTags(),
      registerFor: {_test});
  gh.lazySingleton<_i198.WatchAllTags>(
      () => _i198.WatchAllTags(get<_i182.TagCoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i199.WatchBlockedUsers>(() => _i24.MockLoadBlockedUsers(),
      registerFor: {_test});
  gh.lazySingleton<_i199.WatchBlockedUsers>(
      () => _i199.WatchBlockedUsers(get<_i142.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i200.WatchExperienceComments>(
      () => _i53.MockGetExperienceComments(),
      registerFor: {_test});
  gh.lazySingleton<_i200.WatchExperienceComments>(
      () =>
          _i200.WatchExperienceComments(get<_i35.CommentRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i201.WatchExperiencesCreated>(
      () => _i201.WatchExperiencesCreated(
          get<_i142.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i201.WatchExperiencesCreated>(
      () => _i24.MockLoadExperiencesCreated(),
      registerFor: {_test});
  gh.lazySingleton<_i202.WatchExperiencesDone>(
      () => _i24.MockLoadExperiencesDone(),
      registerFor: {_test});
  gh.lazySingleton<_i202.WatchExperiencesDone>(
      () => _i202.WatchExperiencesDone(get<_i142.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i203.WatchExperiencesLiked>(
      () => _i24.MockLoadExperiencesLiked(),
      registerFor: {_test});
  gh.lazySingleton<_i203.WatchExperiencesLiked>(
      () =>
          _i203.WatchExperiencesLiked(get<_i142.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i204.WatchFeed>(
      () => _i204.WatchFeed(get<_i119.MainFeedRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i204.WatchFeed>(() => _i205.MockFillFeed(),
      registerFor: {_test});
  gh.lazySingleton<_i206.WatchFollowedUsers>(
      () => _i206.WatchFollowedUsers(get<_i142.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i206.WatchFollowedUsers>(() => _i24.MockLoadFollowedUsers(),
      registerFor: {_test});
  gh.lazySingleton<_i207.WatchFollowingUsers>(
      () => _i24.MockLoadFollowingUsers(),
      registerFor: {_test});
  gh.lazySingleton<_i207.WatchFollowingUsers>(
      () => _i207.WatchFollowingUsers(get<_i142.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i208.WatchNotifications>(() => _i31.MockLoadNotifications(),
      registerFor: {_test});
  gh.lazySingleton<_i208.WatchNotifications>(
      () => _i208.WatchNotifications(
          get<_i128.NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i209.WatchOwnedItems>(
      () => _i209.WatchOwnedItems(get<_i176.StoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i210.WatchPurchasableItems>(
      () => _i210.WatchPurchasableItems(get<_i176.StoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.factory<_i211.WatchPurchasableItemsBloc>(
      () => _i211.WatchPurchasableItemsBloc());
  gh.lazySingleton<_i212.WatchRecommendedExperiences>(
      () => _i212.WatchRecommendedExperiences(
          get<_i82.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i213.WatchSearchExperiencesByDifficulty>(
      () => _i213.WatchSearchExperiencesByDifficulty(
          get<_i168.SearchRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i213.WatchSearchExperiencesByDifficulty>(
      () => _i214.MockSearchExperiencesByDifficulty(),
      registerFor: {_test});
  gh.lazySingleton<_i215.WatchSearchExperiencesByName>(
      () => _i215.WatchSearchExperiencesByName(
          get<_i168.SearchRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i215.WatchSearchExperiencesByName>(
      () => _i214.MockSearchExperiencesByName(),
      registerFor: {_test});
  gh.lazySingleton<_i216.WatchSearchExperiencesByTags>(
      () => _i216.WatchSearchExperiencesByTags(
          get<_i168.SearchRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i216.WatchSearchExperiencesByTags>(
      () => _i214.MockSearchExperiencesByTags(),
      registerFor: {_test});
  gh.lazySingleton<_i217.WatchSearchTagsByName>(
      () => _i214.MockSearchTagsByName(),
      registerFor: {_test});
  gh.lazySingleton<_i217.WatchSearchTagsByName>(
      () => _i217.WatchSearchTagsByName(get<_i168.SearchRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i218.WatchSearchUsersByName>(
      () => _i214.MockSearchUsersByName(),
      registerFor: {_test});
  gh.lazySingleton<_i218.WatchSearchUsersByName>(
      () =>
          _i218.WatchSearchUsersByName(get<_i168.SearchRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i219.WatchSearchUsersByUsername>(
      () => _i219.WatchSearchUsersByUsername(
          get<_i168.SearchRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i219.WatchSearchUsersByUsername>(
      () => _i214.MockSearchUsersByUsername(),
      registerFor: {_test});
  gh.lazySingleton<_i220.WatchTagsByCreator>(
      () => _i220.WatchTagsByCreator(get<_i182.TagCoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i220.WatchTagsByCreator>(() => _i15.MockGetTagsByCreator(),
      registerFor: {_test});
  gh.lazySingleton<_i221.WatchUserAchievements>(
      () =>
          _i221.WatchUserAchievements(get<_i142.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i221.WatchUserAchievements>(
      () => _i24.MockLoadUserAchievements(),
      registerFor: {_test});
  gh.lazySingleton<_i222.WatchUserComments>(
      () => _i222.WatchUserComments(get<_i35.CommentRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i222.WatchUserComments>(() => _i53.MockGetUserComments(),
      registerFor: {_test});
  gh.lazySingleton<_i223.WatchUserInterests>(() => _i24.MockLoadUserInterests(),
      registerFor: {_test});
  gh.lazySingleton<_i223.WatchUserInterests>(
      () => _i223.WatchUserInterests(get<_i142.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i224.WatchUserLog>(
      () => _i224.WatchUserLog(get<_i73.ExperienceLogRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i224.WatchUserLog>(() => _i13.MockLoadUserLog(),
      registerFor: {_test});
  gh.lazySingleton<_i12.AddExperienceToLog>(
      () =>
          _i12.AddExperienceToLog(get<_i73.ExperienceLogRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i14.AddTagToInterests>(
      () => _i14.AddTagToInterests(get<_i182.TagCoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i17.AuthenticationRepositoryInterface>(
      () => _i225.ProductionAuthenticationRepository(get<_i88.FirebaseAuth>(),
          get<_i105.GoogleSignIn>(), get<_i89.FirebaseFirestore>()),
      registerFor: {_prod});
  gh.lazySingleton<_i23.BlockUser>(
      () => _i23.BlockUser(get<_i142.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i226.BuyCoins>(
      () => _i226.BuyCoins(get<_i176.StoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i227.BuyItem>(
      () => _i227.BuyItem(get<_i176.StoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i30.CheckNotification>(
      () =>
          _i30.CheckNotification(get<_i128.NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i35.CommentRepositoryInterface>(
      () => _i228.ProductionCommentRepository(get<_i89.FirebaseFirestore>()),
      registerFor: {_prod});
  gh.lazySingleton<_i44.CreateExperience>(
      () => _i44.CreateExperience(
          get<_i79.ExperienceManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i47.CreateTag>(
      () => _i47.CreateTag(get<_i188.TagManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i54.DeleteExperience>(
      () => _i54.DeleteExperience(get<_i142.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i55.DeleteNotification>(
      () =>
          _i55.DeleteNotification(get<_i128.NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i56.DeleteTag>(
      () => _i56.DeleteTag(get<_i188.TagManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i57.DeleteUser>(
      () => _i57.DeleteUser(get<_i155.RemoteOptionsRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i59.DeleteUserNotifications>(
      () => _i59.DeleteUserNotifications(
          get<_i128.NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i60.DislikeExperience>(
      () => _i60.DislikeExperience(
          get<_i82.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i61.DismissExperienceFromLog>(
      () => _i61.DismissExperienceFromLog(
          get<_i73.ExperienceLogRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i62.DismissTagFromInterests>(
      () =>
          _i62.DismissTagFromInterests(get<_i182.TagCoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i65.EditExperience>(
      () => _i65.EditExperience(
          get<_i79.ExperienceManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i66.EditTag>(
      () => _i66.EditTag(get<_i188.TagManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i67.EditUser>(
      () => _i67.EditUser(get<_i142.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i73.ExperienceLogRepositoryInterface>(
      () => _i229.ProductionExperienceLogRepository(
          get<_i89.FirebaseFirestore>()),
      registerFor: {_prod});
  gh.lazySingleton<_i79.ExperienceManagementRepositoryInterface>(
      () => _i230.ProductionExperienceManagementRepository(
          get<_i89.FirebaseFirestore>()),
      registerFor: {_prod});
  gh.lazySingleton<_i82.ExperienceNavigationRepositoryInterface>(
      () => _i231.ProductionExperienceNavigationRepository(
          get<_i89.FirebaseFirestore>()),
      registerFor: {_prod});
  gh.lazySingleton<_i91.FollowUser>(
      () => _i91.FollowUser(get<_i142.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i97.GetAmountOfFollowers>(
      () => _i97.GetAmountOfFollowers(get<_i142.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i232.GetPublicKey>(
      () => _i232.GetPublicKey(get<_i148.PublicKeyRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i103.GetTag>(
      () => _i103.GetTag(get<_i188.TagManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i104.GetTagCreator>(
      () => _i104.GetTagCreator(get<_i182.TagCoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i109.LoadUser>(
      () => _i109.LoadUser(get<_i142.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  return get;
}

class _$FirebaseInjectableModule extends _i233.FirebaseInjectableModule {}
