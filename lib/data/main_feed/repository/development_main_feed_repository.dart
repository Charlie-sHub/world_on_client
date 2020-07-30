import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_stream_of_either.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_server_error_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_coordinates.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_objective.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_reward.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/location/location.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/main_feed/repository/main_feed_repository_interface.dart';

@LazySingleton(as: MainFeedRepositoryInterface, env: [Environment.dev])
class DevelopmentMainFeedRepository implements MainFeedRepositoryInterface {
  final _random = Random();

  @override
  Stream<Either<Failure, KtList<Experience>>> fillFeed() {
    Either<Failure, KtList<Experience>> _either;
    if (_random.nextBool()) {
      _either = right(
        KtList.of(
          getValidExperience(),
          Experience.empty(),
          Experience.empty().copyWith(
            id: 3,
            name: Name("Joyce neocapitalist"),
            description: EntityDescription("""
If the patriarchialist paradigm of narrative holds,
we have to choose between neocapitalist libertarianism and neodialectic capitalist theory.
But the main theme of the works of Joyce is the collapse, and some would say the futility, of subdialectic truth."""),
            // Not a fan of this import
            creator: getUserKoji(),
            location: Location.empty().copyWith(id: 1),
            coordinates: getValidCoordinates(),
            objectives: ObjectiveSet(KtSet.of(getValidObjective())),
            rewards: RewardSet(KtSet.of(getValidReward())),
            tags: TagSet(KtSet.of(getTagFood())),
          ),
          getValidExperience().copyWith(
            id: 2,
            name: Name("Ski bum huck"),
            description: EntityDescription(
              "Ride scream backside brain bucket presta pow north shore pipe spin glades Snowboard steed DH face shots. Lid moguls wheels glades greasy death cookies, booter berm huckfest drop huck gnar rail.",
            ),
            difficulty: Difficulty(6),
          ),
          getValidExperience().copyWith(
            id: 3,
            name: Name("Kombucha fashion"),
            description: EntityDescription(
              "Before they sold out blog letterpress semiotics 8-bit. Activated charcoal craft beer sartorial, taxidermy sriracha williamsburg pop-up chicharrones microdosing iPhone hashtag man bun tofu selfies.",
            ),
            difficulty: Difficulty(9),
          ),
        ),
      );
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }
}
