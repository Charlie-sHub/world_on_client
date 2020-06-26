import 'package:flutter/foundation.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

@Deprecated("This class is lo longer necessary considering the way Search will be implemented")
// Maybe it could be used in the future, hence why it's not being deleted
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
