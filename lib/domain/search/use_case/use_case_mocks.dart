import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/search/use_case/watch_search_experiences_by_difficulty.dart';
import 'package:worldon/domain/search/use_case/watch_search_experiences_by_name.dart';
import 'package:worldon/domain/search/use_case/watch_search_experiences_by_tags.dart';
import 'package:worldon/domain/search/use_case/watch_search_tags_by_name.dart';
import 'package:worldon/domain/search/use_case/watch_search_users_by_name.dart';
import 'package:worldon/domain/search/use_case/watch_search_users_by_username.dart';

@LazySingleton(as: WatchSearchExperiencesByDifficulty, env: [Environment.test])
class MockSearchExperiencesByDifficulty extends Mock implements WatchSearchExperiencesByDifficulty {}

@LazySingleton(as: WatchSearchExperiencesByName, env: [Environment.test])
class MockSearchExperiencesByName extends Mock implements WatchSearchExperiencesByName {}

@LazySingleton(as: WatchSearchExperiencesByTags, env: [Environment.test])
class MockSearchExperiencesByTags extends Mock implements WatchSearchExperiencesByTags {}

@LazySingleton(as: WatchSearchTagsByName, env: [Environment.test])
class MockSearchTagsByName extends Mock implements WatchSearchTagsByName {}

@LazySingleton(as: WatchSearchUsersByName, env: [Environment.test])
class MockSearchUsersByName extends Mock implements WatchSearchUsersByName {}

@LazySingleton(as: WatchSearchUsersByUsername, env: [Environment.test])
class MockSearchUsersByUsername extends Mock implements WatchSearchUsersByUsername {}
