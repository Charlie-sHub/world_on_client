import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';

part 'search_results.freezed.dart';

/// Meant to hold the results of a search by [Name]
// Maybe add value objects in the future and support for the other kinds of searches
@freezed
abstract class SearchResults implements _$SearchResults {
  const SearchResults._();

  const factory SearchResults({
    @required Either<Failure, Set<Experience>> experiencesFound,
    @required Either<Failure, Set<User>> usersFoundByName,
    @required Either<Failure, Set<User>> usersFoundByUserName,
    @required Either<Failure, Set<Tag>> tagsFound,
  }) = _SearchResults;

  factory SearchResults.empty() => SearchResults(
        experiencesFound: right({}),
        usersFoundByName: right({}),
        usersFoundByUserName: right({}),
        tagsFound: right({}),
      );
}
