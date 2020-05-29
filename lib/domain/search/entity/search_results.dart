import 'package:meta/meta.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';

class SearchResults {
  final Set<Experience> experiencesFound;
  final Set<User> usersFound;
  final Set<Tag> tagsFound;

  SearchResults({
    @required this.experiencesFound,
    @required this.usersFound,
    @required this.tagsFound,
  });
}
