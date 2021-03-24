import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/experience_navigation/use_case/dislike_experience.dart';
import 'package:worldon/domain/experience_navigation/use_case/finish_experience.dart';
import 'package:worldon/domain/experience_navigation/use_case/like_experience.dart';
import 'package:worldon/domain/experience_navigation/use_case/load_surrounding_experiences.dart';
import 'package:worldon/domain/experience_navigation/use_case/rate_difficulty.dart';
import 'package:worldon/domain/experience_navigation/use_case/reward_user.dart';

@LazySingleton(as: FinishExperience, env: [Environment.test])
class MockFinishExperience extends Mock implements FinishExperience {}

@LazySingleton(as: LikeExperience, env: [Environment.test])
class MockLikeExperience extends Mock implements LikeExperience {}

@LazySingleton(as: DislikeExperience, env: [Environment.test])
class MockDislikeExperience extends Mock implements DislikeExperience {}

@LazySingleton(as: LoadSurroundingExperiences, env: [Environment.test])
class MockLoadSurroundingExperiences extends Mock implements LoadSurroundingExperiences {}

@LazySingleton(as: RateDifficulty, env: [Environment.test])
class MockRateDifficulty extends Mock implements RateDifficulty {}

@LazySingleton(as: RewardUser, env: [Environment.test])
class MockRewardUser extends Mock implements RewardUser {}
