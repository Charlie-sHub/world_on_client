import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

class MoorUserWithRelations {
  final MoorUser user;
  final Set<String> blockedUsersIds;
  final Set<String> followedUsersIds;
  final Set<String> interestsIds;
  final Set<String> achievementsIds;
  final Set<String> experiencesDoneIds;
  final Set<String> experiencesLikedIds;
  final Set<String> experiencesToDoIds;

  MoorUserWithRelations({
    @required this.user,
    @required this.blockedUsersIds,
    @required this.followedUsersIds,
    @required this.interestsIds,
    @required this.achievementsIds,
    @required this.experiencesDoneIds,
    @required this.experiencesLikedIds,
    @required this.experiencesToDoIds,
  });
}
