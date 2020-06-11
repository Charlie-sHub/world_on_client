import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/search/entity/search_results.dart';
import 'package:worldon/domain/search/repository/search_repository_interface.dart';

@Deprecated("In favour of distinct use cases for each search that the BLoC will manage")
class SearchByName implements AsyncUseCase<SearchResults, Params> {
  final SearchRepositoryInterface _repository;

  const SearchByName(this._repository);

  @override
  Future<Either<Failure, SearchResults>> call(Params params) async {
    // This whole thing is way too messy
    final eitherExperiences = await _repository.searchExperiencesByName(params.name);
    final eitherUsersUsername = await _repository.searchUsersByUserName(params.name);
    final eitherUsersName = await _repository.searchUsersByName(params.name);
    final eitherTags = await _repository.searchTagsByName(params.name);
    if (eitherExperiences is ServerError) {
      // return left(eitherExperiences);
      return null;
    } else if (eitherExperiences is CacheError) {
      // return left(eitherExperiences);
      return null;
    } else {
      final Set<Experience> experiencesFound = eitherExperiences.fold((failure) {
        if (failure is NotFoundError) {
          return <Experience>{};
        } else {
          return null;
        }
      }, (r) => r);
      final Set<User> usersFoundByUsername = eitherUsersUsername.fold((failure) {
        if (failure is NotFoundError) {
          return <User>{};
        } else {
          return null;
        }
      }, (r) => r);
      final Set<User> usersFoundByName = eitherUsersName.fold((failure) {
        if (failure is NotFoundError) {
          return <User>{};
        } else {
          return null;
        }
      }, (r) => r);
      final Set<Tag> tagsFound = eitherTags.fold((failure) {
        if (failure is NotFoundError) {
          return <Tag>{};
        } else {
          return null;
        }
      }, (r) => r);
      final searchResults = SearchResults(
        experiencesFound: experiencesFound,
        usersFound: usersFoundByUsername.union(usersFoundByName),
        tagsFound: tagsFound,
      );
      return right(searchResults);
    }
  }
}

class Params {
  final Name name;

  Params({this.name});
}
