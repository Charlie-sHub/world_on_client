// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i81;
import 'package:firebase_auth/firebase_auth.dart' as _i80;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i96;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i110;

import 'application/achievement_management/achievement_management_actor/achievement_management_actor_bloc.dart'
    as _i3;
import 'application/achievement_management/achievement_management_form/achievement_management_form_bloc.dart'
    as _i4;
import 'application/achievement_management/achievement_management_watcher/achievement_management_watcher_bloc.dart'
    as _i5;
import 'application/authentication/authentication/authentication_bloc.dart' as _i15;
import 'application/authentication/forgotten_password_form/forgotten_password_form_bloc.dart'
    as _i84;
import 'application/authentication/log_in_form/log_in_form_bloc.dart' as _i107;
import 'application/authentication/registration_form/registration_form_bloc.dart' as _i147;
import 'application/comments/comment_actor/comment_actor_bloc.dart' as _i31;
import 'application/comments/comment_form/comment_form_bloc.dart' as _i32;
import 'application/comments/comment_watcher/comment_watcher_bloc.dart' as _i36;
import 'application/core/app_bar_title/app_bar_title_bloc.dart' as _i14;
import 'application/core/experience_add_to_log_actor/experience_add_to_log_actor_bloc.dart' as _i62;
import 'application/core/share_experience_internally/share_experience_internally_bloc.dart'
    as _i172;
import 'application/core/user_profile_button_watcher/user_profile_button_watcher_bloc.dart'
    as _i196;
import 'application/core/watch_current_user/watch_current_user_bloc.dart' as _i201;
import 'application/experience_log/experience_log_watcher/experience_log_watcher_bloc.dart' as _i69;
import 'application/experience_management/experience_editing_form/experience_editing_form_bloc.dart'
    as _i63;
import 'application/experience_management/experience_management_actor/experience_management_actor_bloc.dart'
    as _i70;
import 'application/experience_management/experience_management_form/experience_management_form_bloc.dart'
    as _i71;
import 'application/experience_management/objective_form/objective_form_bloc.dart' as _i126;
import 'application/experience_management/objectives_creation/objectives_creation_bloc.dart'
    as _i127;
import 'application/experience_management/reward_form/reward_form_bloc.dart' as _i154;
import 'application/experience_management/rewards_creation/rewards_creation_bloc.dart' as _i156;
import 'application/experience_navigation/experience_finish_actor/experience_finish_actor_bloc.dart'
    as _i64;
import 'application/experience_navigation/experience_like_actor/experience_like_actor_bloc.dart'
    as _i65;
import 'application/experience_navigation/experience_navigation_watcher/experience_navigation_watcher_bloc.dart'
    as _i78;
import 'application/experience_navigation/map_controller/map_controller_bloc.dart' as _i116;
import 'application/experience_navigation/objectives_tracker/objectives_tracker_bloc.dart' as _i128;
import 'application/experience_navigation/rate_experience_difficulty_actor/rate_experience_difficulty_actor_bloc.dart'
    as _i144;
import 'application/experience_navigation/recommended_experiences_watcher/recommended_experiences_watcher_bloc.dart'
    as _i145;
import 'application/main_feed/main_feed_watcher/main_feed_watcher_bloc.dart' as _i115;
import 'application/navigation/navigation_actor/navigation_actor_bloc.dart' as _i117;
import 'application/notifications/new_notifications_watcher/new_notifications_watcher_bloc.dart'
    as _i118;
import 'application/notifications/notification_actor/notification_actor_bloc.dart' as _i120;
import 'application/notifications/notifications_watcher/notifications_watcher_bloc.dart' as _i125;
import 'application/options/options_form/options_form_bloc.dart' as _i129;
import 'application/options/user_actor/user_actor_bloc.dart' as _i195;
import 'application/profile/block_actor/block_actor_bloc.dart' as _i21;
import 'application/profile/blocked_watcher/blocked_watcher_bloc.dart' as _i24;
import 'application/profile/follow_actor/follow_actor_bloc.dart' as _i82;
import 'application/profile/profile_achievements_watcher/profile_achievements_watcher_bloc.dart'
    as _i131;
import 'application/profile/profile_editing_form/profile_editing_form_bloc.dart' as _i132;
import 'application/profile/profile_experiences_watcher/profile_experiences_watcher_bloc.dart'
    as _i133;
import 'application/profile/profile_foreign_or_own/profile_foreign_or_own_bloc.dart' as _i134;
import 'application/profile/profile_interests_watcher/profile_interests_watcher_bloc.dart' as _i135;
import 'application/profile/profile_users_watcher/profile_users_watcher_bloc.dart' as _i140;
import 'application/profile/profile_watcher/profile_watcher_bloc.dart' as _i141;
import 'application/search/search_by_name_form/search_by_name_form_bloc.dart' as _i159;
import 'application/search/search_experiences_by_difficulty/search_experiences_by_difficulty_bloc.dart'
    as _i160;
import 'application/search/search_experiences_by_name_watcher/search_experiences_by_name_watcher_bloc.dart'
    as _i161;
import 'application/search/search_experiences_by_tags/search_experiences_by_tags_bloc.dart'
    as _i162;
import 'application/search/search_tags_by_name_watcher/search_tags_by_name_watcher_bloc.dart'
    as _i167;
import 'application/search/search_to_share/search_to_share_bloc.dart' as _i169;
import 'application/search/search_users_by_name_watcher/search_users_by_name_watcher_bloc.dart'
    as _i170;
import 'application/search/tag_selector/tag_selector_bloc.dart' as _i191;
import 'application/store/buy_coins/buy_coins_bloc.dart' as _i25;
import 'application/store/buy_item/buy_item_bloc.dart' as _i26;
import 'application/store/buy_promotion_plan_actor/buy_promotion_plan_actor_bloc.dart' as _i27;
import 'application/store/load_user/load_user_bloc.dart' as _i101;
import 'application/store/promotion_plans_loader/promotion_plans_loader_bloc.dart' as _i142;
import 'application/store/purchasable_items_watcher/watch_purchasable_items_bloc.dart' as _i215;
import 'application/store/store_app_bar_title/store_app_bar_title_bloc.dart' as _i173;
import 'application/store/store_navigation_actor/store_navigation_actor_bloc.dart' as _i174;
import 'application/tag_management/tag_card_actor/tag_card_actor_bloc.dart' as _i179;
import 'application/tag_management/tag_management_actor/tag_management_actor_bloc.dart' as _i184;
import 'application/tag_management/tag_management_form/tag_management_form_bloc.dart' as _i185;
import 'application/tag_management/tag_management_watcher/tag_management_watcher_bloc.dart'
    as _i190;
import 'data/achievement_management/repository/development_achievement_repository.dart' as _i7;
import 'data/achievement_management/repository/production_achievement_repository.dart' as _i8;
import 'data/authentication/repository/development_authentication_repository.dart' as _i17;
import 'data/authentication/repository/production_authentication_repository.dart' as _i229;
import 'data/comments/repository/development_comment_repository.dart' as _i35;
import 'data/comments/repository/production_comment_repository.dart' as _i233;
import 'data/core/misc/firebase/cloud_storage/cloud_storage_service.dart' as _i30;
import 'data/core/modules/firebase_injectable_module.dart' as _i241;
import 'data/core/modules/google_injectable_module.dart' as _i242;
import 'data/core/modules/logger_injectable_module.dart' as _i243;
import 'data/core/repository/development_core_repository.dart' as _i38;
import 'data/core/repository/development_geo_location_repository.dart' as _i239;
import 'data/core/repository/production_core_repository.dart' as _i234;
import 'data/core/repository/production_geo_location_repository.dart' as _i238;
import 'data/experience_log/repository/development_experience_log_repository.dart' as _i67;
import 'data/experience_log/repository/production_experience_log_repository.dart' as _i235;
import 'data/experience_management/repository/development_experience_management_repository.dart'
    as _i74;
import 'data/experience_management/repository/production_experience_management_repository.dart'
    as _i236;
import 'data/experience_navigation/repository/development_experience_navigation_repository.dart'
    as _i77;
import 'data/experience_navigation/repository/production_experience_navigation_repository.dart'
    as _i237;
import 'data/main_feed/repository/development_main_feed_repository.dart' as _i113;
import 'data/main_feed/repository/production_main_feed_repository.dart' as _i114;
import 'data/notifications/repository/development_notification_repository.dart' as _i123;
import 'data/notifications/repository/production_notification_repository.dart' as _i124;
import 'data/options/repository/development_local_options_repository.dart' as _i104;
import 'data/options/repository/development_remote_options_repository.dart' as _i149;
import 'data/options/repository/production_local_options_repository.dart' as _i105;
import 'data/options/repository/production_remote_options_repository.dart' as _i151;
import 'data/profile/repository/development_profile_repository.dart' as _i137;
import 'data/profile/repository/production_profile_repository.dart' as _i138;
import 'data/search/repository/development_search_repository.dart' as _i165;
import 'data/search/repository/production_search_repository.dart' as _i166;
import 'data/store/repository/development_store_repository.dart' as _i176;
import 'data/store/repository/production_store_repository.dart' as _i178;
import 'data/tag_management/repository/development_tag_management_repository.dart' as _i188;
import 'data/tag_management/repository/development_tag_repository.dart' as _i183;
import 'data/tag_management/repository/production_tag_management_repository.dart' as _i187;
import 'data/tag_management/repository/production_tag_repository.dart' as _i181;
import 'domain/achievement_management/repository/achievement_repository_interface.dart' as _i6;
import 'domain/achievement_management/repository/achievement_repository_mock.dart' as _i9;
import 'domain/achievement_management/use_case/award_achievement.dart' as _i19;
import 'domain/achievement_management/use_case/create_achievement.dart' as _i40;
import 'domain/achievement_management/use_case/delete_achievement.dart' as _i44;
import 'domain/achievement_management/use_case/edit_achievement.dart' as _i57;
import 'domain/achievement_management/use_case/get_achievement.dart' as _i87;
import 'domain/achievement_management/use_case/use_case_mocks.dart' as _i20;
import 'domain/achievement_management/use_case/watch_all_achievements.dart' as _i197;
import 'domain/authentication/repository/authentication_repository_interface.dart' as _i16;
import 'domain/authentication/repository/authentication_repository_mock.dart' as _i18;
import 'domain/authentication/use_case/get_logged_in_user.dart' as _i91;
import 'domain/authentication/use_case/log_in.dart' as _i106;
import 'domain/authentication/use_case/log_in_google.dart' as _i108;
import 'domain/authentication/use_case/log_out.dart' as _i109;
import 'domain/authentication/use_case/register.dart' as _i146;
import 'domain/authentication/use_case/reset_password.dart' as _i153;
import 'domain/authentication/use_case/use_case_mocks.dart' as _i92;
import 'domain/comments/repository/comment_repository_interface.dart' as _i33;
import 'domain/comments/repository/comment_repository_mock.dart' as _i34;
import 'domain/comments/use_case/delete_comment.dart' as _i45;
import 'domain/comments/use_case/edit_comment.dart' as _i58;
import 'domain/comments/use_case/post_comment.dart' as _i130;
import 'domain/comments/use_case/use_case_mocks.dart' as _i46;
import 'domain/comments/use_case/watch_experience_comments.dart' as _i202;
import 'domain/comments/use_case/watch_user_comments.dart' as _i225;
import 'domain/core/repository/core_repository_interface.dart' as _i37;
import 'domain/core/repository/core_repository_mock.dart' as _i39;
import 'domain/core/repository/geo_location_repository_interface.dart' as _i85;
import 'domain/core/repository/geo_location_repository_mock.dart' as _i86;
import 'domain/core/use_case/get_current_location.dart' as _i88;
import 'domain/core/use_case/is_logged_in_user.dart' as _i97;
import 'domain/core/use_case/use_case.dart' as _i119;
import 'domain/core/use_case/use_case_mocks.dart' as _i89;
import 'domain/core/use_case/watch_current_user.dart' as _i200;
import 'domain/experience_log/repository/experience_log_repository_interface.dart' as _i66;
import 'domain/experience_log/repository/experience_log_repository_mock.dart' as _i68;
import 'domain/experience_log/use_case/add_experience_to_log.dart' as _i10;
import 'domain/experience_log/use_case/dismiss_experience_from_log.dart' as _i55;
import 'domain/experience_log/use_case/use_case_mocks.dart' as _i11;
import 'domain/experience_log/use_case/watch_user_log.dart' as _i227;
import 'domain/experience_management/repository/experience_management_repository_interface.dart'
    as _i72;
import 'domain/experience_management/repository/experience_management_repository_mock.dart' as _i73;
import 'domain/experience_management/use_case/create_experience.dart' as _i41;
import 'domain/experience_management/use_case/delete_experience.dart' as _i47;
import 'domain/experience_management/use_case/edit_experience.dart' as _i59;
import 'domain/experience_management/use_case/get_experience.dart' as _i90;
import 'domain/experience_management/use_case/use_case_mocks.dart' as _i42;
import 'domain/experience_navigation/repository/experience_navigation_repository_interface.dart'
    as _i75;
import 'domain/experience_navigation/repository/experience_navigation_repository_mock.dart' as _i76;
import 'domain/experience_navigation/use_case/accomplish_objective.dart' as _i228;
import 'domain/experience_navigation/use_case/dislike_experience.dart' as _i53;
import 'domain/experience_navigation/use_case/finish_experience.dart' as _i79;
import 'domain/experience_navigation/use_case/like_experience.dart' as _i98;
import 'domain/experience_navigation/use_case/load_surrounding_experiences.dart' as _i99;
import 'domain/experience_navigation/use_case/rate_difficulty.dart' as _i143;
import 'domain/experience_navigation/use_case/reward_user.dart' as _i155;
import 'domain/experience_navigation/use_case/save_user_progress.dart' as _i158;
import 'domain/experience_navigation/use_case/unaccomplish_objective.dart' as _i192;
import 'domain/experience_navigation/use_case/use_case_mocks.dart' as _i54;
import 'domain/experience_navigation/use_case/watch_recommended_experiences.dart' as _i216;
import 'domain/main_feed/repository/main_feed_repository_interface.dart' as _i111;
import 'domain/main_feed/repository/main_feed_repository_mock.dart' as _i112;
import 'domain/main_feed/use_case/use_case_mocks.dart' as _i207;
import 'domain/main_feed/use_case/watch_feed.dart' as _i206;
import 'domain/notifications/repository/notification_repository_interface.dart' as _i121;
import 'domain/notifications/repository/notification_repository_mock.dart' as _i122;
import 'domain/notifications/use_case/check_notification.dart' as _i28;
import 'domain/notifications/use_case/delete_notification.dart' as _i48;
import 'domain/notifications/use_case/delete_user_notifications.dart' as _i52;
import 'domain/notifications/use_case/send_notification.dart' as _i171;
import 'domain/notifications/use_case/use_case_mocks.dart' as _i29;
import 'domain/notifications/use_case/watch_if_new_notifications.dart' as _i210;
import 'domain/notifications/use_case/watch_notifications.dart' as _i211;
import 'domain/options/repository/local_options_repository_interface.dart' as _i102;
import 'domain/options/repository/local_options_repository_mock.dart' as _i103;
import 'domain/options/repository/remote_options_repository_interface.dart' as _i148;
import 'domain/options/repository/remote_options_repository_mock.dart' as _i150;
import 'domain/options/use_case/delete_user.dart' as _i50;
import 'domain/options/use_case/save_global_options.dart' as _i157;
import 'domain/options/use_case/use_case_mocks.dart' as _i51;
import 'domain/profile/repository/profile_repository_interface.dart' as _i136;
import 'domain/profile/repository/profile_repository_mock.dart' as _i139;
import 'domain/profile/use_case/block_user.dart' as _i22;
import 'domain/profile/use_case/edit_user.dart' as _i61;
import 'domain/profile/use_case/follow_user.dart' as _i83;
import 'domain/profile/use_case/load_user.dart' as _i100;
import 'domain/profile/use_case/remove_experience_liked.dart' as _i152;
import 'domain/profile/use_case/un_block_user.dart' as _i193;
import 'domain/profile/use_case/un_follow_user.dart' as _i194;
import 'domain/profile/use_case/use_case_mocks.dart' as _i23;
import 'domain/profile/use_case/watch_blocked_users.dart' as _i199;
import 'domain/profile/use_case/watch_experiences_created.dart' as _i203;
import 'domain/profile/use_case/watch_experiences_done.dart' as _i204;
import 'domain/profile/use_case/watch_experiences_liked.dart' as _i205;
import 'domain/profile/use_case/watch_followed_users.dart' as _i208;
import 'domain/profile/use_case/watch_following_users.dart' as _i209;
import 'domain/profile/use_case/watch_profile.dart' as _i213;
import 'domain/profile/use_case/watch_user_achievements.dart' as _i224;
import 'domain/profile/use_case/watch_user_interests.dart' as _i226;
import 'domain/search/repository/search_repository_interface.dart' as _i163;
import 'domain/search/repository/search_repository_mock.dart' as _i164;
import 'domain/search/use_case/search_to_share.dart' as _i168;
import 'domain/search/use_case/use_case_mocks.dart' as _i218;
import 'domain/search/use_case/watch_search_experiences_by_difficulty.dart' as _i217;
import 'domain/search/use_case/watch_search_experiences_by_name.dart' as _i219;
import 'domain/search/use_case/watch_search_experiences_by_tags.dart' as _i220;
import 'domain/search/use_case/watch_search_tags_by_name.dart' as _i221;
import 'domain/search/use_case/watch_search_users_by_name.dart' as _i222;
import 'domain/store/repository/store_repository_interface.dart' as _i175;
import 'domain/store/repository/store_repository_mock.dart' as _i177;
import 'domain/store/use_case/buy_coin.dart' as _i230;
import 'domain/store/use_case/buy_item.dart' as _i231;
import 'domain/store/use_case/buy_promotion_plan.dart' as _i232;
import 'domain/store/use_case/load_promotion_plans.dart' as _i240;
import 'domain/store/use_case/watch_owned_items.dart' as _i212;
import 'domain/store/use_case/watch_purchasable_items.dart' as _i214;
import 'domain/tag_management/repository/tag_management_repository_interface.dart' as _i186;
import 'domain/tag_management/repository/tag_management_repository_mock.dart' as _i189;
import 'domain/tag_management/repository/tag_repository_interface.dart' as _i180;
import 'domain/tag_management/repository/tag_repository_mock.dart' as _i182;
import 'domain/tag_management/use_case/add_tag_to_interests.dart' as _i12;
import 'domain/tag_management/use_case/create_tag.dart' as _i43;
import 'domain/tag_management/use_case/delete_tag.dart' as _i49;
import 'domain/tag_management/use_case/dismiss_tag_from_interests.dart' as _i56;
import 'domain/tag_management/use_case/edit_tag.dart' as _i60;
import 'domain/tag_management/use_case/get_tag.dart' as _i93;
import 'domain/tag_management/use_case/get_tag_creator.dart' as _i94;
import 'domain/tag_management/use_case/get_tags.dart' as _i95;
import 'domain/tag_management/use_case/use_case_mocks.dart' as _i13;
import 'domain/tag_management/use_case/watch_all_tags.dart' as _i198;
import 'domain/tag_management/use_case/watch_tags_by_creator.dart' as _i223;

const String _dev = 'dev';
const String _prod = 'prod';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final googleInjectableModule = _$GoogleInjectableModule();
  final loggerInjectableModule = _$LoggerInjectableModule();
  gh.factory<_i3.AchievementManagementActorBloc>(() => _i3.AchievementManagementActorBloc());
  gh.factory<_i4.AchievementManagementFormBloc>(() => _i4.AchievementManagementFormBloc());
  gh.factory<_i5.AchievementManagementWatcherBloc>(() => _i5.AchievementManagementWatcherBloc());
  gh.lazySingleton<_i6.AchievementRepositoryInterface>(() => _i7.DevelopmentAchievementRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i6.AchievementRepositoryInterface>(() => _i8.ProductionAchievementRepository(),
      registerFor: {_prod});
  gh.lazySingleton<_i6.AchievementRepositoryInterface>(() => _i9.MockAchievementRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i10.AddExperienceToLog>(() => _i11.MockAddExperienceToLog(),
      registerFor: {_test});
  gh.lazySingleton<_i12.AddTagToInterests>(() => _i13.MockAddTagToInterests(),
      registerFor: {_test});
  gh.factory<_i14.AppBarTitleBloc>(() => _i14.AppBarTitleBloc());
  gh.factory<_i15.AuthenticationBloc>(() => _i15.AuthenticationBloc());
  gh.lazySingleton<_i16.AuthenticationRepositoryInterface>(
      () => _i17.DevelopmentAuthenticationRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i16.AuthenticationRepositoryInterface>(
      () => _i18.MockAuthenticationRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i19.AwardAchievement>(
      () => _i19.AwardAchievement(get<_i6.AchievementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i19.AwardAchievement>(() => _i20.MockAwardAchievement(), registerFor: {_test});
  gh.factory<_i21.BlockActorBloc>(() => _i21.BlockActorBloc());
  gh.lazySingleton<_i22.BlockUser>(() => _i23.MockBlockUser(), registerFor: {_test});
  gh.factory<_i24.BlockedWatcherBloc>(() => _i24.BlockedWatcherBloc());
  gh.factory<_i25.BuyCoinsBloc>(() => _i25.BuyCoinsBloc());
  gh.factory<_i26.BuyItemBloc>(() => _i26.BuyItemBloc());
  gh.factory<_i27.BuyPromotionPlanActorBloc>(() => _i27.BuyPromotionPlanActorBloc());
  gh.lazySingleton<_i28.CheckNotification>(() => _i29.MockCheckNotification(),
      registerFor: {_test});
  gh.lazySingleton<_i30.CloudStorageService>(() => _i30.CloudStorageService());
  gh.factory<_i31.CommentActorBloc>(() => _i31.CommentActorBloc());
  gh.factory<_i32.CommentFormBloc>(() => _i32.CommentFormBloc());
  gh.lazySingleton<_i33.CommentRepositoryInterface>(() => _i34.MockCommentRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i33.CommentRepositoryInterface>(() => _i35.DevelopmentCommentRepository(),
      registerFor: {_dev});
  gh.factory<_i36.CommentWatcherBloc>(() => _i36.CommentWatcherBloc());
  gh.lazySingleton<_i37.CoreRepositoryInterface>(() => _i38.DevelopmentCoreRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i37.CoreRepositoryInterface>(() => _i39.MockCoreRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i40.CreateAchievement>(
      () => _i40.CreateAchievement(get<_i6.AchievementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i40.CreateAchievement>(() => _i20.MockCreateAchievement(),
      registerFor: {_test});
  gh.lazySingleton<_i41.CreateExperience>(() => _i42.MockCreateExperience(), registerFor: {_test});
  gh.lazySingleton<_i43.CreateTag>(() => _i13.MockCreateTag(), registerFor: {_test});
  gh.lazySingleton<_i44.DeleteAchievement>(
      () => _i44.DeleteAchievement(get<_i6.AchievementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i44.DeleteAchievement>(() => _i20.MockDeleteAchievement(),
      registerFor: {_test});
  gh.lazySingleton<_i45.DeleteComment>(
      () => _i45.DeleteComment(get<_i33.CommentRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i45.DeleteComment>(() => _i46.MockDeleteComment(), registerFor: {_test});
  gh.lazySingleton<_i47.DeleteExperience>(() => _i42.MockDeleteExperience(), registerFor: {_test});
  gh.lazySingleton<_i48.DeleteNotification>(() => _i29.MockDeleteNotification(),
      registerFor: {_test});
  gh.lazySingleton<_i49.DeleteTag>(() => _i13.MockDeleteTag(), registerFor: {_test});
  gh.lazySingleton<_i50.DeleteUser>(() => _i51.MockDeleteUser(), registerFor: {_test});
  gh.lazySingleton<_i52.DeleteUserNotifications>(() => _i29.MockDeleteUserNotifications(),
      registerFor: {_test});
  gh.lazySingleton<_i53.DislikeExperience>(() => _i54.MockDislikeExperience(),
      registerFor: {_test});
  gh.lazySingleton<_i55.DismissExperienceFromLog>(() => _i11.MockDismissExperienceFromLog(),
      registerFor: {_test});
  gh.lazySingleton<_i56.DismissTagFromInterests>(() => _i13.MockDismissTagFromInterests(),
      registerFor: {_test});
  gh.lazySingleton<_i57.EditAchievement>(
      () => _i57.EditAchievement(get<_i6.AchievementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i57.EditAchievement>(() => _i20.MockEditAchievement(), registerFor: {_test});
  gh.lazySingleton<_i58.EditComment>(() => _i46.MockEditComment(), registerFor: {_test});
  gh.lazySingleton<_i58.EditComment>(() => _i58.EditComment(get<_i33.CommentRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i59.EditExperience>(() => _i42.MockEditExperience(), registerFor: {_test});
  gh.lazySingleton<_i60.EditTag>(() => _i13.MockEditTag(), registerFor: {_test});
  gh.lazySingleton<_i61.EditUser>(() => _i23.MockEditUser(), registerFor: {_test});
  gh.factory<_i62.ExperienceAddToLogActorBloc>(() => _i62.ExperienceAddToLogActorBloc());
  gh.factory<_i63.ExperienceEditingFormBloc>(() => _i63.ExperienceEditingFormBloc());
  gh.factory<_i64.ExperienceFinishActorBloc>(() => _i64.ExperienceFinishActorBloc());
  gh.factory<_i65.ExperienceLikeActorBloc>(() => _i65.ExperienceLikeActorBloc());
  gh.lazySingleton<_i66.ExperienceLogRepositoryInterface>(
      () => _i67.DevelopmentExperienceLogRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i66.ExperienceLogRepositoryInterface>(() => _i68.MockExperienceLogRepository(),
      registerFor: {_test});
  gh.factory<_i69.ExperienceLogWatcherBloc>(() => _i69.ExperienceLogWatcherBloc());
  gh.factory<_i70.ExperienceManagementActorBloc>(() => _i70.ExperienceManagementActorBloc());
  gh.factory<_i71.ExperienceManagementFormBloc>(() => _i71.ExperienceManagementFormBloc());
  gh.lazySingleton<_i72.ExperienceManagementRepositoryInterface>(
      () => _i73.MockExperienceManagementRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i72.ExperienceManagementRepositoryInterface>(
      () => _i74.DevelopmentExperienceManagementRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i75.ExperienceNavigationRepositoryInterface>(
      () => _i76.MockExperienceNavigationRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i75.ExperienceNavigationRepositoryInterface>(
      () => _i77.DevelopmentExperienceNavigationRepository(),
      registerFor: {_dev});
  gh.factory<_i78.ExperienceNavigationWatcherBloc>(() => _i78.ExperienceNavigationWatcherBloc());
  gh.lazySingleton<_i79.FinishExperience>(
      () => _i79.FinishExperience(get<_i75.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i79.FinishExperience>(() => _i54.MockFinishExperience(), registerFor: {_test});
  gh.lazySingleton<_i80.FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i81.FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.factory<_i82.FollowActorBloc>(() => _i82.FollowActorBloc());
  gh.lazySingleton<_i83.FollowUser>(() => _i23.MockFollowUser(), registerFor: {_test});
  gh.factory<_i84.ForgottenPasswordFormBloc>(() => _i84.ForgottenPasswordFormBloc());
  gh.lazySingleton<_i85.GeoLocationRepositoryInterface>(() => _i86.MockGeoLocationRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i87.GetAchievement>(
      () => _i87.GetAchievement(get<_i6.AchievementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i87.GetAchievement>(() => _i20.MockGetAchievement(), registerFor: {_test});
  gh.lazySingleton<_i88.GetCurrentLocation>(() => _i89.MockGetCurrentLocation(),
      registerFor: {_test});
  gh.lazySingleton<_i88.GetCurrentLocation>(
      () => _i88.GetCurrentLocation(get<_i85.GeoLocationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i90.GetExperience>(() => _i42.MockGetExperience(), registerFor: {_test});
  gh.lazySingleton<_i90.GetExperience>(
      () => _i90.GetExperience(get<_i72.ExperienceManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i91.GetLoggedInUser>(() => _i92.MockGetLoggedInUser(), registerFor: {_test});
  gh.lazySingleton<_i91.GetLoggedInUser>(
      () => _i91.GetLoggedInUser(get<_i16.AuthenticationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i93.GetTag>(() => _i13.MockGetTag(), registerFor: {_test});
  gh.lazySingleton<_i94.GetTagCreator>(() => _i13.MockGetTagCreator(), registerFor: {_test});
  gh.lazySingleton<_i95.GetTags>(() => _i13.MockGetTags(), registerFor: {_test});
  gh.lazySingleton<_i96.GoogleSignIn>(() => googleInjectableModule.googleSignIn);
  gh.lazySingleton<_i97.IsLoggedInUser>(() => _i89.MockIsLoggedInUser(), registerFor: {_test});
  gh.lazySingleton<_i97.IsLoggedInUser>(() => _i97.IsLoggedInUser(), registerFor: {_dev, _prod});
  gh.lazySingleton<_i98.LikeExperience>(() => _i54.MockLikeExperience(), registerFor: {_test});
  gh.lazySingleton<_i98.LikeExperience>(
      () => _i98.LikeExperience(get<_i75.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i99.LoadSurroundingExperiences>(() => _i54.MockLoadSurroundingExperiences(),
      registerFor: {_test});
  gh.lazySingleton<_i99.LoadSurroundingExperiences>(
      () => _i99.LoadSurroundingExperiences(get<_i75.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i100.LoadUser>(() => _i23.MockLoadUser(), registerFor: {_test});
  gh.factory<_i101.LoadUserBloc>(() => _i101.LoadUserBloc());
  gh.lazySingleton<_i102.LocalOptionsRepositoryInterface>(() => _i103.MockLocalOptionsRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i102.LocalOptionsRepositoryInterface>(
      () => _i104.DevelopmentLocalOptionsRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i102.LocalOptionsRepositoryInterface>(
      () => _i105.ProductionLocalOptionsRepository(),
      registerFor: {_prod});
  gh.lazySingleton<_i106.LogIn>(() => _i106.LogIn(get<_i16.AuthenticationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i106.LogIn>(() => _i92.MockLogIn(), registerFor: {_test});
  gh.factory<_i107.LogInFormBloc>(() => _i107.LogInFormBloc());
  gh.lazySingleton<_i108.LogInGoogle>(
      () => _i108.LogInGoogle(get<_i16.AuthenticationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i108.LogInGoogle>(() => _i92.MockLogInGoogle(), registerFor: {_test});
  gh.lazySingleton<_i109.LogOut>(() => _i109.LogOut(get<_i16.AuthenticationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i109.LogOut>(() => _i92.MockLogOut(), registerFor: {_test});
  gh.lazySingleton<_i110.Logger>(() => loggerInjectableModule.logger);
  gh.lazySingleton<_i111.MainFeedRepositoryInterface>(() => _i112.MockMainFeedRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i111.MainFeedRepositoryInterface>(() => _i113.DevelopmentMainFeedRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i111.MainFeedRepositoryInterface>(
      () => _i114.ProductionMainFeedRepository(get<_i81.FirebaseFirestore>(), get<_i110.Logger>()),
      registerFor: {_prod});
  gh.factory<_i115.MainFeedWatcherBloc>(() => _i115.MainFeedWatcherBloc());
  gh.factory<_i116.MapControllerBloc>(() => _i116.MapControllerBloc());
  gh.factory<_i117.NavigationActorBloc>(() => _i117.NavigationActorBloc());
  gh.factory<_i118.NewNotificationsWatcherBloc>(() => _i118.NewNotificationsWatcherBloc());
  gh.lazySingleton<_i119.NoParams>(() => _i119.NoParams());
  gh.factory<_i120.NotificationActorBloc>(() => _i120.NotificationActorBloc());
  gh.lazySingleton<_i121.NotificationRepositoryInterface>(() => _i122.MockNotificationRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i121.NotificationRepositoryInterface>(
      () => _i123.DevelopmentNotificationRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i121.NotificationRepositoryInterface>(
      () => _i124.ProductionNotificationRepository(
          get<_i81.FirebaseFirestore>(), get<_i110.Logger>()),
      registerFor: {_prod});
  gh.factory<_i125.NotificationsWatcherBloc>(() => _i125.NotificationsWatcherBloc());
  gh.factory<_i126.ObjectiveFormBloc>(() => _i126.ObjectiveFormBloc());
  gh.factory<_i127.ObjectivesCreationBloc>(() => _i127.ObjectivesCreationBloc());
  gh.factory<_i128.ObjectivesTrackerBloc>(() => _i128.ObjectivesTrackerBloc());
  gh.factory<_i129.OptionsFormBloc>(() => _i129.OptionsFormBloc());
  gh.lazySingleton<_i130.PostComment>(() => _i46.MockPostComment(), registerFor: {_test});
  gh.lazySingleton<_i130.PostComment>(
      () => _i130.PostComment(get<_i33.CommentRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.factory<_i131.ProfileAchievementsWatcherBloc>(() => _i131.ProfileAchievementsWatcherBloc());
  gh.factory<_i132.ProfileEditingFormBloc>(() => _i132.ProfileEditingFormBloc());
  gh.factory<_i133.ProfileExperiencesWatcherBloc>(() => _i133.ProfileExperiencesWatcherBloc());
  gh.factory<_i134.ProfileForeignOrOwnBloc>(() => _i134.ProfileForeignOrOwnBloc());
  gh.factory<_i135.ProfileInterestsWatcherBloc>(() => _i135.ProfileInterestsWatcherBloc());
  gh.lazySingleton<_i136.ProfileRepositoryInterface>(() => _i137.DevelopmentProfileRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i136.ProfileRepositoryInterface>(
      () => _i138.ProductionProfileRepository(
          get<_i81.FirebaseFirestore>(), get<_i110.Logger>(), get<_i30.CloudStorageService>()),
      registerFor: {_prod});
  gh.lazySingleton<_i136.ProfileRepositoryInterface>(() => _i139.MockProfileRepository(),
      registerFor: {_test});
  gh.factory<_i140.ProfileUsersWatcherBloc>(() => _i140.ProfileUsersWatcherBloc());
  gh.factory<_i141.ProfileWatcherBloc>(() => _i141.ProfileWatcherBloc());
  gh.factory<_i142.PromotionPlansLoaderBloc>(() => _i142.PromotionPlansLoaderBloc());
  gh.lazySingleton<_i143.RateDifficulty>(
      () => _i143.RateDifficulty(get<_i75.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i143.RateDifficulty>(() => _i54.MockRateDifficulty(), registerFor: {_test});
  gh.factory<_i144.RateExperienceDifficultyActorBloc>(
      () => _i144.RateExperienceDifficultyActorBloc());
  gh.factory<_i145.RecommendedExperiencesWatcherBloc>(
      () => _i145.RecommendedExperiencesWatcherBloc());
  gh.lazySingleton<_i146.Register>(
      () => _i146.Register(get<_i16.AuthenticationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i146.Register>(() => _i92.MockRegister(), registerFor: {_test});
  gh.factory<_i147.RegistrationFormBloc>(() => _i147.RegistrationFormBloc());
  gh.lazySingleton<_i148.RemoteOptionsRepositoryInterface>(
      () => _i149.DevelopmentRemoteOptionsRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i148.RemoteOptionsRepositoryInterface>(
      () => _i150.MockRemoteOptionsRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i148.RemoteOptionsRepositoryInterface>(
      () => _i151.ProductionRemoteOptionsRepository(),
      registerFor: {_prod});
  gh.lazySingleton<_i152.RemoveExperienceLiked>(
      () => _i152.RemoveExperienceLiked(get<_i136.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i152.RemoveExperienceLiked>(() => _i23.MockRemoveExperienceLiked(),
      registerFor: {_test});
  gh.lazySingleton<_i153.ResetPassword>(
      () => _i153.ResetPassword(get<_i16.AuthenticationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.factory<_i154.RewardFormBloc>(() => _i154.RewardFormBloc());
  gh.lazySingleton<_i155.RewardUser>(() => _i54.MockRewardUser(), registerFor: {_test});
  gh.lazySingleton<_i155.RewardUser>(
      () => _i155.RewardUser(get<_i75.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.factory<_i156.RewardsCreationBloc>(() => _i156.RewardsCreationBloc());
  gh.lazySingleton<_i157.SaveGlobalOptions>(
      () => _i157.SaveGlobalOptions(get<_i148.RemoteOptionsRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i157.SaveGlobalOptions>(() => _i51.MockSaveGlobalOptions(),
      registerFor: {_test});
  gh.lazySingleton<_i158.SaveUserProgress>(
      () => _i158.SaveUserProgress(get<_i75.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.factory<_i159.SearchByNameFormBloc>(() => _i159.SearchByNameFormBloc());
  gh.factory<_i160.SearchExperiencesByDifficultyBloc>(
      () => _i160.SearchExperiencesByDifficultyBloc());
  gh.factory<_i161.SearchExperiencesByNameWatcherBloc>(
      () => _i161.SearchExperiencesByNameWatcherBloc());
  gh.factory<_i162.SearchExperiencesByTagsBloc>(() => _i162.SearchExperiencesByTagsBloc());
  gh.lazySingleton<_i163.SearchRepositoryInterface>(() => _i164.MockSearchRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i163.SearchRepositoryInterface>(() => _i165.DevelopmentSearchRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i163.SearchRepositoryInterface>(
      () => _i166.ProductionSearchRepository(get<_i81.FirebaseFirestore>(), get<_i110.Logger>()),
      registerFor: {_prod});
  gh.factory<_i167.SearchTagsByNameWatcherBloc>(() => _i167.SearchTagsByNameWatcherBloc());
  gh.lazySingleton<_i168.SearchToShare>(
      () => _i168.SearchToShare(get<_i163.SearchRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.factory<_i169.SearchToShareBloc>(() => _i169.SearchToShareBloc());
  gh.factory<_i170.SearchUsersByNameWatcherBloc>(() => _i170.SearchUsersByNameWatcherBloc());
  gh.lazySingleton<_i171.SendNotification>(() => _i29.MockSendNotification(), registerFor: {_test});
  gh.lazySingleton<_i171.SendNotification>(
      () => _i171.SendNotification(get<_i121.NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.factory<_i172.ShareExperienceInternallyBloc>(() => _i172.ShareExperienceInternallyBloc());
  gh.factory<_i173.StoreAppBarTitleBloc>(() => _i173.StoreAppBarTitleBloc());
  gh.factory<_i174.StoreNavigationActorBloc>(() => _i174.StoreNavigationActorBloc());
  gh.lazySingleton<_i175.StoreRepositoryInterface>(() => _i176.DevelopmentStoreRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i175.StoreRepositoryInterface>(() => _i177.MockStoreRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i175.StoreRepositoryInterface>(
      () => _i178.ProductionStoreRepository(get<_i81.FirebaseFirestore>(), get<_i110.Logger>()),
      registerFor: {_prod});
  gh.factory<_i179.TagCardActorBloc>(() => _i179.TagCardActorBloc());
  gh.lazySingleton<_i180.TagCoreRepositoryInterface>(
      () => _i181.ProductionTagRepository(get<_i81.FirebaseFirestore>(), get<_i110.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i180.TagCoreRepositoryInterface>(() => _i182.MockTagRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i180.TagCoreRepositoryInterface>(() => _i183.DevelopmentTagRepository(),
      registerFor: {_dev});
  gh.factory<_i184.TagManagementActorBloc>(() => _i184.TagManagementActorBloc());
  gh.factory<_i185.TagManagementFormBloc>(() => _i185.TagManagementFormBloc());
  gh.lazySingleton<_i186.TagManagementRepositoryInterface>(
      () => _i187.ProductionTagManagementRepository(
          get<_i81.FirebaseFirestore>(), get<_i110.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i186.TagManagementRepositoryInterface>(
      () => _i188.DevelopmentTagManagementRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i186.TagManagementRepositoryInterface>(
      () => _i189.MockTagManagementRepository(),
      registerFor: {_test});
  gh.factory<_i190.TagManagementWatcherBloc>(() => _i190.TagManagementWatcherBloc());
  gh.factory<_i191.TagSelectorBloc>(() => _i191.TagSelectorBloc());
  gh.lazySingleton<_i192.UnAccomplishObjective>(
      () => _i192.UnAccomplishObjective(get<_i75.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i193.UnBlockUser>(() => _i23.MockUnBlockUser(), registerFor: {_test});
  gh.lazySingleton<_i193.UnBlockUser>(
      () => _i193.UnBlockUser(get<_i136.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i194.UnFollowUser>(
      () => _i194.UnFollowUser(get<_i136.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i194.UnFollowUser>(() => _i23.MockUnFollowUser(), registerFor: {_test});
  gh.factory<_i195.UserActorBloc>(() => _i195.UserActorBloc());
  gh.factory<_i196.UserProfileButtonWatcherBloc>(() => _i196.UserProfileButtonWatcherBloc());
  gh.lazySingleton<_i197.WatchAllAchievements>(
      () => _i197.WatchAllAchievements(get<_i6.AchievementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i197.WatchAllAchievements>(() => _i20.MockGetAllAchievements(),
      registerFor: {_test});
  gh.lazySingleton<_i198.WatchAllTags>(() => _i13.MockGetAllTags(), registerFor: {_test});
  gh.lazySingleton<_i198.WatchAllTags>(
      () => _i198.WatchAllTags(get<_i180.TagCoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i199.WatchBlockedUsers>(() => _i23.MockLoadBlockedUsers(),
      registerFor: {_test});
  gh.lazySingleton<_i199.WatchBlockedUsers>(
      () => _i199.WatchBlockedUsers(get<_i136.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i200.WatchCurrentUser>(
      () => _i200.WatchCurrentUser(get<_i37.CoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i200.WatchCurrentUser>(() => _i89.MockWatchCurrentUser(), registerFor: {_test});
  gh.factory<_i201.WatchCurrentUserBloc>(() => _i201.WatchCurrentUserBloc());
  gh.lazySingleton<_i202.WatchExperienceComments>(() => _i46.MockGetExperienceComments(),
      registerFor: {_test});
  gh.lazySingleton<_i202.WatchExperienceComments>(
      () => _i202.WatchExperienceComments(get<_i33.CommentRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i203.WatchExperiencesCreated>(() => _i23.MockLoadExperiencesCreated(),
      registerFor: {_test});
  gh.lazySingleton<_i203.WatchExperiencesCreated>(
      () => _i203.WatchExperiencesCreated(get<_i136.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i204.WatchExperiencesDone>(() => _i23.MockLoadExperiencesDone(),
      registerFor: {_test});
  gh.lazySingleton<_i204.WatchExperiencesDone>(
      () => _i204.WatchExperiencesDone(get<_i136.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i205.WatchExperiencesLiked>(() => _i23.MockLoadExperiencesLiked(),
      registerFor: {_test});
  gh.lazySingleton<_i205.WatchExperiencesLiked>(
      () => _i205.WatchExperiencesLiked(get<_i136.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i206.WatchFeed>(() => _i207.MockFillFeed(), registerFor: {_test});
  gh.lazySingleton<_i206.WatchFeed>(() => _i206.WatchFeed(get<_i111.MainFeedRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i208.WatchFollowedUsers>(
      () => _i208.WatchFollowedUsers(get<_i136.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i208.WatchFollowedUsers>(() => _i23.MockLoadFollowedUsers(),
      registerFor: {_test});
  gh.lazySingleton<_i209.WatchFollowingUsers>(
      () => _i209.WatchFollowingUsers(get<_i136.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i209.WatchFollowingUsers>(() => _i23.MockLoadFollowingUsers(),
      registerFor: {_test});
  gh.lazySingleton<_i210.WatchIfNewNotifications>(
      () => _i210.WatchIfNewNotifications(get<_i121.NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i211.WatchNotifications>(
      () => _i211.WatchNotifications(get<_i121.NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i211.WatchNotifications>(() => _i29.MockLoadNotifications(),
      registerFor: {_test});
  gh.lazySingleton<_i212.WatchOwnedItems>(
      () => _i212.WatchOwnedItems(get<_i175.StoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i213.WatchProfile>(
      () => _i213.WatchProfile(get<_i136.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i214.WatchPurchasableItems>(
      () => _i214.WatchPurchasableItems(get<_i175.StoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.factory<_i215.WatchPurchasableItemsBloc>(() => _i215.WatchPurchasableItemsBloc());
  gh.lazySingleton<_i216.WatchRecommendedExperiences>(
      () => _i216.WatchRecommendedExperiences(get<_i75.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i217.WatchSearchExperiencesByDifficulty>(
      () => _i218.MockSearchExperiencesByDifficulty(),
      registerFor: {_test});
  gh.lazySingleton<_i217.WatchSearchExperiencesByDifficulty>(
      () => _i217.WatchSearchExperiencesByDifficulty(get<_i163.SearchRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i219.WatchSearchExperiencesByName>(
      () => _i219.WatchSearchExperiencesByName(get<_i163.SearchRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i219.WatchSearchExperiencesByName>(() => _i218.MockSearchExperiencesByName(),
      registerFor: {_test});
  gh.lazySingleton<_i220.WatchSearchExperiencesByTags>(() => _i218.MockSearchExperiencesByTags(),
      registerFor: {_test});
  gh.lazySingleton<_i220.WatchSearchExperiencesByTags>(
      () => _i220.WatchSearchExperiencesByTags(get<_i163.SearchRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i221.WatchSearchTagsByName>(
      () => _i221.WatchSearchTagsByName(get<_i163.SearchRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i221.WatchSearchTagsByName>(() => _i218.MockSearchTagsByName(),
      registerFor: {_test});
  gh.lazySingleton<_i222.WatchSearchUsersByName>(
      () => _i222.WatchSearchUsersByName(get<_i163.SearchRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i222.WatchSearchUsersByName>(() => _i218.MockSearchUsersByName(),
      registerFor: {_test});
  gh.lazySingleton<_i223.WatchTagsByCreator>(
      () => _i223.WatchTagsByCreator(get<_i180.TagCoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i223.WatchTagsByCreator>(() => _i13.MockGetTagsByCreator(),
      registerFor: {_test});
  gh.lazySingleton<_i224.WatchUserAchievements>(
      () => _i224.WatchUserAchievements(get<_i136.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i224.WatchUserAchievements>(() => _i23.MockLoadUserAchievements(),
      registerFor: {_test});
  gh.lazySingleton<_i225.WatchUserComments>(
      () => _i225.WatchUserComments(get<_i33.CommentRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i225.WatchUserComments>(() => _i46.MockGetUserComments(), registerFor: {_test});
  gh.lazySingleton<_i226.WatchUserInterests>(() => _i23.MockLoadUserInterests(),
      registerFor: {_test});
  gh.lazySingleton<_i226.WatchUserInterests>(
      () => _i226.WatchUserInterests(get<_i136.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i227.WatchUserLog>(() => _i11.MockLoadUserLog(), registerFor: {_test});
  gh.lazySingleton<_i227.WatchUserLog>(
      () => _i227.WatchUserLog(get<_i66.ExperienceLogRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i228.AccomplishObjective>(
      () => _i228.AccomplishObjective(get<_i75.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i10.AddExperienceToLog>(
      () => _i10.AddExperienceToLog(get<_i66.ExperienceLogRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i12.AddTagToInterests>(
      () => _i12.AddTagToInterests(get<_i180.TagCoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i16.AuthenticationRepositoryInterface>(
      () => _i229.ProductionAuthenticationRepository(get<_i80.FirebaseAuth>(),
          get<_i96.GoogleSignIn>(), get<_i81.FirebaseFirestore>(), get<_i110.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i22.BlockUser>(() => _i22.BlockUser(get<_i136.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i230.BuyCoins>(() => _i230.BuyCoins(get<_i175.StoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i231.BuyItem>(() => _i231.BuyItem(get<_i175.StoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i232.BuyPromotionPlan>(
      () => _i232.BuyPromotionPlan(get<_i175.StoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i28.CheckNotification>(
      () => _i28.CheckNotification(get<_i121.NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i33.CommentRepositoryInterface>(
      () => _i233.ProductionCommentRepository(get<_i81.FirebaseFirestore>(), get<_i110.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i37.CoreRepositoryInterface>(
      () => _i234.ProductionCoreRepository(get<_i81.FirebaseFirestore>(), get<_i110.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i41.CreateExperience>(
      () => _i41.CreateExperience(get<_i72.ExperienceManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i43.CreateTag>(
      () => _i43.CreateTag(get<_i186.TagManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i47.DeleteExperience>(
      () => _i47.DeleteExperience(get<_i72.ExperienceManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i48.DeleteNotification>(
      () => _i48.DeleteNotification(get<_i121.NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i49.DeleteTag>(
      () => _i49.DeleteTag(get<_i186.TagManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i50.DeleteUser>(
      () => _i50.DeleteUser(get<_i148.RemoteOptionsRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i52.DeleteUserNotifications>(
      () => _i52.DeleteUserNotifications(get<_i121.NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i53.DislikeExperience>(
      () => _i53.DislikeExperience(get<_i75.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i55.DismissExperienceFromLog>(
      () => _i55.DismissExperienceFromLog(get<_i66.ExperienceLogRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i56.DismissTagFromInterests>(
      () => _i56.DismissTagFromInterests(get<_i180.TagCoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i59.EditExperience>(
      () => _i59.EditExperience(get<_i72.ExperienceManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i60.EditTag>(() => _i60.EditTag(get<_i186.TagManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i61.EditUser>(() => _i61.EditUser(get<_i136.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i66.ExperienceLogRepositoryInterface>(
      () => _i235.ProductionExperienceLogRepository(
          get<_i81.FirebaseFirestore>(), get<_i110.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i72.ExperienceManagementRepositoryInterface>(
      () => _i236.ProductionExperienceManagementRepository(
          get<_i81.FirebaseFirestore>(), get<_i110.Logger>(), get<_i30.CloudStorageService>()),
      registerFor: {_prod});
  gh.lazySingleton<_i75.ExperienceNavigationRepositoryInterface>(
      () => _i237.ProductionExperienceNavigationRepository(
          get<_i81.FirebaseFirestore>(), get<_i110.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i83.FollowUser>(() => _i83.FollowUser(get<_i136.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i85.GeoLocationRepositoryInterface>(
      () => _i238.ProductionGeoLocationRepository(get<_i110.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i85.GeoLocationRepositoryInterface>(
      () => _i239.DevelopmentGeoLocationRepository(get<_i110.Logger>()),
      registerFor: {_dev});
  gh.lazySingleton<_i93.GetTag>(() => _i93.GetTag(get<_i186.TagManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i94.GetTagCreator>(
      () => _i94.GetTagCreator(get<_i180.TagCoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i95.GetTags>(() => _i95.GetTags(get<_i186.TagManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i240.LoadPromotionPlans>(
      () => _i240.LoadPromotionPlans(get<_i175.StoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i100.LoadUser>(() => _i100.LoadUser(get<_i136.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  return get;
}

class _$FirebaseInjectableModule extends _i241.FirebaseInjectableModule {}

class _$GoogleInjectableModule extends _i242.GoogleInjectableModule {}

class _$LoggerInjectableModule extends _i243.LoggerInjectableModule {}
