import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_stream_of_either.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_server_error_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_tag.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/search/repository/search_repository_interface.dart';

@LazySingleton(
  as: SearchRepositoryInterface,
  env: Environment.dev,
)
class DevelopmentSearchRepository implements SearchRepositoryInterface {
  final _random = Random();

  @override
  Stream<Either<Failure, Set<Experience>>> searchExperiencesByDifficulty(Difficulty difficulty) {
    Either<Failure, Set<Experience>> _either;
    if (_random.nextBool()) {
      _either = right({
        getValidExperience().copyWith(
          difficulty: difficulty,
        ),
        getValidExperience().copyWith(
          id: 2,
          name: Name("Phasellus"),
          difficulty: difficulty,
        ),
        getValidExperience().copyWith(
          id: 3,
          name: Name("Itaque"),
          difficulty: difficulty,
        ),
      });
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }
  
  @override
  Stream<Either<Failure, Set<Experience>>> searchExperiencesByTags(TagSet tags) {
    Either<Failure, Set<Experience>> _either;
    if (_random.nextBool()) {
      _either = right({
        getValidExperience().copyWith(
          tags: tags,
        ),
        getValidExperience().copyWith(
          id: 2,
          name: Name("Phasellus"),
          tags: tags,
        ),
        getValidExperience().copyWith(
          id: 3,
          name: Name("Itaque"),
          tags: tags,
        ),
      });
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }
  
  @override
  Stream<Either<Failure, Set<Experience>>> searchExperiencesByName(SearchTerm name) {
    Either<Failure, Set<Experience>> _either;
    if (_random.nextBool()) {
      _either = right({
        getValidExperience().copyWith(
          name: Name("Ut ${name.getOrCrash()}"),
        ),
        getValidExperience().copyWith(
          id: 2,
          name: Name("${name.getOrCrash()} mi"),
        ),
        getValidExperience().copyWith(
          id: 3,
          name: Name("Orci ${name.getOrCrash()} suscipit"),
        ),
      });
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }
  
  @override
  Stream<Either<Failure, Set<Tag>>> searchTagsByName(SearchTerm name) {
    Either<Failure, Set<Tag>> _either;
    if (_random.nextBool()) {
      _either = right({
        getValidTag().copyWith(
          name: Name("Eat ${name.getOrCrash()}"),
        ),
        getValidTag().copyWith(
          id: 2,
          name: Name("${name.getOrCrash()} at noon"),
        ),
        getValidTag().copyWith(
          id: 3,
          name: Name("Play with ${name.getOrCrash()}"),
        ),
      });
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }
  
  @override
  Stream<Either<Failure, Set<User>>> searchUsersByName(SearchTerm name) {
    Either<Failure, Set<User>> _either;
    if (_random.nextBool()) {
      _either = right({
        getValidUser(),
        getValidUser().copyWith(
          id: 2,
          name: Name("Charles ${name.getOrCrash()}"),
          username: Name("charles"),
        ),
        getValidUser().copyWith(
          id: 3,
          name: Name("${name.getOrCrash()} Smith"),
          username: Name("smithy"),
        ),
      });
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }
  
  @override
  Stream<Either<Failure, Set<User>>> searchUsersByUserName(SearchTerm username) {
    Either<Failure, Set<User>> _either;
    if (_random.nextBool()) {
      _either = right({
        getValidUser(),
        getValidUser().copyWith(
          id: 2,
          name: Name("Mauricio"),
          username: Name("${username.getOrCrash()}69"),
        ),
        getValidUser().copyWith(
          id: 3,
          name: Name("Ben"),
          username: Name("The ${username.getOrCrash()} master"),
        ),
      });
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }
}
