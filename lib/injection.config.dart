// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i81;
import 'package:firebase_auth/firebase_auth.dart' as _i80;
import 'package:flutter_local_notifications/flutter_local_notifications.dart' as _i82;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i97;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i111;

import 'application/achievement_management/achievement_management_actor/achievement_management_actor_bloc.dart'
    as _i3;
import 'application/achievement_management/achievement_management_form/achievement_management_form_bloc.dart'
    as _i4;
import 'application/achievement_management/achievement_management_watcher/achievement_management_watcher_bloc.dart'
    as _i5;
import 'application/authentication/authentication/authentication_bloc.dart' as _i15;
import 'application/authentication/forgotten_password_form/forgotten_password_form_bloc.dart' as _i85;
import 'application/authentication/log_in_form/log_in_form_bloc.dart' as _i108;
import 'application/authentication/registration_form/registration_form_bloc.dart' as _i148;
import 'application/comments/comment_actor/comment_actor_bloc.dart' as _i31;
import 'application/comments/comment_form/comment_form_bloc.dart' as _i32;
import 'application/comments/comment_watcher/comment_watcher_bloc.dart' as _i36;
import 'application/core/app_bar_title/app_bar_title_bloc.dart' as _i14;
import 'application/core/experience_add_to_log_actor/experience_add_to_log_actor_bloc.dart' as _i62;
import 'application/core/user_profile_button_watcher/user_profile_button_watcher_bloc.dart' as _i200;
import 'application/core/watch_current_user/watch_current_user_bloc.dart' as _i205;
import 'application/experience_log/experience_log_watcher/experience_log_watcher_bloc.dart' as _i69;
import 'application/experience_management/experience_editing_form/experience_editing_form_bloc.dart' as _i63;
import 'application/experience_management/experience_management_actor/experience_management_actor_bloc.dart'
    as _i70;
import 'application/experience_management/experience_management_form/experience_management_form_bloc.dart'
    as _i71;
import 'application/experience_management/objective_form/objective_form_bloc.dart' as _i127;
import 'application/experience_management/objectives_creation/objectives_creation_bloc.dart' as _i128;
import 'application/experience_management/reward_form/reward_form_bloc.dart' as _i155;
import 'application/experience_management/rewards_creation/rewards_creation_bloc.dart' as _i157;
import 'application/experience_navigation/experience_finish_actor/experience_finish_actor_bloc.dart' as _i64;
import 'application/experience_navigation/experience_like_actor/experience_like_actor_bloc.dart' as _i65;
import 'application/experience_navigation/experience_navigation_watcher/experience_navigation_watcher_bloc.dart'
    as _i78;
import 'application/experience_navigation/map_controller/map_controller_bloc.dart' as _i117;
import 'application/experience_navigation/objectives_tracker/objectives_tracker_bloc.dart' as _i129;
import 'application/experience_navigation/rate_experience_difficulty_actor/rate_experience_difficulty_actor_bloc.dart'
    as _i145;
import 'application/experience_navigation/recommended_experiences_watcher/recommended_experiences_watcher_bloc.dart'
    as _i146;
import 'application/main_feed/main_feed_watcher/main_feed_watcher_bloc.dart' as _i116;
import 'application/navigation/navigation_actor/navigation_actor_bloc.dart' as _i118;
import 'application/notifications/new_notifications_watcher/new_notifications_watcher_bloc.dart' as _i119;
import 'application/notifications/notification_actor/notification_actor_bloc.dart' as _i121;
import 'application/notifications/notifications_watcher/notifications_watcher_bloc.dart' as _i126;
import 'application/options/options_form/options_form_bloc.dart' as _i130;
import 'application/options/user_actor/user_actor_bloc.dart' as _i199;
import 'application/profile/block_actor/block_actor_bloc.dart' as _i21;
import 'application/profile/blocked_watcher/blocked_watcher_bloc.dart' as _i24;
import 'application/profile/follow_actor/follow_actor_bloc.dart' as _i83;
import 'application/profile/profile_achievements_watcher/profile_achievements_watcher_bloc.dart' as _i132;
import 'application/profile/profile_editing_form/profile_editing_form_bloc.dart' as _i133;
import 'application/profile/profile_experiences_watcher/profile_experiences_watcher_bloc.dart' as _i134;
import 'application/profile/profile_foreign_or_own/profile_foreign_or_own_bloc.dart' as _i135;
import 'application/profile/profile_interests_watcher/profile_interests_watcher_bloc.dart' as _i136;
import 'application/profile/profile_users_watcher/profile_users_watcher_bloc.dart' as _i141;
import 'application/profile/profile_watcher/profile_watcher_bloc.dart' as _i142;
import 'application/search/search_by_name_form/search_by_name_form_bloc.dart' as _i160;
import 'application/search/search_experiences_by_difficulty/search_experiences_by_difficulty_bloc.dart'
    as _i161;
import 'application/search/search_experiences_by_name_watcher/search_experiences_by_name_watcher_bloc.dart'
    as _i162;
import 'application/search/search_experiences_by_tags/search_experiences_by_tags_bloc.dart' as _i163;
import 'application/search/search_tags_by_name_watcher/search_tags_by_name_watcher_bloc.dart' as _i168;
import 'application/search/search_users_by_name_watcher/search_users_by_name_watcher_bloc.dart' as _i170;
import 'application/search/tag_selector/tag_selector_bloc.dart' as _i195;
import 'application/share/search_to_share/search_to_share_bloc.dart' as _i169;
import 'application/share/share_experience_internally/share_experience_internally_bloc.dart' as _i172;
import 'application/store/buy_coins/buy_coins_bloc.dart' as _i25;
import 'application/store/buy_item/buy_item_bloc.dart' as _i26;
import 'application/store/buy_promotion_plan_actor/buy_promotion_plan_actor_bloc.dart' as _i27;
import 'application/store/load_user/load_user_bloc.dart' as _i102;
import 'application/store/promotion_plans_loader/promotion_plans_loader_bloc.dart' as _i143;
import 'application/store/purchasable_items_watcher/watch_purchasable_items_bloc.dart' as _i219;
import 'application/store/store_app_bar_title/store_app_bar_title_bloc.dart' as _i177;
import 'application/store/store_navigation_actor/store_navigation_actor_bloc.dart' as _i178;
import 'application/tag_management/tag_card_actor/tag_card_actor_bloc.dart' as _i183;
import 'application/tag_management/tag_management_actor/tag_management_actor_bloc.dart' as _i188;
import 'application/tag_management/tag_management_form/tag_management_form_bloc.dart' as _i189;
import 'application/tag_management/tag_management_watcher/tag_management_watcher_bloc.dart' as _i194;
import 'core/modules/flutter_local_notifications_injectable_module.dart' as _i247;
import 'data/achievement_management/repository/development_achievement_repository.dart' as _i7;
import 'data/achievement_management/repository/production_achievement_repository.dart' as _i8;
import 'data/authentication/repository/development_authentication_repository.dart' as _i17;
import 'data/authentication/repository/production_authentication_repository.dart' as _i233;
import 'data/comments/repository/development_comment_repository.dart' as _i34;
import 'data/comments/repository/production_comment_repository.dart' as _i237;
import 'data/core/misc/firebase/cloud_storage/cloud_storage_service.dart' as _i30;
import 'data/core/modules/firebase_injectable_module.dart' as _i246;
import 'data/core/modules/google_injectable_module.dart' as _i248;
import 'data/core/modules/logger_injectable_module.dart' as _i249;
import 'data/core/repository/development_core_repository.dart' as _i38;
import 'data/core/repository/development_geo_location_repository.dart' as _i243;
import 'data/core/repository/production_core_repository.dart' as _i238;
import 'data/core/repository/production_geo_location_repository.dart' as _i242;
import 'data/experience_log/repository/development_experience_log_repository.dart' as _i67;
import 'data/experience_log/repository/production_experience_log_repository.dart' as _i239;
import 'data/experience_management/repository/development_experience_management_repository.dart' as _i74;
import 'data/experience_management/repository/production_experience_management_repository.dart' as _i240;
import 'data/experience_navigation/repository/development_experience_navigation_repository.dart' as _i77;
import 'data/experience_navigation/repository/production_experience_navigation_repository.dart' as _i241;
import 'data/main_feed/repository/development_main_feed_repository.dart' as _i113;
import 'data/main_feed/repository/production_main_feed_repository.dart' as _i115;
import 'data/notifications/repository/development_notification_repository.dart' as _i124;
import 'data/notifications/repository/production_notification_repository.dart' as _i123;
import 'data/options/repository/development_local_options_repository.dart' as _i106;
import 'data/options/repository/development_remote_options_repository.dart' as _i151;
import 'data/options/repository/production_local_options_repository.dart' as _i104;
import 'data/options/repository/production_remote_options_repository.dart' as _i150;
import 'data/profile/repository/development_profile_repository.dart' as _i139;
import 'data/profile/repository/production_profile_repository.dart' as _i140;
import 'data/search/repository/development_search_repository.dart' as _i167;
import 'data/search/repository/production_search_repository.dart' as _i166;
import 'data/share/repository/development_search_repository.dart' as _i175;
import 'data/share/repository/production_search_repository.dart' as _i174;
import 'data/store/repository/development_store_repository.dart' as _i180;
import 'data/store/repository/production_store_repository.dart' as _i181;
import 'data/tag_management/repository/development_tag_management_repository.dart' as _i193;
import 'data/tag_management/repository/development_tag_repository.dart' as _i187;
import 'data/tag_management/repository/production_tag_management_repository.dart' as _i192;
import 'data/tag_management/repository/production_tag_repository.dart' as _i186;
import 'domain/achievement_management/repository/achievement_repository_interface.dart' as _i6;
import 'domain/achievement_management/repository/achievement_repository_mock.dart' as _i9;
import 'domain/achievement_management/use_case/award_achievement.dart' as _i19;
import 'domain/achievement_management/use_case/create_achievement.dart' as _i40;
import 'domain/achievement_management/use_case/delete_achievement.dart' as _i44;
import 'domain/achievement_management/use_case/edit_achievement.dart' as _i57;
import 'domain/achievement_management/use_case/get_achievement.dart' as _i88;
import 'domain/achievement_management/use_case/use_case_mocks.dart' as _i20;
import 'domain/achievement_management/use_case/watch_all_achievements.dart' as _i201;
import 'domain/authentication/repository/authentication_repository_interface.dart' as _i16;
import 'domain/authentication/repository/authentication_repository_mock.dart' as _i18;
import 'domain/authentication/use_case/get_logged_in_user.dart' as _i92;
import 'domain/authentication/use_case/log_in.dart' as _i107;
import 'domain/authentication/use_case/log_in_google.dart' as _i109;
import 'domain/authentication/use_case/log_out.dart' as _i110;
import 'domain/authentication/use_case/register.dart' as _i147;
import 'domain/authentication/use_case/reset_password.dart' as _i154;
import 'domain/authentication/use_case/use_case_mocks.dart' as _i93;
import 'domain/comments/repository/comment_repository_interface.dart' as _i33;
import 'domain/comments/repository/comment_repository_mock.dart' as _i35;
import 'domain/comments/use_case/delete_comment.dart' as _i45;
import 'domain/comments/use_case/edit_comment.dart' as _i58;
import 'domain/comments/use_case/post_comment.dart' as _i131;
import 'domain/comments/use_case/use_case_mocks.dart' as _i46;
import 'domain/comments/use_case/watch_experience_comments.dart' as _i206;
import 'domain/comments/use_case/watch_user_comments.dart' as _i229;
import 'domain/core/repository/core_repository_interface.dart' as _i37;
import 'domain/core/repository/core_repository_mock.dart' as _i39;
import 'domain/core/repository/geo_location_repository_interface.dart' as _i86;
import 'domain/core/repository/geo_location_repository_mock.dart' as _i87;
import 'domain/core/use_case/get_current_location.dart' as _i89;
import 'domain/core/use_case/is_logged_in_user.dart' as _i98;
import 'domain/core/use_case/use_case.dart' as _i120;
import 'domain/core/use_case/use_case_mocks.dart' as _i90;
import 'domain/core/use_case/watch_current_user.dart' as _i204;
import 'domain/experience_log/repository/experience_log_repository_interface.dart' as _i66;
import 'domain/experience_log/repository/experience_log_repository_mock.dart' as _i68;
import 'domain/experience_log/use_case/add_experience_to_log.dart' as _i10;
import 'domain/experience_log/use_case/dismiss_experience_from_log.dart' as _i55;
import 'domain/experience_log/use_case/use_case_mocks.dart' as _i11;
import 'domain/experience_log/use_case/watch_user_log.dart' as _i231;
import 'domain/experience_management/repository/experience_management_repository_interface.dart' as _i72;
import 'domain/experience_management/repository/experience_management_repository_mock.dart' as _i73;
import 'domain/experience_management/use_case/create_experience.dart' as _i41;
import 'domain/experience_management/use_case/delete_experience.dart' as _i47;
import 'domain/experience_management/use_case/edit_experience.dart' as _i59;
import 'domain/experience_management/use_case/get_experience.dart' as _i91;
import 'domain/experience_management/use_case/use_case_mocks.dart' as _i42;
import 'domain/experience_navigation/repository/experience_navigation_repository_interface.dart' as _i75;
import 'domain/experience_navigation/repository/experience_navigation_repository_mock.dart' as _i76;
import 'domain/experience_navigation/use_case/accomplish_objective.dart' as _i232;
import 'domain/experience_navigation/use_case/dislike_experience.dart' as _i53;
import 'domain/experience_navigation/use_case/finish_experience.dart' as _i79;
import 'domain/experience_navigation/use_case/like_experience.dart' as _i99;
import 'domain/experience_navigation/use_case/load_surrounding_experiences.dart' as _i100;
import 'domain/experience_navigation/use_case/rate_difficulty.dart' as _i144;
import 'domain/experience_navigation/use_case/reward_user.dart' as _i156;
import 'domain/experience_navigation/use_case/save_user_progress.dart' as _i159;
import 'domain/experience_navigation/use_case/unaccomplish_objective.dart' as _i196;
import 'domain/experience_navigation/use_case/use_case_mocks.dart' as _i54;
import 'domain/experience_navigation/use_case/watch_recommended_experiences.dart' as _i220;
import 'domain/main_feed/repository/main_feed_repository_interface.dart' as _i112;
import 'domain/main_feed/repository/main_feed_repository_mock.dart' as _i114;
import 'domain/main_feed/use_case/use_case_mocks.dart' as _i211;
import 'domain/main_feed/use_case/watch_feed.dart' as _i210;
import 'domain/notifications/repository/notification_repository_interface.dart' as _i122;
import 'domain/notifications/repository/notification_repository_mock.dart' as _i125;
import 'domain/notifications/use_case/check_notification.dart' as _i28;
import 'domain/notifications/use_case/delete_notification.dart' as _i48;
import 'domain/notifications/use_case/delete_user_notifications.dart' as _i52;
import 'domain/notifications/use_case/send_notification.dart' as _i171;
import 'domain/notifications/use_case/use_case_mocks.dart' as _i29;
import 'domain/notifications/use_case/watch_if_new_notifications.dart' as _i214;
import 'domain/notifications/use_case/watch_notifications.dart' as _i215;
import 'domain/options/repository/local_options_repository_interface.dart' as _i103;
import 'domain/options/repository/local_options_repository_mock.dart' as _i105;
import 'domain/options/repository/remote_options_repository_interface.dart' as _i149;
import 'domain/options/repository/remote_options_repository_mock.dart' as _i152;
import 'domain/options/use_case/delete_user.dart' as _i50;
import 'domain/options/use_case/save_global_options.dart' as _i158;
import 'domain/options/use_case/use_case_mocks.dart' as _i51;
import 'domain/profile/repository/profile_repository_interface.dart' as _i137;
import 'domain/profile/repository/profile_repository_mock.dart' as _i138;
import 'domain/profile/use_case/block_user.dart' as _i22;
import 'domain/profile/use_case/edit_user.dart' as _i61;
import 'domain/profile/use_case/follow_user.dart' as _i84;
import 'domain/profile/use_case/load_user.dart' as _i101;
import 'domain/profile/use_case/remove_experience_liked.dart' as _i153;
import 'domain/profile/use_case/un_block_user.dart' as _i197;
import 'domain/profile/use_case/un_follow_user.dart' as _i198;
import 'domain/profile/use_case/use_case_mocks.dart' as _i23;
import 'domain/profile/use_case/watch_blocked_users.dart' as _i203;
import 'domain/profile/use_case/watch_experiences_created.dart' as _i207;
import 'domain/profile/use_case/watch_experiences_done.dart' as _i208;
import 'domain/profile/use_case/watch_experiences_liked.dart' as _i209;
import 'domain/profile/use_case/watch_followed_users.dart' as _i212;
import 'domain/profile/use_case/watch_following_users.dart' as _i213;
import 'domain/profile/use_case/watch_profile.dart' as _i217;
import 'domain/profile/use_case/watch_user_achievements.dart' as _i228;
import 'domain/profile/use_case/watch_user_interests.dart' as _i230;
import 'domain/search/repository/search_repository_interface.dart' as _i164;
import 'domain/search/repository/search_repository_mock.dart' as _i165;
import 'domain/search/use_case/use_case_mocks.dart' as _i222;
import 'domain/search/use_case/watch_search_experiences_by_difficulty.dart' as _i221;
import 'domain/search/use_case/watch_search_experiences_by_name.dart' as _i223;
import 'domain/search/use_case/watch_search_experiences_by_tags.dart' as _i224;
import 'domain/search/use_case/watch_search_tags_by_name.dart' as _i225;
import 'domain/search/use_case/watch_search_users_by_name.dart' as _i226;
import 'domain/share/repository/share_repository_interface.dart' as _i173;
import 'domain/share/repository/share_repository_mock.dart' as _i176;
import 'domain/share/use_case/search_to_share.dart' as _i245;
import 'domain/store/repository/store_repository_interface.dart' as _i179;
import 'domain/store/repository/store_repository_mock.dart' as _i182;
import 'domain/store/use_case/buy_coin.dart' as _i234;
import 'domain/store/use_case/buy_item.dart' as _i235;
import 'domain/store/use_case/buy_promotion_plan.dart' as _i236;
import 'domain/store/use_case/load_promotion_plans.dart' as _i244;
import 'domain/store/use_case/watch_owned_items.dart' as _i216;
import 'domain/store/use_case/watch_purchasable_items.dart' as _i218;
import 'domain/tag_management/repository/tag_management_repository_interface.dart' as _i190;
import 'domain/tag_management/repository/tag_management_repository_mock.dart' as _i191;
import 'domain/tag_management/repository/tag_repository_interface.dart' as _i184;
import 'domain/tag_management/repository/tag_repository_mock.dart' as _i185;
import 'domain/tag_management/use_case/add_tag_to_interests.dart' as _i12;
import 'domain/tag_management/use_case/create_tag.dart' as _i43;
import 'domain/tag_management/use_case/delete_tag.dart' as _i49;
import 'domain/tag_management/use_case/dismiss_tag_from_interests.dart' as _i56;
import 'domain/tag_management/use_case/edit_tag.dart' as _i60;
import 'domain/tag_management/use_case/get_tag.dart' as _i94;
import 'domain/tag_management/use_case/get_tag_creator.dart' as _i95;
import 'domain/tag_management/use_case/get_tags.dart' as _i96;
import 'domain/tag_management/use_case/use_case_mocks.dart' as _i13;
import 'domain/tag_management/use_case/watch_all_tags.dart' as _i202;
import 'domain/tag_management/use_case/watch_tags_by_creator.dart' as _i227;

const String _dev = 'dev';
const String _prod = 'prod';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get, {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final flutterLocalNotificationsInjectableModule = _$FlutterLocalNotificationsInjectableModule();
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
  gh.lazySingleton<_i10.AddExperienceToLog>(() => _i11.MockAddExperienceToLog(), registerFor: {_test});
  gh.lazySingleton<_i12.AddTagToInterests>(() => _i13.MockAddTagToInterests(), registerFor: {_test});
  gh.factory<_i14.AppBarTitleBloc>(() => _i14.AppBarTitleBloc());
  gh.factory<_i15.AuthenticationBloc>(() => _i15.AuthenticationBloc());
  gh.lazySingleton<_i16.AuthenticationRepositoryInterface>(() => _i17.DevelopmentAuthenticationRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i16.AuthenticationRepositoryInterface>(() => _i18.MockAuthenticationRepository(),
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
  gh.lazySingleton<_i28.CheckNotification>(() => _i29.MockCheckNotification(), registerFor: {_test});
  gh.lazySingleton<_i30.CloudStorageService>(() => _i30.CloudStorageService());
  gh.factory<_i31.CommentActorBloc>(() => _i31.CommentActorBloc());
  gh.factory<_i32.CommentFormBloc>(() => _i32.CommentFormBloc());
  gh.lazySingleton<_i33.CommentRepositoryInterface>(() => _i34.DevelopmentCommentRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i33.CommentRepositoryInterface>(() => _i35.MockCommentRepository(), registerFor: {_test});
  gh.factory<_i36.CommentWatcherBloc>(() => _i36.CommentWatcherBloc());
  gh.lazySingleton<_i37.CoreRepositoryInterface>(() => _i38.DevelopmentCoreRepository(), registerFor: {_dev});
  gh.lazySingleton<_i37.CoreRepositoryInterface>(() => _i39.MockCoreRepository(), registerFor: {_test});
  gh.lazySingleton<_i40.CreateAchievement>(
      () => _i40.CreateAchievement(get<_i6.AchievementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i40.CreateAchievement>(() => _i20.MockCreateAchievement(), registerFor: {_test});
  gh.lazySingleton<_i41.CreateExperience>(() => _i42.MockCreateExperience(), registerFor: {_test});
  gh.lazySingleton<_i43.CreateTag>(() => _i13.MockCreateTag(), registerFor: {_test});
  gh.lazySingleton<_i44.DeleteAchievement>(
      () => _i44.DeleteAchievement(get<_i6.AchievementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i44.DeleteAchievement>(() => _i20.MockDeleteAchievement(), registerFor: {_test});
  gh.lazySingleton<_i45.DeleteComment>(() => _i46.MockDeleteComment(), registerFor: {_test});
  gh.lazySingleton<_i45.DeleteComment>(() => _i45.DeleteComment(get<_i33.CommentRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i47.DeleteExperience>(() => _i42.MockDeleteExperience(), registerFor: {_test});
  gh.lazySingleton<_i48.DeleteNotification>(() => _i29.MockDeleteNotification(), registerFor: {_test});
  gh.lazySingleton<_i49.DeleteTag>(() => _i13.MockDeleteTag(), registerFor: {_test});
  gh.lazySingleton<_i50.DeleteUser>(() => _i51.MockDeleteUser(), registerFor: {_test});
  gh.lazySingleton<_i52.DeleteUserNotifications>(() => _i29.MockDeleteUserNotifications(),
      registerFor: {_test});
  gh.lazySingleton<_i53.DislikeExperience>(() => _i54.MockDislikeExperience(), registerFor: {_test});
  gh.lazySingleton<_i55.DismissExperienceFromLog>(() => _i11.MockDismissExperienceFromLog(),
      registerFor: {_test});
  gh.lazySingleton<_i56.DismissTagFromInterests>(() => _i13.MockDismissTagFromInterests(),
      registerFor: {_test});
  gh.lazySingleton<_i57.EditAchievement>(
      () => _i57.EditAchievement(get<_i6.AchievementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i57.EditAchievement>(() => _i20.MockEditAchievement(), registerFor: {_test});
  gh.lazySingleton<_i58.EditComment>(() => _i58.EditComment(get<_i33.CommentRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i58.EditComment>(() => _i46.MockEditComment(), registerFor: {_test});
  gh.lazySingleton<_i59.EditExperience>(() => _i42.MockEditExperience(), registerFor: {_test});
  gh.lazySingleton<_i60.EditTag>(() => _i13.MockEditTag(), registerFor: {_test});
  gh.lazySingleton<_i61.EditUser>(() => _i23.MockEditUser(), registerFor: {_test});
  gh.factory<_i62.ExperienceAddToLogActorBloc>(() => _i62.ExperienceAddToLogActorBloc());
  gh.factory<_i63.ExperienceEditingFormBloc>(() => _i63.ExperienceEditingFormBloc());
  gh.factory<_i64.ExperienceFinishActorBloc>(() => _i64.ExperienceFinishActorBloc());
  gh.factory<_i65.ExperienceLikeActorBloc>(() => _i65.ExperienceLikeActorBloc());
  gh.lazySingleton<_i66.ExperienceLogRepositoryInterface>(() => _i67.DevelopmentExperienceLogRepository(),
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
  gh.lazySingleton<_i79.FinishExperience>(() => _i54.MockFinishExperience(), registerFor: {_test});
  gh.lazySingleton<_i79.FinishExperience>(
      () => _i79.FinishExperience(get<_i75.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i80.FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i81.FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i82.FlutterLocalNotificationsPlugin>(
      () => flutterLocalNotificationsInjectableModule.flutterLocalNotificationsPlugin);
  gh.factory<_i83.FollowActorBloc>(() => _i83.FollowActorBloc());
  gh.lazySingleton<_i84.FollowUser>(() => _i23.MockFollowUser(), registerFor: {_test});
  gh.factory<_i85.ForgottenPasswordFormBloc>(() => _i85.ForgottenPasswordFormBloc());
  gh.lazySingleton<_i86.GeoLocationRepositoryInterface>(() => _i87.MockGeoLocationRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i88.GetAchievement>(() => _i88.GetAchievement(get<_i6.AchievementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i88.GetAchievement>(() => _i20.MockGetAchievement(), registerFor: {_test});
  gh.lazySingleton<_i89.GetCurrentLocation>(
      () => _i89.GetCurrentLocation(get<_i86.GeoLocationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i89.GetCurrentLocation>(() => _i90.MockGetCurrentLocation(), registerFor: {_test});
  gh.lazySingleton<_i91.GetExperience>(() => _i42.MockGetExperience(), registerFor: {_test});
  gh.lazySingleton<_i91.GetExperience>(
      () => _i91.GetExperience(get<_i72.ExperienceManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i92.GetLoggedInUser>(
      () => _i92.GetLoggedInUser(get<_i16.AuthenticationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i92.GetLoggedInUser>(() => _i93.MockGetLoggedInUser(), registerFor: {_test});
  gh.lazySingleton<_i94.GetTag>(() => _i13.MockGetTag(), registerFor: {_test});
  gh.lazySingleton<_i95.GetTagCreator>(() => _i13.MockGetTagCreator(), registerFor: {_test});
  gh.lazySingleton<_i96.GetTags>(() => _i13.MockGetTags(), registerFor: {_test});
  gh.lazySingleton<_i97.GoogleSignIn>(() => googleInjectableModule.googleSignIn);
  gh.lazySingleton<_i98.IsLoggedInUser>(() => _i98.IsLoggedInUser(), registerFor: {_dev, _prod});
  gh.lazySingleton<_i98.IsLoggedInUser>(() => _i90.MockIsLoggedInUser(), registerFor: {_test});
  gh.lazySingleton<_i99.LikeExperience>(
      () => _i99.LikeExperience(get<_i75.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i99.LikeExperience>(() => _i54.MockLikeExperience(), registerFor: {_test});
  gh.lazySingleton<_i100.LoadSurroundingExperiences>(() => _i54.MockLoadSurroundingExperiences(),
      registerFor: {_test});
  gh.lazySingleton<_i100.LoadSurroundingExperiences>(
      () => _i100.LoadSurroundingExperiences(get<_i75.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i101.LoadUser>(() => _i23.MockLoadUser(), registerFor: {_test});
  gh.factory<_i102.LoadUserBloc>(() => _i102.LoadUserBloc());
  gh.lazySingleton<_i103.LocalOptionsRepositoryInterface>(() => _i104.ProductionLocalOptionsRepository(),
      registerFor: {_prod});
  gh.lazySingleton<_i103.LocalOptionsRepositoryInterface>(() => _i105.MockLocalOptionsRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i103.LocalOptionsRepositoryInterface>(() => _i106.DevelopmentLocalOptionsRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i107.LogIn>(() => _i107.LogIn(get<_i16.AuthenticationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i107.LogIn>(() => _i93.MockLogIn(), registerFor: {_test});
  gh.factory<_i108.LogInFormBloc>(() => _i108.LogInFormBloc());
  gh.lazySingleton<_i109.LogInGoogle>(() => _i93.MockLogInGoogle(), registerFor: {_test});
  gh.lazySingleton<_i109.LogInGoogle>(() => _i109.LogInGoogle(get<_i16.AuthenticationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i110.LogOut>(() => _i93.MockLogOut(), registerFor: {_test});
  gh.lazySingleton<_i110.LogOut>(() => _i110.LogOut(get<_i16.AuthenticationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i111.Logger>(() => loggerInjectableModule.logger);
  gh.lazySingleton<_i112.MainFeedRepositoryInterface>(() => _i113.DevelopmentMainFeedRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i112.MainFeedRepositoryInterface>(() => _i114.MockMainFeedRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i112.MainFeedRepositoryInterface>(
      () => _i115.ProductionMainFeedRepository(get<_i81.FirebaseFirestore>(), get<_i111.Logger>()),
      registerFor: {_prod});
  gh.factory<_i116.MainFeedWatcherBloc>(() => _i116.MainFeedWatcherBloc());
  gh.factory<_i117.MapControllerBloc>(() => _i117.MapControllerBloc());
  gh.factory<_i118.NavigationActorBloc>(() => _i118.NavigationActorBloc());
  gh.factory<_i119.NewNotificationsWatcherBloc>(() => _i119.NewNotificationsWatcherBloc());
  gh.lazySingleton<_i120.NoParams>(() => _i120.NoParams());
  gh.factory<_i121.NotificationActorBloc>(() => _i121.NotificationActorBloc());
  gh.lazySingleton<_i122.NotificationRepositoryInterface>(
      () => _i123.ProductionNotificationRepository(get<_i81.FirebaseFirestore>(), get<_i111.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i122.NotificationRepositoryInterface>(() => _i124.DevelopmentNotificationRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i122.NotificationRepositoryInterface>(() => _i125.MockNotificationRepository(),
      registerFor: {_test});
  gh.factory<_i126.NotificationsWatcherBloc>(() => _i126.NotificationsWatcherBloc());
  gh.factory<_i127.ObjectiveFormBloc>(() => _i127.ObjectiveFormBloc());
  gh.factory<_i128.ObjectivesCreationBloc>(() => _i128.ObjectivesCreationBloc());
  gh.factory<_i129.ObjectivesTrackerBloc>(() => _i129.ObjectivesTrackerBloc());
  gh.factory<_i130.OptionsFormBloc>(() => _i130.OptionsFormBloc());
  gh.lazySingleton<_i131.PostComment>(() => _i46.MockPostComment(), registerFor: {_test});
  gh.lazySingleton<_i131.PostComment>(() => _i131.PostComment(get<_i33.CommentRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.factory<_i132.ProfileAchievementsWatcherBloc>(() => _i132.ProfileAchievementsWatcherBloc());
  gh.factory<_i133.ProfileEditingFormBloc>(() => _i133.ProfileEditingFormBloc());
  gh.factory<_i134.ProfileExperiencesWatcherBloc>(() => _i134.ProfileExperiencesWatcherBloc());
  gh.factory<_i135.ProfileForeignOrOwnBloc>(() => _i135.ProfileForeignOrOwnBloc());
  gh.factory<_i136.ProfileInterestsWatcherBloc>(() => _i136.ProfileInterestsWatcherBloc());
  gh.lazySingleton<_i137.ProfileRepositoryInterface>(() => _i138.MockProfileRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i137.ProfileRepositoryInterface>(() => _i139.DevelopmentProfileRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i137.ProfileRepositoryInterface>(
      () => _i140.ProductionProfileRepository(
          get<_i81.FirebaseFirestore>(), get<_i111.Logger>(), get<_i30.CloudStorageService>()),
      registerFor: {_prod});
  gh.factory<_i141.ProfileUsersWatcherBloc>(() => _i141.ProfileUsersWatcherBloc());
  gh.factory<_i142.ProfileWatcherBloc>(() => _i142.ProfileWatcherBloc());
  gh.factory<_i143.PromotionPlansLoaderBloc>(() => _i143.PromotionPlansLoaderBloc());
  gh.lazySingleton<_i144.RateDifficulty>(
      () => _i144.RateDifficulty(get<_i75.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i144.RateDifficulty>(() => _i54.MockRateDifficulty(), registerFor: {_test});
  gh.factory<_i145.RateExperienceDifficultyActorBloc>(() => _i145.RateExperienceDifficultyActorBloc());
  gh.factory<_i146.RecommendedExperiencesWatcherBloc>(() => _i146.RecommendedExperiencesWatcherBloc());
  gh.lazySingleton<_i147.Register>(() => _i147.Register(get<_i16.AuthenticationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i147.Register>(() => _i93.MockRegister(), registerFor: {_test});
  gh.factory<_i148.RegistrationFormBloc>(() => _i148.RegistrationFormBloc());
  gh.lazySingleton<_i149.RemoteOptionsRepositoryInterface>(() => _i150.ProductionRemoteOptionsRepository(),
      registerFor: {_prod});
  gh.lazySingleton<_i149.RemoteOptionsRepositoryInterface>(() => _i151.DevelopmentRemoteOptionsRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i149.RemoteOptionsRepositoryInterface>(() => _i152.MockRemoteOptionsRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i153.RemoveExperienceLiked>(() => _i23.MockRemoveExperienceLiked(), registerFor: {_test});
  gh.lazySingleton<_i153.RemoveExperienceLiked>(
      () => _i153.RemoveExperienceLiked(get<_i137.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i154.ResetPassword>(
      () => _i154.ResetPassword(get<_i16.AuthenticationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.factory<_i155.RewardFormBloc>(() => _i155.RewardFormBloc());
  gh.lazySingleton<_i156.RewardUser>(() => _i54.MockRewardUser(), registerFor: {_test});
  gh.lazySingleton<_i156.RewardUser>(
      () => _i156.RewardUser(get<_i75.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.factory<_i157.RewardsCreationBloc>(() => _i157.RewardsCreationBloc());
  gh.lazySingleton<_i158.SaveGlobalOptions>(
      () => _i158.SaveGlobalOptions(get<_i149.RemoteOptionsRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i158.SaveGlobalOptions>(() => _i51.MockSaveGlobalOptions(), registerFor: {_test});
  gh.lazySingleton<_i159.SaveUserProgress>(
      () => _i159.SaveUserProgress(get<_i75.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.factory<_i160.SearchByNameFormBloc>(() => _i160.SearchByNameFormBloc());
  gh.factory<_i161.SearchExperiencesByDifficultyBloc>(() => _i161.SearchExperiencesByDifficultyBloc());
  gh.factory<_i162.SearchExperiencesByNameWatcherBloc>(() => _i162.SearchExperiencesByNameWatcherBloc());
  gh.factory<_i163.SearchExperiencesByTagsBloc>(() => _i163.SearchExperiencesByTagsBloc());
  gh.lazySingleton<_i164.SearchRepositoryInterface>(() => _i165.MockSearchRepository(), registerFor: {_test});
  gh.lazySingleton<_i164.SearchRepositoryInterface>(
      () => _i166.ProductionSearchRepository(get<_i81.FirebaseFirestore>(), get<_i111.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i164.SearchRepositoryInterface>(() => _i167.DevelopmentSearchRepository(),
      registerFor: {_dev});
  gh.factory<_i168.SearchTagsByNameWatcherBloc>(() => _i168.SearchTagsByNameWatcherBloc());
  gh.factory<_i169.SearchToShareBloc>(() => _i169.SearchToShareBloc());
  gh.factory<_i170.SearchUsersByNameWatcherBloc>(() => _i170.SearchUsersByNameWatcherBloc());
  gh.lazySingleton<_i171.SendNotification>(
      () => _i171.SendNotification(get<_i122.NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i171.SendNotification>(() => _i29.MockSendNotification(), registerFor: {_test});
  gh.factory<_i172.ShareExperienceInternallyBloc>(() => _i172.ShareExperienceInternallyBloc());
  gh.lazySingleton<_i173.ShareRepositoryInterface>(
      () => _i174.ProductionShareRepository(get<_i81.FirebaseFirestore>(), get<_i111.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i173.ShareRepositoryInterface>(() => _i175.DevelopmentShareRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i173.ShareRepositoryInterface>(() => _i176.MockShareRepository(), registerFor: {_test});
  gh.factory<_i177.StoreAppBarTitleBloc>(() => _i177.StoreAppBarTitleBloc());
  gh.factory<_i178.StoreNavigationActorBloc>(() => _i178.StoreNavigationActorBloc());
  gh.lazySingleton<_i179.StoreRepositoryInterface>(() => _i180.DevelopmentStoreRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i179.StoreRepositoryInterface>(
      () => _i181.ProductionStoreRepository(get<_i81.FirebaseFirestore>(), get<_i111.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i179.StoreRepositoryInterface>(() => _i182.MockStoreRepository(), registerFor: {_test});
  gh.factory<_i183.TagCardActorBloc>(() => _i183.TagCardActorBloc());
  gh.lazySingleton<_i184.TagCoreRepositoryInterface>(() => _i185.MockTagRepository(), registerFor: {_test});
  gh.lazySingleton<_i184.TagCoreRepositoryInterface>(
      () => _i186.ProductionTagRepository(get<_i81.FirebaseFirestore>(), get<_i111.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i184.TagCoreRepositoryInterface>(() => _i187.DevelopmentTagRepository(),
      registerFor: {_dev});
  gh.factory<_i188.TagManagementActorBloc>(() => _i188.TagManagementActorBloc());
  gh.factory<_i189.TagManagementFormBloc>(() => _i189.TagManagementFormBloc());
  gh.lazySingleton<_i190.TagManagementRepositoryInterface>(() => _i191.MockTagManagementRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i190.TagManagementRepositoryInterface>(
      () => _i192.ProductionTagManagementRepository(get<_i81.FirebaseFirestore>(), get<_i111.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i190.TagManagementRepositoryInterface>(() => _i193.DevelopmentTagManagementRepository(),
      registerFor: {_dev});
  gh.factory<_i194.TagManagementWatcherBloc>(() => _i194.TagManagementWatcherBloc());
  gh.factory<_i195.TagSelectorBloc>(() => _i195.TagSelectorBloc());
  gh.lazySingleton<_i196.UnAccomplishObjective>(
      () => _i196.UnAccomplishObjective(get<_i75.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i197.UnBlockUser>(() => _i23.MockUnBlockUser(), registerFor: {_test});
  gh.lazySingleton<_i197.UnBlockUser>(() => _i197.UnBlockUser(get<_i137.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i198.UnFollowUser>(() => _i198.UnFollowUser(get<_i137.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i198.UnFollowUser>(() => _i23.MockUnFollowUser(), registerFor: {_test});
  gh.factory<_i199.UserActorBloc>(() => _i199.UserActorBloc());
  gh.factory<_i200.UserProfileButtonWatcherBloc>(() => _i200.UserProfileButtonWatcherBloc());
  gh.lazySingleton<_i201.WatchAllAchievements>(
      () => _i201.WatchAllAchievements(get<_i6.AchievementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i201.WatchAllAchievements>(() => _i20.MockGetAllAchievements(), registerFor: {_test});
  gh.lazySingleton<_i202.WatchAllTags>(() => _i13.MockGetAllTags(), registerFor: {_test});
  gh.lazySingleton<_i202.WatchAllTags>(() => _i202.WatchAllTags(get<_i184.TagCoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i203.WatchBlockedUsers>(
      () => _i203.WatchBlockedUsers(get<_i137.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i203.WatchBlockedUsers>(() => _i23.MockLoadBlockedUsers(), registerFor: {_test});
  gh.lazySingleton<_i204.WatchCurrentUser>(() => _i90.MockWatchCurrentUser(), registerFor: {_test});
  gh.lazySingleton<_i204.WatchCurrentUser>(() => _i204.WatchCurrentUser(get<_i37.CoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.factory<_i205.WatchCurrentUserBloc>(() => _i205.WatchCurrentUserBloc());
  gh.lazySingleton<_i206.WatchExperienceComments>(() => _i46.MockGetExperienceComments(),
      registerFor: {_test});
  gh.lazySingleton<_i206.WatchExperienceComments>(
      () => _i206.WatchExperienceComments(get<_i33.CommentRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i207.WatchExperiencesCreated>(() => _i23.MockLoadExperiencesCreated(),
      registerFor: {_test});
  gh.lazySingleton<_i207.WatchExperiencesCreated>(
      () => _i207.WatchExperiencesCreated(get<_i137.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i208.WatchExperiencesDone>(() => _i23.MockLoadExperiencesDone(), registerFor: {_test});
  gh.lazySingleton<_i208.WatchExperiencesDone>(
      () => _i208.WatchExperiencesDone(get<_i137.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i209.WatchExperiencesLiked>(() => _i23.MockLoadExperiencesLiked(), registerFor: {_test});
  gh.lazySingleton<_i209.WatchExperiencesLiked>(
      () => _i209.WatchExperiencesLiked(get<_i137.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i210.WatchFeed>(() => _i210.WatchFeed(get<_i112.MainFeedRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i210.WatchFeed>(() => _i211.MockFillFeed(), registerFor: {_test});
  gh.lazySingleton<_i212.WatchFollowedUsers>(() => _i23.MockLoadFollowedUsers(), registerFor: {_test});
  gh.lazySingleton<_i212.WatchFollowedUsers>(
      () => _i212.WatchFollowedUsers(get<_i137.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i213.WatchFollowingUsers>(
      () => _i213.WatchFollowingUsers(get<_i137.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i213.WatchFollowingUsers>(() => _i23.MockLoadFollowingUsers(), registerFor: {_test});
  gh.lazySingleton<_i214.WatchIfNewNotifications>(
      () => _i214.WatchIfNewNotifications(get<_i122.NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i215.WatchNotifications>(() => _i29.MockLoadNotifications(), registerFor: {_test});
  gh.lazySingleton<_i215.WatchNotifications>(
      () => _i215.WatchNotifications(get<_i122.NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i216.WatchOwnedItems>(() => _i216.WatchOwnedItems(get<_i179.StoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i217.WatchProfile>(() => _i217.WatchProfile(get<_i137.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i218.WatchPurchasableItems>(
      () => _i218.WatchPurchasableItems(get<_i179.StoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.factory<_i219.WatchPurchasableItemsBloc>(() => _i219.WatchPurchasableItemsBloc());
  gh.lazySingleton<_i220.WatchRecommendedExperiences>(
      () => _i220.WatchRecommendedExperiences(get<_i75.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i221.WatchSearchExperiencesByDifficulty>(
      () => _i221.WatchSearchExperiencesByDifficulty(get<_i164.SearchRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i221.WatchSearchExperiencesByDifficulty>(() => _i222.MockSearchExperiencesByDifficulty(),
      registerFor: {_test});
  gh.lazySingleton<_i223.WatchSearchExperiencesByName>(
      () => _i223.WatchSearchExperiencesByName(get<_i164.SearchRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i223.WatchSearchExperiencesByName>(() => _i222.MockSearchExperiencesByName(),
      registerFor: {_test});
  gh.lazySingleton<_i224.WatchSearchExperiencesByTags>(
      () => _i224.WatchSearchExperiencesByTags(get<_i164.SearchRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i224.WatchSearchExperiencesByTags>(() => _i222.MockSearchExperiencesByTags(),
      registerFor: {_test});
  gh.lazySingleton<_i225.WatchSearchTagsByName>(
      () => _i225.WatchSearchTagsByName(get<_i164.SearchRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i225.WatchSearchTagsByName>(() => _i222.MockSearchTagsByName(), registerFor: {_test});
  gh.lazySingleton<_i226.WatchSearchUsersByName>(
      () => _i226.WatchSearchUsersByName(get<_i164.SearchRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i226.WatchSearchUsersByName>(() => _i222.MockSearchUsersByName(), registerFor: {_test});
  gh.lazySingleton<_i227.WatchTagsByCreator>(
      () => _i227.WatchTagsByCreator(get<_i184.TagCoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i227.WatchTagsByCreator>(() => _i13.MockGetTagsByCreator(), registerFor: {_test});
  gh.lazySingleton<_i228.WatchUserAchievements>(() => _i23.MockLoadUserAchievements(), registerFor: {_test});
  gh.lazySingleton<_i228.WatchUserAchievements>(
      () => _i228.WatchUserAchievements(get<_i137.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i229.WatchUserComments>(
      () => _i229.WatchUserComments(get<_i33.CommentRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i229.WatchUserComments>(() => _i46.MockGetUserComments(), registerFor: {_test});
  gh.lazySingleton<_i230.WatchUserInterests>(() => _i23.MockLoadUserInterests(), registerFor: {_test});
  gh.lazySingleton<_i230.WatchUserInterests>(
      () => _i230.WatchUserInterests(get<_i137.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i231.WatchUserLog>(() => _i231.WatchUserLog(get<_i66.ExperienceLogRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i231.WatchUserLog>(() => _i11.MockLoadUserLog(), registerFor: {_test});
  gh.lazySingleton<_i232.AccomplishObjective>(
      () => _i232.AccomplishObjective(get<_i75.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i10.AddExperienceToLog>(
      () => _i10.AddExperienceToLog(get<_i66.ExperienceLogRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i12.AddTagToInterests>(
      () => _i12.AddTagToInterests(get<_i184.TagCoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i16.AuthenticationRepositoryInterface>(
      () => _i233.ProductionAuthenticationRepository(get<_i80.FirebaseAuth>(), get<_i97.GoogleSignIn>(),
          get<_i81.FirebaseFirestore>(), get<_i111.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i22.BlockUser>(() => _i22.BlockUser(get<_i137.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i234.BuyCoins>(() => _i234.BuyCoins(get<_i179.StoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i235.BuyItem>(() => _i235.BuyItem(get<_i179.StoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i236.BuyPromotionPlan>(
      () => _i236.BuyPromotionPlan(get<_i179.StoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i28.CheckNotification>(
      () => _i28.CheckNotification(get<_i122.NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i33.CommentRepositoryInterface>(
      () => _i237.ProductionCommentRepository(get<_i81.FirebaseFirestore>(), get<_i111.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i37.CoreRepositoryInterface>(
      () => _i238.ProductionCoreRepository(get<_i81.FirebaseFirestore>(), get<_i111.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i41.CreateExperience>(
      () => _i41.CreateExperience(get<_i72.ExperienceManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i43.CreateTag>(() => _i43.CreateTag(get<_i190.TagManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i47.DeleteExperience>(
      () => _i47.DeleteExperience(get<_i72.ExperienceManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i48.DeleteNotification>(
      () => _i48.DeleteNotification(get<_i122.NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i49.DeleteTag>(() => _i49.DeleteTag(get<_i190.TagManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i50.DeleteUser>(() => _i50.DeleteUser(get<_i149.RemoteOptionsRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i52.DeleteUserNotifications>(
      () => _i52.DeleteUserNotifications(get<_i122.NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i53.DislikeExperience>(
      () => _i53.DislikeExperience(get<_i75.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i55.DismissExperienceFromLog>(
      () => _i55.DismissExperienceFromLog(get<_i66.ExperienceLogRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i56.DismissTagFromInterests>(
      () => _i56.DismissTagFromInterests(get<_i184.TagCoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i59.EditExperience>(
      () => _i59.EditExperience(get<_i72.ExperienceManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i60.EditTag>(() => _i60.EditTag(get<_i190.TagManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i61.EditUser>(() => _i61.EditUser(get<_i137.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i66.ExperienceLogRepositoryInterface>(
      () => _i239.ProductionExperienceLogRepository(get<_i81.FirebaseFirestore>(), get<_i111.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i72.ExperienceManagementRepositoryInterface>(
      () => _i240.ProductionExperienceManagementRepository(
          get<_i81.FirebaseFirestore>(), get<_i111.Logger>(), get<_i30.CloudStorageService>()),
      registerFor: {_prod});
  gh.lazySingleton<_i75.ExperienceNavigationRepositoryInterface>(
      () =>
          _i241.ProductionExperienceNavigationRepository(get<_i81.FirebaseFirestore>(), get<_i111.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i84.FollowUser>(() => _i84.FollowUser(get<_i137.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i86.GeoLocationRepositoryInterface>(
      () => _i242.ProductionGeoLocationRepository(get<_i111.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i86.GeoLocationRepositoryInterface>(
      () => _i243.DevelopmentGeoLocationRepository(get<_i111.Logger>()),
      registerFor: {_dev});
  gh.lazySingleton<_i94.GetTag>(() => _i94.GetTag(get<_i190.TagManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i95.GetTagCreator>(() => _i95.GetTagCreator(get<_i184.TagCoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i96.GetTags>(() => _i96.GetTags(get<_i190.TagManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i244.LoadPromotionPlans>(
      () => _i244.LoadPromotionPlans(get<_i179.StoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i101.LoadUser>(() => _i101.LoadUser(get<_i137.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i245.SearchToShare>(() => _i245.SearchToShare(get<_i173.ShareRepositoryInterface>()),
      registerFor: {_dev, _prod});
  return get;
}

class _$FirebaseInjectableModule extends _i246.FirebaseInjectableModule {}

class _$FlutterLocalNotificationsInjectableModule extends _i247.FlutterLocalNotificationsInjectableModule {}

class _$GoogleInjectableModule extends _i248.GoogleInjectableModule {}

class _$LoggerInjectableModule extends _i249.LoggerInjectableModule {}
