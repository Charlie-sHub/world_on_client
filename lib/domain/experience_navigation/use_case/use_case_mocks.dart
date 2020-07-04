import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/experience_navigation/use_case/accomplish_objective.dart';
import 'package:worldon/domain/experience_navigation/use_case/fill_objective_tracker.dart';
import 'package:worldon/domain/experience_navigation/use_case/finish_experience.dart';
import 'package:worldon/domain/experience_navigation/use_case/like_experience.dart';
import 'package:worldon/domain/experience_navigation/use_case/load_surrounding_experiences.dart';
import 'package:worldon/domain/experience_navigation/use_case/rate_difficulty.dart';
import 'package:worldon/domain/experience_navigation/use_case/reward_user.dart';

@LazySingleton(as: AccomplishObjective, env: Environment.test)
class MockAccomplishObjective extends Mock implements AccomplishObjective {}

@LazySingleton(as: FillObjectiveTracker, env: Environment.test)
class MockFillObjectiveTracker extends Mock implements FillObjectiveTracker {}

@LazySingleton(as: FinishExperience, env: Environment.test)
class MockFinishExperience extends Mock implements FinishExperience {}

@LazySingleton(as: LikeExperience, env: Environment.test)
class MockLikeExperience extends Mock implements LikeExperience {}

@LazySingleton(as: LoadSurroundingExperiences, env: Environment.test)
class MockLoadSurroundingExperiences extends Mock implements LoadSurroundingExperiences {}

@LazySingleton(as: RateDifficulty, env: Environment.test)
class MockRateDifficulty extends Mock implements RateDifficulty {}

@LazySingleton(as: RewardUser, env: Environment.test)
class MockRewardUser extends Mock implements RewardUser {}
