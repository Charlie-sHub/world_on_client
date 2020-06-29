import 'package:flutter/foundation.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

@Deprecated("This class is no longer necessary considering the way Search will be implemented")
// Maybe it could be used in the future, hence why it's not being deleted
// TODO: Reimplement as a freezed data class with Either<Failure, CollectionValueObject> fields
// Would make the BLoC implementation easier
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
