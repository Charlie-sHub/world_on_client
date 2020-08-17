import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_stream_of_either.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_server_error_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_tag.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';
import 'package:worldon/domain/search/repository/search_repository_interface.dart';
import 'package:worldon/injectione/moor/moor_database.dart';

@LazySingleton(as: SearchRepositoryInterface, env: [Environment.dev])
class DevelopmentSearchRepository implements SearchRepositoryInterface {
  final _random = Random();
  final _database = getIt<Database>();

  @override
  Stream<Either<Failure, KtList<Experience>>> watchSearchExperiencesByDifficulty(Difficulty difficulty) {
    Either<Failure, KtList<Experience>> _either;
    if (_random.nextBool()) {
      _either = right(
        KtList.of(
          getValidExperience().copyWith(
            difficulty: difficulty,
          ),
          Experience.empty(),
          getValidExperience().copyWith(
            id: 2,
            title: Name("Phasellus"),
            difficulty: difficulty,
          ),
          getValidExperience().copyWith(
            id: 3,
            title: Name("Itaque"),
            difficulty: difficulty,
          ),
        ),
      );
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchSearchExperiencesByTags(TagSet tags) {
    Either<Failure, KtList<Experience>> _either;
    if (_random.nextBool()) {
      _either = right(
        KtList.of(
          getValidExperience().copyWith(
            tags: tags,
          ),
          Experience.empty(),
          getValidExperience().copyWith(
            id: 2,
            title: Name("Phasellus"),
            tags: tags,
          ),
          getValidExperience().copyWith(
            id: 3,
            title: Name("Itaque"),
            tags: tags,
          ),
        ),
      );
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchSearchExperiencesByName(SearchTerm name) {
    Either<Failure, KtList<Experience>> _either;
    if (_random.nextBool()) {
      _either = right(
        KtList.of(
          getValidExperience().copyWith(
            title: Name("Ut ${name.getOrCrash()}"),
          ),
          Experience.empty(),
          getValidExperience().copyWith(
            id: 2,
            title: Name("${name.getOrCrash()} mi"),
          ),
          getValidExperience().copyWith(
            id: 3,
            title: Name("Orci ${name.getOrCrash()} suscipit"),
          ),
        ),
      );
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }

  @override
  Stream<Either<Failure, KtList<Tag>>> watchSearchTagsByName(SearchTerm name) {
    Either<Failure, KtList<Tag>> _either;
    if (_random.nextBool()) {
      _either = right(
        [
          getValidTag().copyWith(
            name: Name("Eat ${name.getOrCrash()}"),
          ),
          Tag.empty(),
          getValidTag().copyWith(
            id: 2,
            name: Name("${name.getOrCrash()} at noon"),
          ),
          getValidTag().copyWith(
            id: 3,
            name: Name("Play with ${name.getOrCrash()}"),
          ),
          getValidTag().copyWith(
            id: 4,
            name: Name("Ripping ${name.getOrCrash()}"),
          ),
          getValidTag().copyWith(
            id: 5,
            name: Name("${name.getOrCrash()} on"),
          ),
          getValidTag().copyWith(
            id: 6,
            name: Name("Skinny ${name.getOrCrash()}"),
          ),
          getValidTag().copyWith(
            id: 7,
            name: Name("${name.getOrCrash()} roadie"),
          ),
          getValidTag().copyWith(
            id: 8,
            name: Name("Bonk ${name.getOrCrash()}"),
          ),
          getValidTag().copyWith(
            id: 9,
            name: Name("${name.getOrCrash()} slash"),
          ),
          getValidTag().copyWith(
            id: 10,
            name: Name("Presta ${name.getOrCrash()}"),
          ),
          getValidTag().copyWith(
            id: 11,
            name: Name("${name.getOrCrash()} epic"),
          ),
          getValidTag().copyWith(
            id: 12,
            name: Name("Backside ${name.getOrCrash()}"),
          ),
        ].toImmutableList(),
      );
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchSearchUsersByName(SearchTerm name) {
    Either<Failure, KtList<User>> _either;
    if (_random.nextBool()) {
      _either = right(
        KtList.of(
          getValidUser().copyWith(
            name: Name("Ricardo ${name.getOrCrash()}"),
          ),
          User.empty(),
          getValidUser().copyWith(
            id: 2,
            level: UserLevel(40),
            name: Name("Charles ${name.getOrCrash()}"),
            username: Name("charles"),
          ),
          getValidUser().copyWith(
            id: 3,
            level: UserLevel(25),
            name: Name("${name.getOrCrash()} Smith"),
            username: Name("smithy"),
          ),
        ),
      );
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchSearchUsersByUserName(SearchTerm username) {
    Either<Failure, KtList<User>> _either;
    if (_random.nextBool()) {
      _either = right(
        KtList.of(
          getValidUser().copyWith(
            username: Name("ricky_${username.getOrCrash()}"),
          ),
          User.empty(),
          getValidUser().copyWith(
            id: 2,
            level: UserLevel(60),
            name: Name("Mauricio"),
            username: Name("${username.getOrCrash()}69"),
          ),
          getValidUser().copyWith(
            id: 3,
            level: UserLevel(70),
            name: Name("Ben"),
            username: Name("The ${username.getOrCrash()} master"),
          ),
        ),
      );
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }
}
