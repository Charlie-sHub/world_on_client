import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/achievement_management/use_case/award_achievement.dart';
import 'package:worldon/domain/achievement_management/use_case/create_achievement.dart';
import 'package:worldon/domain/achievement_management/use_case/delete_achievement.dart';
import 'package:worldon/domain/achievement_management/use_case/edit_achievement.dart';
import 'package:worldon/domain/achievement_management/use_case/get_achievement.dart';
import 'package:worldon/domain/achievement_management/use_case/watch_all_achievements.dart';

@LazySingleton(as: AwardAchievement, env: [Environment.test])
class MockAwardAchievement extends Mock implements AwardAchievement {}

@LazySingleton(as: CreateAchievement, env: [Environment.test])
class MockCreateAchievement extends Mock implements CreateAchievement {}

@LazySingleton(as: DeleteAchievement, env: [Environment.test])
class MockDeleteAchievement extends Mock implements DeleteAchievement {}

@LazySingleton(as: EditAchievement, env: [Environment.test])
class MockEditAchievement extends Mock implements EditAchievement {}

@LazySingleton(as: GetAchievement, env: [Environment.test])
class MockGetAchievement extends Mock implements GetAchievement {}

@LazySingleton(as: WatchAllAchievements, env: [Environment.test])
class MockGetAllAchievements extends Mock implements WatchAllAchievements {}
