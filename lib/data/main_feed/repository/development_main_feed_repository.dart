import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_stream_of_either.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_server_error_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/main_feed/repository/main_feed_repository_interface.dart';

@LazySingleton(
  as: MainFeedRepositoryInterface,
  env: Environment.dev,
)
class DevelopmentMainFeedRepository implements MainFeedRepositoryInterface {
  final _random = Random();

  // TODO: Change all Lists to KtSet
  @override
  Stream<Either<Failure, List<Experience>>> fillFeed() {
    Either<Failure, List<Experience>> _either;
    if (_random.nextBool()) {
      _either = right([
        getValidExperience(),
        getValidExperience().copyWith(
          id: 2,
          name: Name("Phasellus"),
        ),
        getValidExperience().copyWith(
          id: 3,
          name: Name("Itaque"),
        ),
      ]);
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }
}
