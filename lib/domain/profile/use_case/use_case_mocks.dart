import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/profile/use_case/block_user.dart';
import 'package:worldon/domain/profile/use_case/delete_experience.dart';
import 'package:worldon/domain/profile/use_case/edit_user.dart';
import 'package:worldon/domain/profile/use_case/follow_user.dart';
import 'package:worldon/domain/profile/use_case/load_user.dart';
import 'package:worldon/domain/profile/use_case/remove_experience_liked.dart';
import 'package:worldon/domain/profile/use_case/un_block_user.dart';
import 'package:worldon/domain/profile/use_case/un_follow_user.dart';
import 'package:worldon/domain/profile/use_case/watch_blocked_users.dart';
import 'package:worldon/domain/profile/use_case/watch_experiences_created.dart';
import 'package:worldon/domain/profile/use_case/watch_experiences_done.dart';
import 'package:worldon/domain/profile/use_case/watch_experiences_liked.dart';
import 'package:worldon/domain/profile/use_case/watch_followed_users.dart';
import 'package:worldon/domain/profile/use_case/watch_following_users.dart';
import 'package:worldon/domain/profile/use_case/watch_user_achievements.dart';
import 'package:worldon/domain/profile/use_case/watch_user_interests.dart';

@LazySingleton(as: BlockUser, env: [Environment.test])
class MockBlockUser extends Mock implements BlockUser {}

@LazySingleton(as: DeleteExperience, env: [Environment.test])
class MockDeleteExperience extends Mock implements DeleteExperience {}

@LazySingleton(as: EditUser, env: [Environment.test])
class MockEditUser extends Mock implements EditUser {}

@LazySingleton(as: FollowUser, env: [Environment.test])
class MockFollowUser extends Mock implements FollowUser {}

@LazySingleton(as: WatchBlockedUsers, env: [Environment.test])
class MockLoadBlockedUsers extends Mock implements WatchBlockedUsers {}

@LazySingleton(as: WatchExperiencesCreated, env: [Environment.test])
class MockLoadExperiencesCreated extends Mock implements WatchExperiencesCreated {}

@LazySingleton(as: WatchExperiencesDone, env: [Environment.test])
class MockLoadExperiencesDone extends Mock implements WatchExperiencesDone {}

@LazySingleton(as: WatchExperiencesLiked, env: [Environment.test])
class MockLoadExperiencesLiked extends Mock implements WatchExperiencesLiked {}

@LazySingleton(as: WatchFollowedUsers, env: [Environment.test])
class MockLoadFollowedUsers extends Mock implements WatchFollowedUsers {}

@LazySingleton(as: WatchFollowingUsers, env: [Environment.test])
class MockLoadFollowingUsers extends Mock implements WatchFollowingUsers {}

@LazySingleton(as: LoadUser, env: [Environment.test])
class MockLoadUser extends Mock implements LoadUser {}

@LazySingleton(as: WatchUserAchievements, env: [Environment.test])
class MockLoadUserAchievements extends Mock implements WatchUserAchievements {}

@LazySingleton(as: WatchUserInterests, env: [Environment.test])
class MockLoadUserInterests extends Mock implements WatchUserInterests {}

@LazySingleton(as: RemoveExperienceLiked, env: [Environment.test])
class MockRemoveExperienceLiked extends Mock implements RemoveExperienceLiked {}

@LazySingleton(as: UnBlockUser, env: [Environment.test])
class MockUnBlockUser extends Mock implements UnBlockUser {}

@LazySingleton(as: UnFollowUser, env: [Environment.test])
class MockUnFollowUser extends Mock implements UnFollowUser {}
