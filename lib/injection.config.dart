// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i84;
import 'package:firebase_auth/firebase_auth.dart' as _i83;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i99;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i113;

import 'application/achievement_management/achievement_management_actor/achievement_management_actor_bloc.dart'
    as _i3;
import 'application/achievement_management/achievement_management_form/achievement_management_form_bloc.dart'
    as _i4;
import 'application/achievement_management/achievement_management_watcher/achievement_management_watcher_bloc.dart'
    as _i5;
import 'application/authentication/authentication/authentication_bloc.dart' as _i15;
import 'application/authentication/forgotten_password_form/forgotten_password_form_bloc.dart'
    as _i87;
import 'application/authentication/log_in_form/log_in_form_bloc.dart' as _i110;
import 'application/authentication/registration_form/registration_form_bloc.dart' as _i150;
import 'application/comments/comment_actor/comment_actor_bloc.dart' as _i31;
import 'application/comments/comment_form/comment_form_bloc.dart' as _i32;
import 'application/comments/comment_watcher/comment_watcher_bloc.dart' as _i36;
import 'application/core/app_bar_title/app_bar_title_bloc.dart' as _i14;
import 'application/core/experience_card_actor/experience_card_actor_bloc.dart' as _i63;
import 'application/core/experience_card_like_check/experience_card_like_check_bloc.dart' as _i64;
import 'application/core/share_experience_internally/share_experience_internally_bloc.dart'
    as _i175;
import 'application/core/user_profile_button_watcher/user_profile_button_watcher_bloc.dart'
    as _i199;
import 'application/experience_log/experience_log_actor/experience_log_actor_bloc.dart' as _i68;
import 'application/experience_log/experience_log_watcher/experience_log_watcher_bloc.dart' as _i72;
import 'application/experience_management/experience_editing_form/experience_editing_form_bloc.dart'
    as _i65;
import 'application/experience_management/experience_management_actor/experience_management_actor_bloc.dart'
    as _i73;
import 'application/experience_management/experience_management_form/experience_management_form_bloc.dart'
    as _i74;
import 'application/experience_management/objective_form/objective_form_bloc.dart' as _i129;
import 'application/experience_management/objectives_creation/objectives_creation_bloc.dart'
    as _i130;
import 'application/experience_management/reward_form/reward_form_bloc.dart' as _i157;
import 'application/experience_management/rewards_creation/rewards_creation_bloc.dart' as _i159;
import 'application/experience_navigation/experience_finish_actor/experience_finish_actor_bloc.dart'
    as _i66;
import 'application/experience_navigation/experience_like_actor/experience_like_actor_bloc.dart'
    as _i67;
import 'application/experience_navigation/experience_navigation_watcher/experience_navigation_watcher_bloc.dart'
    as _i81;
import 'application/experience_navigation/map_controller/map_controller_bloc.dart' as _i119;
import 'application/experience_navigation/objectives_tracker/objectives_tracker_bloc.dart' as _i131;
import 'application/experience_navigation/rate_experience_difficulty_actor/rate_experience_difficulty_actor_bloc.dart'
    as _i147;
import 'application/experience_navigation/recommended_experiences_watcher/recommended_experiences_watcher_bloc.dart'
    as _i148;
import 'application/main_feed/main_feed_watcher/main_feed_watcher_bloc.dart' as _i118;
import 'application/navigation/navigation_actor/navigation_actor_bloc.dart' as _i120;
import 'application/notifications/new_notifications_watcher/new_notifications_watcher_bloc.dart'
    as _i121;
import 'application/notifications/notification_actor/notification_actor_bloc.dart' as _i123;
import 'application/notifications/notifications_watcher/notifications_watcher_bloc.dart' as _i128;
import 'application/options/options_form/options_form_bloc.dart' as _i132;
import 'application/options/user_actor/user_actor_bloc.dart' as _i198;
import 'application/profile/block_actor/block_actor_bloc.dart' as _i21;
import 'application/profile/blocked_watcher/blocked_watcher_bloc.dart' as _i24;
import 'application/profile/follow_actor/follow_actor_bloc.dart' as _i85;
import 'application/profile/profile_achievements_watcher/profile_achievements_watcher_bloc.dart'
    as _i134;
import 'application/profile/profile_editing_form/profile_editing_form_bloc.dart' as _i135;
import 'application/profile/profile_experiences_watcher/profile_experiences_watcher_bloc.dart'
    as _i136;
import 'application/profile/profile_foreign_or_own/profile_foreign_or_own_bloc.dart' as _i137;
import 'application/profile/profile_interests_watcher/profile_interests_watcher_bloc.dart' as _i138;
import 'application/profile/profile_users_watcher/profile_users_watcher_bloc.dart' as _i143;
import 'application/profile/profile_watcher/profile_watcher_bloc.dart' as _i144;
import 'application/search/search_by_name_form/search_by_name_form_bloc.dart' as _i162;
import 'application/search/search_experiences_by_difficulty/search_experiences_by_difficulty_bloc.dart'
    as _i163;
import 'application/search/search_experiences_by_name_watcher/search_experiences_by_name_watcher_bloc.dart'
    as _i164;
import 'application/search/search_experiences_by_tags/search_experiences_by_tags_bloc.dart'
    as _i165;
import 'application/search/search_tags_by_name_watcher/search_tags_by_name_watcher_bloc.dart'
    as _i170;
import 'application/search/search_to_share/search_to_share_bloc.dart' as _i172;
import 'application/search/search_users_by_name_watcher/search_users_by_name_watcher_bloc.dart'
    as _i173;
import 'application/search/tag_selector/tag_selector_bloc.dart' as _i194;
import 'application/store/buy_coins/buy_coins_bloc.dart' as _i25;
import 'application/store/buy_item/buy_item_bloc.dart' as _i26;
import 'application/store/buy_promotion_plan_actor/buy_promotion_plan_actor_bloc.dart' as _i27;
import 'application/store/load_user/load_user_bloc.dart' as _i104;
import 'application/store/promotion_plans_loader/promotion_plans_loader_bloc.dart' as _i145;
import 'application/store/purchasable_items_watcher/watch_purchasable_items_bloc.dart' as _i216;
import 'application/store/store_app_bar_title/store_app_bar_title_bloc.dart' as _i176;
import 'application/store/store_navigation_actor/store_navigation_actor_bloc.dart' as _i177;
import 'application/tag_management/tag_card_actor/tag_card_actor_bloc.dart' as _i182;
import 'application/tag_management/tag_management_actor/tag_management_actor_bloc.dart' as _i187;
import 'application/tag_management/tag_management_form/tag_management_form_bloc.dart' as _i188;
import 'application/tag_management/tag_management_watcher/tag_management_watcher_bloc.dart'
    as _i193;
import 'data/achievement_management/repository/development_achievement_repository.dart' as _i8;
import 'data/achievement_management/repository/production_achievement_repository.dart' as _i9;
import 'data/authentication/repository/development_authentication_repository.dart' as _i17;
import 'data/authentication/repository/production_authentication_repository.dart' as _i230;
import 'data/comments/repository/development_comment_repository.dart' as _i35;
import 'data/comments/repository/production_comment_repository.dart' as _i234;
import 'data/core/misc/firebase/cloud_storage/cloud_storage_service.dart' as _i30;
import 'data/core/modules/firebase_injectable_module.dart' as _i241;
import 'data/core/modules/google_injectable_module.dart' as _i242;
import 'data/core/modules/logger_injectable_module.dart' as _i243;
import 'data/core/repository/development_core_repository.dart' as _i40;
import 'data/core/repository/development_geo_location_repository.dart' as _i238;
import 'data/core/repository/production_core_repository.dart' as _i38;
import 'data/core/repository/production_geo_location_repository.dart' as _i239;
import 'data/experience_log/repository/development_experience_log_repository.dart' as _i70;
import 'data/experience_log/repository/production_experience_log_repository.dart' as _i235;
import 'data/experience_management/repository/development_experience_management_repository.dart'
    as _i77;
import 'data/experience_management/repository/production_experience_management_repository.dart'
    as _i236;
import 'data/experience_navigation/repository/development_experience_navigation_repository.dart'
    as _i80;
import 'data/experience_navigation/repository/production_experience_navigation_repository.dart'
    as _i237;
import 'data/main_feed/repository/development_main_feed_repository.dart' as _i115;
import 'data/main_feed/repository/production_main_feed_repository.dart' as _i116;
import 'data/notifications/repository/development_notification_repository.dart' as _i127;
import 'data/notifications/repository/production_notification_repository.dart' as _i125;
import 'data/options/repository/development_local_options_repository.dart' as _i106;
import 'data/options/repository/development_remote_options_repository.dart' as _i152;
import 'data/options/repository/production_local_options_repository.dart' as _i108;
import 'data/options/repository/production_remote_options_repository.dart' as _i153;
import 'data/profile/repository/development_profile_repository.dart' as _i140;
import 'data/profile/repository/production_profile_repository.dart' as _i141;
import 'data/search/repository/development_search_repository.dart' as _i167;
import 'data/search/repository/production_search_repository.dart' as _i168;
import 'data/store/repository/development_store_repository.dart' as _i179;
import 'data/store/repository/production_store_repository.dart' as _i180;
import 'data/tag_management/repository/development_tag_management_repository.dart' as _i190;
import 'data/tag_management/repository/development_tag_repository.dart' as _i184;
import 'data/tag_management/repository/production_tag_management_repository.dart' as _i191;
import 'data/tag_management/repository/production_tag_repository.dart' as _i185;
import 'domain/achievement_management/repository/achievement_repository_interface.dart' as _i6;
import 'domain/achievement_management/repository/achievement_repository_mock.dart' as _i7;
import 'domain/achievement_management/use_case/award_achievement.dart' as _i19;
import 'domain/achievement_management/use_case/create_achievement.dart' as _i41;
import 'domain/achievement_management/use_case/delete_achievement.dart' as _i45;
import 'domain/achievement_management/use_case/edit_achievement.dart' as _i58;
import 'domain/achievement_management/use_case/get_achievement.dart' as _i90;
import 'domain/achievement_management/use_case/use_case_mocks.dart' as _i20;
import 'domain/achievement_management/use_case/watch_all_achievements.dart' as _i200;
import 'domain/authentication/repository/authentication_repository_interface.dart' as _i16;
import 'domain/authentication/repository/authentication_repository_mock.dart' as _i18;
import 'domain/authentication/use_case/get_logged_in_user.dart' as _i94;
import 'domain/authentication/use_case/log_in.dart' as _i109;
import 'domain/authentication/use_case/log_in_google.dart' as _i111;
import 'domain/authentication/use_case/log_out.dart' as _i112;
import 'domain/authentication/use_case/register.dart' as _i149;
import 'domain/authentication/use_case/reset_password.dart' as _i156;
import 'domain/authentication/use_case/use_case_mocks.dart' as _i95;
import 'domain/comments/repository/comment_repository_interface.dart' as _i33;
import 'domain/comments/repository/comment_repository_mock.dart' as _i34;
import 'domain/comments/use_case/delete_comment.dart' as _i46;
import 'domain/comments/use_case/edit_comment.dart' as _i59;
import 'domain/comments/use_case/post_comment.dart' as _i133;
import 'domain/comments/use_case/use_case_mocks.dart' as _i47;
import 'domain/comments/use_case/watch_experience_comments.dart' as _i203;
import 'domain/comments/use_case/watch_user_comments.dart' as _i226;
import 'domain/core/repository/core_repository_interface.dart' as _i37;
import 'domain/core/repository/core_repository_mock.dart' as _i39;
import 'domain/core/repository/geo_location_repository_interface.dart' as _i88;
import 'domain/core/repository/geo_location_repository_mock.dart' as _i89;
import 'domain/core/use_case/get_current_location.dart' as _i91;
import 'domain/core/use_case/is_logged_in_user.dart' as _i100;
import 'domain/core/use_case/use_case.dart' as _i122;
import 'domain/core/use_case/use_case_mocks.dart' as _i92;
import 'domain/experience_log/repository/experience_log_repository_interface.dart' as _i69;
import 'domain/experience_log/repository/experience_log_repository_mock.dart' as _i71;
import 'domain/experience_log/use_case/add_experience_to_log.dart' as _i10;
import 'domain/experience_log/use_case/dismiss_experience_from_log.dart' as _i56;
import 'domain/experience_log/use_case/use_case_mocks.dart' as _i11;
import 'domain/experience_log/use_case/watch_user_log.dart' as _i228;
import 'domain/experience_management/repository/experience_management_repository_interface.dart'
    as _i75;
import 'domain/experience_management/repository/experience_management_repository_mock.dart' as _i76;
import 'domain/experience_management/use_case/create_experience.dart' as _i42;
import 'domain/experience_management/use_case/delete_experience.dart' as _i48;
import 'domain/experience_management/use_case/edit_experience.dart' as _i60;
import 'domain/experience_management/use_case/get_experience.dart' as _i93;
import 'domain/experience_management/use_case/use_case_mocks.dart' as _i43;
import 'domain/experience_navigation/repository/experience_navigation_repository_interface.dart'
    as _i78;
import 'domain/experience_navigation/repository/experience_navigation_repository_mock.dart' as _i79;
import 'domain/experience_navigation/use_case/accomplish_objective.dart' as _i229;
import 'domain/experience_navigation/use_case/dislike_experience.dart' as _i54;
import 'domain/experience_navigation/use_case/finish_experience.dart' as _i82;
import 'domain/experience_navigation/use_case/like_experience.dart' as _i101;
import 'domain/experience_navigation/use_case/load_surrounding_experiences.dart' as _i102;
import 'domain/experience_navigation/use_case/rate_difficulty.dart' as _i146;
import 'domain/experience_navigation/use_case/reward_user.dart' as _i158;
import 'domain/experience_navigation/use_case/save_user_progress.dart' as _i161;
import 'domain/experience_navigation/use_case/unaccomplish_objective.dart' as _i195;
import 'domain/experience_navigation/use_case/use_case_mocks.dart' as _i55;
import 'domain/experience_navigation/use_case/watch_recommended_experiences.dart' as _i217;
import 'domain/main_feed/repository/main_feed_repository_interface.dart' as _i114;
import 'domain/main_feed/repository/main_feed_repository_mock.dart' as _i117;
import 'domain/main_feed/use_case/use_case_mocks.dart' as _i208;
import 'domain/main_feed/use_case/watch_feed.dart' as _i207;
import 'domain/notifications/repository/notification_repository_interface.dart' as _i124;
import 'domain/notifications/repository/notification_repository_mock.dart' as _i126;
import 'domain/notifications/use_case/check_notification.dart' as _i28;
import 'domain/notifications/use_case/delete_notification.dart' as _i49;
import 'domain/notifications/use_case/delete_user_notifications.dart' as _i53;
import 'domain/notifications/use_case/send_notification.dart' as _i174;
import 'domain/notifications/use_case/use_case_mocks.dart' as _i29;
import 'domain/notifications/use_case/watch_if_new_notifications.dart' as _i211;
import 'domain/notifications/use_case/watch_notifications.dart' as _i212;
import 'domain/options/repository/local_options_repository_interface.dart' as _i105;
import 'domain/options/repository/local_options_repository_mock.dart' as _i107;
import 'domain/options/repository/remote_options_repository_interface.dart' as _i151;
import 'domain/options/repository/remote_options_repository_mock.dart' as _i154;
import 'domain/options/use_case/delete_user.dart' as _i51;
import 'domain/options/use_case/save_global_options.dart' as _i160;
import 'domain/options/use_case/use_case_mocks.dart' as _i52;
import 'domain/profile/repository/profile_repository_interface.dart' as _i139;
import 'domain/profile/repository/profile_repository_mock.dart' as _i142;
import 'domain/profile/use_case/block_user.dart' as _i22;
import 'domain/profile/use_case/edit_user.dart' as _i62;
import 'domain/profile/use_case/follow_user.dart' as _i86;
import 'domain/profile/use_case/load_user.dart' as _i103;
import 'domain/profile/use_case/remove_experience_liked.dart' as _i155;
import 'domain/profile/use_case/un_block_user.dart' as _i196;
import 'domain/profile/use_case/un_follow_user.dart' as _i197;
import 'domain/profile/use_case/use_case_mocks.dart' as _i23;
import 'domain/profile/use_case/watch_blocked_users.dart' as _i202;
import 'domain/profile/use_case/watch_experiences_created.dart' as _i204;
import 'domain/profile/use_case/watch_experiences_done.dart' as _i205;
import 'domain/profile/use_case/watch_experiences_liked.dart' as _i206;
import 'domain/profile/use_case/watch_followed_users.dart' as _i209;
import 'domain/profile/use_case/watch_following_users.dart' as _i210;
import 'domain/profile/use_case/watch_profile.dart' as _i214;
import 'domain/profile/use_case/watch_user_achievements.dart' as _i225;
import 'domain/profile/use_case/watch_user_interests.dart' as _i227;
import 'domain/search/repository/search_repository_interface.dart' as _i166;
import 'domain/search/repository/search_repository_mock.dart' as _i169;
import 'domain/search/use_case/search_to_share.dart' as _i171;
import 'domain/search/use_case/use_case_mocks.dart' as _i219;
import 'domain/search/use_case/watch_search_experiences_by_difficulty.dart' as _i218;
import 'domain/search/use_case/watch_search_experiences_by_name.dart' as _i220;
import 'domain/search/use_case/watch_search_experiences_by_tags.dart' as _i221;
import 'domain/search/use_case/watch_search_tags_by_name.dart' as _i222;
import 'domain/search/use_case/watch_search_users_by_name.dart' as _i223;
import 'domain/store/repository/store_repository_interface.dart' as _i178;
import 'domain/store/repository/store_repository_mock.dart' as _i181;
import 'domain/store/use_case/buy_coin.dart' as _i231;
import 'domain/store/use_case/buy_item.dart' as _i232;
import 'domain/store/use_case/buy_promotion_plan.dart' as _i233;
import 'domain/store/use_case/load_promotion_plans.dart' as _i240;
import 'domain/store/use_case/watch_owned_items.dart' as _i213;
import 'domain/store/use_case/watch_purchasable_items.dart' as _i215;
import 'domain/tag_management/repository/tag_management_repository_interface.dart' as _i189;
import 'domain/tag_management/repository/tag_management_repository_mock.dart' as _i192;
import 'domain/tag_management/repository/tag_repository_interface.dart' as _i183;
import 'domain/tag_management/repository/tag_repository_mock.dart' as _i186;
import 'domain/tag_management/use_case/add_tag_to_interests.dart' as _i12;
import 'domain/tag_management/use_case/create_tag.dart' as _i44;
import 'domain/tag_management/use_case/delete_tag.dart' as _i50;
import 'domain/tag_management/use_case/dismiss_tag_from_interests.dart' as _i57;
import 'domain/tag_management/use_case/edit_tag.dart' as _i61;
import 'domain/tag_management/use_case/get_tag.dart' as _i96;
import 'domain/tag_management/use_case/get_tag_creator.dart' as _i97;
import 'domain/tag_management/use_case/get_tags.dart' as _i98;
import 'domain/tag_management/use_case/use_case_mocks.dart' as _i13;
import 'domain/tag_management/use_case/watch_all_tags.dart' as _i201;
import 'domain/tag_management/use_case/watch_tags_by_creator.dart' as _i224;

const String _test = 'test';
const String _dev = 'dev';
const String _prod = 'prod';
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
  gh.lazySingleton<_i6.AchievementRepositoryInterface>(() => _i7.MockAchievementRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i6.AchievementRepositoryInterface>(() => _i8.DevelopmentAchievementRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i6.AchievementRepositoryInterface>(() => _i9.ProductionAchievementRepository(),
      registerFor: {_prod});
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
  gh.factory<_i30.CloudStorageService>(() => _i30.CloudStorageService());
  gh.factory<_i31.CommentActorBloc>(() => _i31.CommentActorBloc());
  gh.factory<_i32.CommentFormBloc>(() => _i32.CommentFormBloc());
  gh.lazySingleton<_i33.CommentRepositoryInterface>(() => _i34.MockCommentRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i33.CommentRepositoryInterface>(() => _i35.DevelopmentCommentRepository(),
      registerFor: {_dev});
  gh.factory<_i36.CommentWatcherBloc>(() => _i36.CommentWatcherBloc());
  gh.lazySingleton<_i37.CoreRepositoryInterface>(() => _i38.ProductionCoreRepository(),
      registerFor: {_prod});
  gh.lazySingleton<_i37.CoreRepositoryInterface>(() => _i39.MockCoreRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i37.CoreRepositoryInterface>(() => _i40.DevelopmentCoreRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i41.CreateAchievement>(
      () => _i41.CreateAchievement(get<_i6.AchievementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i41.CreateAchievement>(() => _i20.MockCreateAchievement(),
      registerFor: {_test});
  gh.lazySingleton<_i42.CreateExperience>(() => _i43.MockCreateExperience(), registerFor: {_test});
  gh.lazySingleton<_i44.CreateTag>(() => _i13.MockCreateTag(), registerFor: {_test});
  gh.lazySingleton<_i45.DeleteAchievement>(() => _i20.MockDeleteAchievement(),
      registerFor: {_test});
  gh.lazySingleton<_i45.DeleteAchievement>(
      () => _i45.DeleteAchievement(get<_i6.AchievementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i46.DeleteComment>(
      () => _i46.DeleteComment(get<_i33.CommentRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i46.DeleteComment>(() => _i47.MockDeleteComment(), registerFor: {_test});
  gh.lazySingleton<_i48.DeleteExperience>(() => _i43.MockDeleteExperience(), registerFor: {_test});
  gh.lazySingleton<_i49.DeleteNotification>(() => _i29.MockDeleteNotification(),
      registerFor: {_test});
  gh.lazySingleton<_i50.DeleteTag>(() => _i13.MockDeleteTag(), registerFor: {_test});
  gh.lazySingleton<_i51.DeleteUser>(() => _i52.MockDeleteUser(), registerFor: {_test});
  gh.lazySingleton<_i53.DeleteUserNotifications>(() => _i29.MockDeleteUserNotifications(),
      registerFor: {_test});
  gh.lazySingleton<_i54.DislikeExperience>(() => _i55.MockDislikeExperience(),
      registerFor: {_test});
  gh.lazySingleton<_i56.DismissExperienceFromLog>(() => _i11.MockDismissExperienceFromLog(),
      registerFor: {_test});
  gh.lazySingleton<_i57.DismissTagFromInterests>(() => _i13.MockDismissTagFromInterests(),
      registerFor: {_test});
  gh.lazySingleton<_i58.EditAchievement>(
      () => _i58.EditAchievement(get<_i6.AchievementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i58.EditAchievement>(() => _i20.MockEditAchievement(), registerFor: {_test});
  gh.lazySingleton<_i59.EditComment>(() => _i59.EditComment(get<_i33.CommentRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i59.EditComment>(() => _i47.MockEditComment(), registerFor: {_test});
  gh.lazySingleton<_i60.EditExperience>(() => _i43.MockEditExperience(), registerFor: {_test});
  gh.lazySingleton<_i61.EditTag>(() => _i13.MockEditTag(), registerFor: {_test});
  gh.lazySingleton<_i62.EditUser>(() => _i23.MockEditUser(), registerFor: {_test});
  gh.factory<_i63.ExperienceCardActorBloc>(() => _i63.ExperienceCardActorBloc());
  gh.factory<_i64.ExperienceCardLikeCheckBloc>(() => _i64.ExperienceCardLikeCheckBloc());
  gh.factory<_i65.ExperienceEditingFormBloc>(() => _i65.ExperienceEditingFormBloc());
  gh.factory<_i66.ExperienceFinishActorBloc>(() => _i66.ExperienceFinishActorBloc());
  gh.factory<_i67.ExperienceLikeActorBloc>(() => _i67.ExperienceLikeActorBloc());
  gh.factory<_i68.ExperienceLogActorBloc>(() => _i68.ExperienceLogActorBloc());
  gh.lazySingleton<_i69.ExperienceLogRepositoryInterface>(
      () => _i70.DevelopmentExperienceLogRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i69.ExperienceLogRepositoryInterface>(() => _i71.MockExperienceLogRepository(),
      registerFor: {_test});
  gh.factory<_i72.ExperienceLogWatcherBloc>(() => _i72.ExperienceLogWatcherBloc());
  gh.factory<_i73.ExperienceManagementActorBloc>(() => _i73.ExperienceManagementActorBloc());
  gh.factory<_i74.ExperienceManagementFormBloc>(() => _i74.ExperienceManagementFormBloc());
  gh.lazySingleton<_i75.ExperienceManagementRepositoryInterface>(
      () => _i76.MockExperienceManagementRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i75.ExperienceManagementRepositoryInterface>(
      () => _i77.DevelopmentExperienceManagementRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i78.ExperienceNavigationRepositoryInterface>(
      () => _i79.MockExperienceNavigationRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i78.ExperienceNavigationRepositoryInterface>(
      () => _i80.DevelopmentExperienceNavigationRepository(),
      registerFor: {_dev});
  gh.factory<_i81.ExperienceNavigationWatcherBloc>(() => _i81.ExperienceNavigationWatcherBloc());
  gh.lazySingleton<_i82.FinishExperience>(
      () => _i82.FinishExperience(get<_i78.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i82.FinishExperience>(() => _i55.MockFinishExperience(), registerFor: {_test});
  gh.lazySingleton<_i83.FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i84.FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.factory<_i85.FollowActorBloc>(() => _i85.FollowActorBloc());
  gh.lazySingleton<_i86.FollowUser>(() => _i23.MockFollowUser(), registerFor: {_test});
  gh.factory<_i87.ForgottenPasswordFormBloc>(() => _i87.ForgottenPasswordFormBloc());
  gh.lazySingleton<_i88.GeoLocationRepositoryInterface>(() => _i89.MockGeoLocationRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i90.GetAchievement>(() => _i20.MockGetAchievement(), registerFor: {_test});
  gh.lazySingleton<_i90.GetAchievement>(
      () => _i90.GetAchievement(get<_i6.AchievementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i91.GetCurrentLocation>(
      () => _i91.GetCurrentLocation(get<_i88.GeoLocationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i91.GetCurrentLocation>(() => _i92.MockGetCurrentLocation(),
      registerFor: {_test});
  gh.lazySingleton<_i93.GetExperience>(() => _i43.MockGetExperience(), registerFor: {_test});
  gh.lazySingleton<_i93.GetExperience>(
      () => _i93.GetExperience(get<_i75.ExperienceManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i94.GetLoggedInUser>(() => _i95.MockGetLoggedInUser(), registerFor: {_test});
  gh.lazySingleton<_i94.GetLoggedInUser>(
      () => _i94.GetLoggedInUser(get<_i16.AuthenticationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i96.GetTag>(() => _i13.MockGetTag(), registerFor: {_test});
  gh.lazySingleton<_i97.GetTagCreator>(() => _i13.MockGetTagCreator(), registerFor: {_test});
  gh.lazySingleton<_i98.GetTags>(() => _i13.MockGetTags(), registerFor: {_test});
  gh.lazySingleton<_i99.GoogleSignIn>(() => googleInjectableModule.googleSignIn);
  gh.lazySingleton<_i100.IsLoggedInUser>(() => _i92.MockIsLoggedInUser(), registerFor: {_test});
  gh.lazySingleton<_i100.IsLoggedInUser>(() => _i100.IsLoggedInUser(), registerFor: {_dev, _prod});
  gh.lazySingleton<_i101.LikeExperience>(
      () => _i101.LikeExperience(get<_i78.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i101.LikeExperience>(() => _i55.MockLikeExperience(), registerFor: {_test});
  gh.lazySingleton<_i102.LoadSurroundingExperiences>(
      () => _i102.LoadSurroundingExperiences(get<_i78.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i102.LoadSurroundingExperiences>(() => _i55.MockLoadSurroundingExperiences(),
      registerFor: {_test});
  gh.lazySingleton<_i103.LoadUser>(() => _i23.MockLoadUser(), registerFor: {_test});
  gh.factory<_i104.LoadUserBloc>(() => _i104.LoadUserBloc());
  gh.lazySingleton<_i105.LocalOptionsRepositoryInterface>(
      () => _i106.DevelopmentLocalOptionsRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i105.LocalOptionsRepositoryInterface>(() => _i107.MockLocalOptionsRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i105.LocalOptionsRepositoryInterface>(
      () => _i108.ProductionLocalOptionsRepository(),
      registerFor: {_prod});
  gh.lazySingleton<_i109.LogIn>(() => _i109.LogIn(get<_i16.AuthenticationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i109.LogIn>(() => _i95.MockLogIn(), registerFor: {_test});
  gh.factory<_i110.LogInFormBloc>(() => _i110.LogInFormBloc());
  gh.lazySingleton<_i111.LogInGoogle>(() => _i95.MockLogInGoogle(), registerFor: {_test});
  gh.lazySingleton<_i111.LogInGoogle>(
      () => _i111.LogInGoogle(get<_i16.AuthenticationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i112.LogOut>(() => _i95.MockLogOut(), registerFor: {_test});
  gh.lazySingleton<_i112.LogOut>(() => _i112.LogOut(get<_i16.AuthenticationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i113.Logger>(() => loggerInjectableModule.logger);
  gh.lazySingleton<_i114.MainFeedRepositoryInterface>(() => _i115.DevelopmentMainFeedRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i114.MainFeedRepositoryInterface>(
      () => _i116.ProductionMainFeedRepository(get<_i84.FirebaseFirestore>(), get<_i113.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i114.MainFeedRepositoryInterface>(() => _i117.MockMainFeedRepository(),
      registerFor: {_test});
  gh.factory<_i118.MainFeedWatcherBloc>(() => _i118.MainFeedWatcherBloc());
  gh.factory<_i119.MapControllerBloc>(() => _i119.MapControllerBloc());
  gh.factory<_i120.NavigationActorBloc>(() => _i120.NavigationActorBloc());
  gh.factory<_i121.NewNotificationsWatcherBloc>(() => _i121.NewNotificationsWatcherBloc());
  gh.lazySingleton<_i122.NoParams>(() => _i122.NoParams());
  gh.factory<_i123.NotificationActorBloc>(() => _i123.NotificationActorBloc());
  gh.lazySingleton<_i124.NotificationRepositoryInterface>(
      () => _i125.ProductionNotificationRepository(
          get<_i84.FirebaseFirestore>(), get<_i113.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i124.NotificationRepositoryInterface>(() => _i126.MockNotificationRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i124.NotificationRepositoryInterface>(
      () => _i127.DevelopmentNotificationRepository(),
      registerFor: {_dev});
  gh.factory<_i128.NotificationsWatcherBloc>(() => _i128.NotificationsWatcherBloc());
  gh.factory<_i129.ObjectiveFormBloc>(() => _i129.ObjectiveFormBloc());
  gh.factory<_i130.ObjectivesCreationBloc>(() => _i130.ObjectivesCreationBloc());
  gh.factory<_i131.ObjectivesTrackerBloc>(() => _i131.ObjectivesTrackerBloc());
  gh.factory<_i132.OptionsFormBloc>(() => _i132.OptionsFormBloc());
  gh.lazySingleton<_i133.PostComment>(
      () => _i133.PostComment(get<_i33.CommentRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i133.PostComment>(() => _i47.MockPostComment(), registerFor: {_test});
  gh.factory<_i134.ProfileAchievementsWatcherBloc>(() => _i134.ProfileAchievementsWatcherBloc());
  gh.factory<_i135.ProfileEditingFormBloc>(() => _i135.ProfileEditingFormBloc());
  gh.factory<_i136.ProfileExperiencesWatcherBloc>(() => _i136.ProfileExperiencesWatcherBloc());
  gh.factory<_i137.ProfileForeignOrOwnBloc>(() => _i137.ProfileForeignOrOwnBloc());
  gh.factory<_i138.ProfileInterestsWatcherBloc>(() => _i138.ProfileInterestsWatcherBloc());
  gh.lazySingleton<_i139.ProfileRepositoryInterface>(() => _i140.DevelopmentProfileRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i139.ProfileRepositoryInterface>(
      () => _i141.ProductionProfileRepository(get<_i84.FirebaseFirestore>(), get<_i113.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i139.ProfileRepositoryInterface>(() => _i142.MockProfileRepository(),
      registerFor: {_test});
  gh.factory<_i143.ProfileUsersWatcherBloc>(() => _i143.ProfileUsersWatcherBloc());
  gh.factory<_i144.ProfileWatcherBloc>(() => _i144.ProfileWatcherBloc());
  gh.factory<_i145.PromotionPlansLoaderBloc>(() => _i145.PromotionPlansLoaderBloc());
  gh.lazySingleton<_i146.RateDifficulty>(
      () => _i146.RateDifficulty(get<_i78.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i146.RateDifficulty>(() => _i55.MockRateDifficulty(), registerFor: {_test});
  gh.factory<_i147.RateExperienceDifficultyActorBloc>(
      () => _i147.RateExperienceDifficultyActorBloc());
  gh.factory<_i148.RecommendedExperiencesWatcherBloc>(
      () => _i148.RecommendedExperiencesWatcherBloc());
  gh.lazySingleton<_i149.Register>(() => _i95.MockRegister(), registerFor: {_test});
  gh.lazySingleton<_i149.Register>(
      () => _i149.Register(get<_i16.AuthenticationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.factory<_i150.RegistrationFormBloc>(() => _i150.RegistrationFormBloc());
  gh.lazySingleton<_i151.RemoteOptionsRepositoryInterface>(
      () => _i152.DevelopmentRemoteOptionsRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i151.RemoteOptionsRepositoryInterface>(
      () => _i153.ProductionRemoteOptionsRepository(),
      registerFor: {_prod});
  gh.lazySingleton<_i151.RemoteOptionsRepositoryInterface>(
      () => _i154.MockRemoteOptionsRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i155.RemoveExperienceLiked>(
      () => _i155.RemoveExperienceLiked(get<_i139.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i155.RemoveExperienceLiked>(() => _i23.MockRemoveExperienceLiked(),
      registerFor: {_test});
  gh.lazySingleton<_i156.ResetPassword>(
      () => _i156.ResetPassword(get<_i16.AuthenticationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.factory<_i157.RewardFormBloc>(() => _i157.RewardFormBloc());
  gh.lazySingleton<_i158.RewardUser>(
      () => _i158.RewardUser(get<_i78.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i158.RewardUser>(() => _i55.MockRewardUser(), registerFor: {_test});
  gh.factory<_i159.RewardsCreationBloc>(() => _i159.RewardsCreationBloc());
  gh.lazySingleton<_i160.SaveGlobalOptions>(
      () => _i160.SaveGlobalOptions(get<_i151.RemoteOptionsRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i160.SaveGlobalOptions>(() => _i52.MockSaveGlobalOptions(),
      registerFor: {_test});
  gh.lazySingleton<_i161.SaveUserProgress>(
      () => _i161.SaveUserProgress(get<_i78.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.factory<_i162.SearchByNameFormBloc>(() => _i162.SearchByNameFormBloc());
  gh.factory<_i163.SearchExperiencesByDifficultyBloc>(
      () => _i163.SearchExperiencesByDifficultyBloc());
  gh.factory<_i164.SearchExperiencesByNameWatcherBloc>(
      () => _i164.SearchExperiencesByNameWatcherBloc());
  gh.factory<_i165.SearchExperiencesByTagsBloc>(() => _i165.SearchExperiencesByTagsBloc());
  gh.lazySingleton<_i166.SearchRepositoryInterface>(() => _i167.DevelopmentSearchRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i166.SearchRepositoryInterface>(
      () => _i168.ProductionSearchRepository(get<_i84.FirebaseFirestore>(), get<_i113.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i166.SearchRepositoryInterface>(() => _i169.MockSearchRepository(),
      registerFor: {_test});
  gh.factory<_i170.SearchTagsByNameWatcherBloc>(() => _i170.SearchTagsByNameWatcherBloc());
  gh.lazySingleton<_i171.SearchToShare>(
      () => _i171.SearchToShare(get<_i166.SearchRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.factory<_i172.SearchToShareBloc>(() => _i172.SearchToShareBloc());
  gh.factory<_i173.SearchUsersByNameWatcherBloc>(() => _i173.SearchUsersByNameWatcherBloc());
  gh.lazySingleton<_i174.SendNotification>(() => _i29.MockSendNotification(), registerFor: {_test});
  gh.lazySingleton<_i174.SendNotification>(
      () => _i174.SendNotification(get<_i124.NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.factory<_i175.ShareExperienceInternallyBloc>(() => _i175.ShareExperienceInternallyBloc());
  gh.factory<_i176.StoreAppBarTitleBloc>(() => _i176.StoreAppBarTitleBloc());
  gh.factory<_i177.StoreNavigationActorBloc>(() => _i177.StoreNavigationActorBloc());
  gh.lazySingleton<_i178.StoreRepositoryInterface>(() => _i179.DevelopmentStoreRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i178.StoreRepositoryInterface>(
      () => _i180.ProductionStoreRepository(get<_i84.FirebaseFirestore>(), get<_i113.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i178.StoreRepositoryInterface>(() => _i181.MockStoreRepository(),
      registerFor: {_test});
  gh.factory<_i182.TagCardActorBloc>(() => _i182.TagCardActorBloc());
  gh.lazySingleton<_i183.TagCoreRepositoryInterface>(() => _i184.DevelopmentTagRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i183.TagCoreRepositoryInterface>(
      () => _i185.ProductionTagRepository(get<_i84.FirebaseFirestore>(), get<_i113.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i183.TagCoreRepositoryInterface>(() => _i186.MockTagRepository(),
      registerFor: {_test});
  gh.factory<_i187.TagManagementActorBloc>(() => _i187.TagManagementActorBloc());
  gh.factory<_i188.TagManagementFormBloc>(() => _i188.TagManagementFormBloc());
  gh.lazySingleton<_i189.TagManagementRepositoryInterface>(
      () => _i190.DevelopmentTagManagementRepository(),
      registerFor: {_dev});
  gh.lazySingleton<_i189.TagManagementRepositoryInterface>(
      () => _i191.ProductionTagManagementRepository(
          get<_i84.FirebaseFirestore>(), get<_i113.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i189.TagManagementRepositoryInterface>(
      () => _i192.MockTagManagementRepository(),
      registerFor: {_test});
  gh.factory<_i193.TagManagementWatcherBloc>(() => _i193.TagManagementWatcherBloc());
  gh.factory<_i194.TagSelectorBloc>(() => _i194.TagSelectorBloc());
  gh.lazySingleton<_i195.UnAccomplishObjective>(
      () => _i195.UnAccomplishObjective(get<_i78.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i196.UnBlockUser>(
      () => _i196.UnBlockUser(get<_i139.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i196.UnBlockUser>(() => _i23.MockUnBlockUser(), registerFor: {_test});
  gh.lazySingleton<_i197.UnFollowUser>(() => _i23.MockUnFollowUser(), registerFor: {_test});
  gh.lazySingleton<_i197.UnFollowUser>(
      () => _i197.UnFollowUser(get<_i139.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.factory<_i198.UserActorBloc>(() => _i198.UserActorBloc());
  gh.factory<_i199.UserProfileButtonWatcherBloc>(() => _i199.UserProfileButtonWatcherBloc());
  gh.lazySingleton<_i200.WatchAllAchievements>(() => _i20.MockGetAllAchievements(),
      registerFor: {_test});
  gh.lazySingleton<_i200.WatchAllAchievements>(
      () => _i200.WatchAllAchievements(get<_i6.AchievementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i201.WatchAllTags>(
      () => _i201.WatchAllTags(get<_i183.TagCoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i201.WatchAllTags>(() => _i13.MockGetAllTags(), registerFor: {_test});
  gh.lazySingleton<_i202.WatchBlockedUsers>(() => _i23.MockLoadBlockedUsers(),
      registerFor: {_test});
  gh.lazySingleton<_i202.WatchBlockedUsers>(
      () => _i202.WatchBlockedUsers(get<_i139.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i203.WatchExperienceComments>(
      () => _i203.WatchExperienceComments(get<_i33.CommentRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i203.WatchExperienceComments>(() => _i47.MockGetExperienceComments(),
      registerFor: {_test});
  gh.lazySingleton<_i204.WatchExperiencesCreated>(
      () => _i204.WatchExperiencesCreated(get<_i139.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i204.WatchExperiencesCreated>(() => _i23.MockLoadExperiencesCreated(),
      registerFor: {_test});
  gh.lazySingleton<_i205.WatchExperiencesDone>(
      () => _i205.WatchExperiencesDone(get<_i139.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i205.WatchExperiencesDone>(() => _i23.MockLoadExperiencesDone(),
      registerFor: {_test});
  gh.lazySingleton<_i206.WatchExperiencesLiked>(() => _i23.MockLoadExperiencesLiked(),
      registerFor: {_test});
  gh.lazySingleton<_i206.WatchExperiencesLiked>(
      () => _i206.WatchExperiencesLiked(get<_i139.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i207.WatchFeed>(() => _i208.MockFillFeed(), registerFor: {_test});
  gh.lazySingleton<_i207.WatchFeed>(() => _i207.WatchFeed(get<_i114.MainFeedRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i209.WatchFollowedUsers>(() => _i23.MockLoadFollowedUsers(),
      registerFor: {_test});
  gh.lazySingleton<_i209.WatchFollowedUsers>(
      () => _i209.WatchFollowedUsers(get<_i139.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i210.WatchFollowingUsers>(
      () => _i210.WatchFollowingUsers(get<_i139.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i210.WatchFollowingUsers>(() => _i23.MockLoadFollowingUsers(),
      registerFor: {_test});
  gh.lazySingleton<_i211.WatchIfNewNotifications>(
      () => _i211.WatchIfNewNotifications(get<_i124.NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i212.WatchNotifications>(
      () => _i212.WatchNotifications(get<_i124.NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i212.WatchNotifications>(() => _i29.MockLoadNotifications(),
      registerFor: {_test});
  gh.lazySingleton<_i213.WatchOwnedItems>(
      () => _i213.WatchOwnedItems(get<_i178.StoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i214.WatchProfile>(
      () => _i214.WatchProfile(get<_i139.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i215.WatchPurchasableItems>(
      () => _i215.WatchPurchasableItems(get<_i178.StoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.factory<_i216.WatchPurchasableItemsBloc>(() => _i216.WatchPurchasableItemsBloc());
  gh.lazySingleton<_i217.WatchRecommendedExperiences>(
      () => _i217.WatchRecommendedExperiences(get<_i78.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i218.WatchSearchExperiencesByDifficulty>(
      () => _i219.MockSearchExperiencesByDifficulty(),
      registerFor: {_test});
  gh.lazySingleton<_i218.WatchSearchExperiencesByDifficulty>(
      () => _i218.WatchSearchExperiencesByDifficulty(get<_i166.SearchRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i220.WatchSearchExperiencesByName>(
      () => _i220.WatchSearchExperiencesByName(get<_i166.SearchRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i220.WatchSearchExperiencesByName>(() => _i219.MockSearchExperiencesByName(),
      registerFor: {_test});
  gh.lazySingleton<_i221.WatchSearchExperiencesByTags>(
      () => _i221.WatchSearchExperiencesByTags(get<_i166.SearchRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i221.WatchSearchExperiencesByTags>(() => _i219.MockSearchExperiencesByTags(),
      registerFor: {_test});
  gh.lazySingleton<_i222.WatchSearchTagsByName>(
      () => _i222.WatchSearchTagsByName(get<_i166.SearchRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i222.WatchSearchTagsByName>(() => _i219.MockSearchTagsByName(),
      registerFor: {_test});
  gh.lazySingleton<_i223.WatchSearchUsersByName>(
      () => _i223.WatchSearchUsersByName(get<_i166.SearchRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i223.WatchSearchUsersByName>(() => _i219.MockSearchUsersByName(),
      registerFor: {_test});
  gh.lazySingleton<_i224.WatchTagsByCreator>(
      () => _i224.WatchTagsByCreator(get<_i183.TagCoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i224.WatchTagsByCreator>(() => _i13.MockGetTagsByCreator(),
      registerFor: {_test});
  gh.lazySingleton<_i225.WatchUserAchievements>(() => _i23.MockLoadUserAchievements(),
      registerFor: {_test});
  gh.lazySingleton<_i225.WatchUserAchievements>(
      () => _i225.WatchUserAchievements(get<_i139.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i226.WatchUserComments>(
      () => _i226.WatchUserComments(get<_i33.CommentRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i226.WatchUserComments>(() => _i47.MockGetUserComments(), registerFor: {_test});
  gh.lazySingleton<_i227.WatchUserInterests>(() => _i23.MockLoadUserInterests(),
      registerFor: {_test});
  gh.lazySingleton<_i227.WatchUserInterests>(
      () => _i227.WatchUserInterests(get<_i139.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i228.WatchUserLog>(
      () => _i228.WatchUserLog(get<_i69.ExperienceLogRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i228.WatchUserLog>(() => _i11.MockLoadUserLog(), registerFor: {_test});
  gh.lazySingleton<_i229.AccomplishObjective>(
      () => _i229.AccomplishObjective(get<_i78.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i10.AddExperienceToLog>(
      () => _i10.AddExperienceToLog(get<_i69.ExperienceLogRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i12.AddTagToInterests>(
      () => _i12.AddTagToInterests(get<_i183.TagCoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i16.AuthenticationRepositoryInterface>(
      () => _i230.ProductionAuthenticationRepository(get<_i83.FirebaseAuth>(),
          get<_i99.GoogleSignIn>(), get<_i84.FirebaseFirestore>(), get<_i113.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i22.BlockUser>(() => _i22.BlockUser(get<_i139.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i231.BuyCoins>(() => _i231.BuyCoins(get<_i178.StoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i232.BuyItem>(() => _i232.BuyItem(get<_i178.StoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i233.BuyPromotionPlan>(
      () => _i233.BuyPromotionPlan(get<_i178.StoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i28.CheckNotification>(
      () => _i28.CheckNotification(get<_i124.NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i33.CommentRepositoryInterface>(
      () => _i234.ProductionCommentRepository(get<_i84.FirebaseFirestore>(), get<_i113.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i42.CreateExperience>(
      () => _i42.CreateExperience(get<_i75.ExperienceManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i44.CreateTag>(
      () => _i44.CreateTag(get<_i189.TagManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i48.DeleteExperience>(
      () => _i48.DeleteExperience(get<_i75.ExperienceManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i49.DeleteNotification>(
      () => _i49.DeleteNotification(get<_i124.NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i50.DeleteTag>(
      () => _i50.DeleteTag(get<_i189.TagManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i51.DeleteUser>(
      () => _i51.DeleteUser(get<_i151.RemoteOptionsRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i53.DeleteUserNotifications>(
      () => _i53.DeleteUserNotifications(get<_i124.NotificationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i54.DislikeExperience>(
      () => _i54.DislikeExperience(get<_i78.ExperienceNavigationRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i56.DismissExperienceFromLog>(
      () => _i56.DismissExperienceFromLog(get<_i69.ExperienceLogRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i57.DismissTagFromInterests>(
      () => _i57.DismissTagFromInterests(get<_i183.TagCoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i60.EditExperience>(
      () => _i60.EditExperience(get<_i75.ExperienceManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i61.EditTag>(() => _i61.EditTag(get<_i189.TagManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i62.EditUser>(() => _i62.EditUser(get<_i139.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i69.ExperienceLogRepositoryInterface>(
      () => _i235.ProductionExperienceLogRepository(
          get<_i84.FirebaseFirestore>(), get<_i113.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i75.ExperienceManagementRepositoryInterface>(
      () => _i236.ProductionExperienceManagementRepository(
          get<_i84.FirebaseFirestore>(), get<_i113.Logger>(), get<_i30.CloudStorageService>()),
      registerFor: {_prod});
  gh.lazySingleton<_i78.ExperienceNavigationRepositoryInterface>(
      () => _i237.ProductionExperienceNavigationRepository(
          get<_i84.FirebaseFirestore>(), get<_i113.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i86.FollowUser>(() => _i86.FollowUser(get<_i139.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i88.GeoLocationRepositoryInterface>(
      () => _i238.DevelopmentGeoLocationRepository(get<_i113.Logger>()),
      registerFor: {_dev});
  gh.lazySingleton<_i88.GeoLocationRepositoryInterface>(
      () => _i239.ProductionGeoLocationRepository(get<_i113.Logger>()),
      registerFor: {_prod});
  gh.lazySingleton<_i96.GetTag>(() => _i96.GetTag(get<_i189.TagManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i97.GetTagCreator>(
      () => _i97.GetTagCreator(get<_i183.TagCoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i98.GetTags>(() => _i98.GetTags(get<_i189.TagManagementRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i240.LoadPromotionPlans>(
      () => _i240.LoadPromotionPlans(get<_i178.StoreRepositoryInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i103.LoadUser>(() => _i103.LoadUser(get<_i139.ProfileRepositoryInterface>()),
      registerFor: {_dev, _prod});
  return get;
}

class _$FirebaseInjectableModule extends _i241.FirebaseInjectableModule {}

class _$GoogleInjectableModule extends _i242.GoogleInjectableModule {}

class _$LoggerInjectableModule extends _i243.LoggerInjectableModule {}
