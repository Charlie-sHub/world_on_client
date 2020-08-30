import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

class MoorUserWithRelations {
  final MoorUser user;
  final Set<int> blockedUsersIds;
  final Set<int> followedUsersIds;
  final Set<int> interestsIds;
  final Set<int> achievementsIds;
  final Set<int> experiencesDoneIds;
  final Set<int> experiencesLikedIds;
  final Set<int> experiencesToDoIds;

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
