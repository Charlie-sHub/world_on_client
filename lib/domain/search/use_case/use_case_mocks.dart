import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/search/use_case/search_experiences_by_difficulty.dart';
import 'package:worldon/domain/search/use_case/search_experiences_by_name.dart';
import 'package:worldon/domain/search/use_case/search_experiences_by_tags.dart';
import 'package:worldon/domain/search/use_case/search_tags_by_name.dart';
import 'package:worldon/domain/search/use_case/search_users_by_name.dart';
import 'package:worldon/domain/search/use_case/search_users_by_username.dart';

@LazySingleton(as: SearchExperiencesByDifficulty, env: Environment.test)
class MockSearchExperiencesByDifficulty extends Mock implements SearchExperiencesByDifficulty {}

@LazySingleton(as: SearchExperiencesByName, env: Environment.test)
class MockSearchExperiencesByName extends Mock implements SearchExperiencesByName {}

@LazySingleton(as: SearchExperiencesByTags, env: Environment.test)
class MockSearchExperiencesByTags extends Mock implements SearchExperiencesByTags {}

@LazySingleton(as: SearchTagsByName, env: Environment.test)
class MockSearchTagsByName extends Mock implements SearchTagsByName {}

@LazySingleton(as: SearchUsersByName, env: Environment.test)
class MockSearchUsersByName extends Mock implements SearchUsersByName {}

@LazySingleton(as: SearchUsersByUsername, env: Environment.test)
class MockSearchUsersByUsername extends Mock implements SearchUsersByUsername {}
