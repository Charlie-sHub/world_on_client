import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository_interface.dart';
import 'package:worldon/injection.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class RewardUser implements AsyncUseCase<Map, Params> {
  final ExperienceNavigationRepositoryInterface _repository;

  RewardUser(this._repository);

  @override
  Future<Either<Failure, Map>> call(Params params) async {
    final _currentUserOption = await getIt<GetLoggedInUser>()(
      getIt<NoParams>(),
    );
    return _currentUserOption.fold(
      () => throw UnAuthenticatedError(),
      (_user) async {
        bool _leveledUp = false;
        int _xpAwarded =
            params.difficulty.getOrCrash() * ExperiencePoints.multiplier;
        final _userXPPre = _user.experiencePoints.getOrCrash();
        final _userLevelPre = _user.level.getOrCrash();
        final _itemList = _user.items.where(
          (item) =>
              item.id.getOrCrash() == "81539390-6807-11eb-a79a-01068a2daab7",
        );
        final _item = _itemList.isNotEmpty ? _itemList.first : null;
        if (_item != null) {
          final _isValid = DateTime.now().isBefore(
            _item.boughtDate.add(
              Duration(days: _item.timeLimitInDays),
            ),
          );
          if (_isValid) {
            _xpAwarded = _xpAwarded * 2;
          } else {
            _repository.removeExperienceBoostItem(_item);
          }
        }
        final _userXPPost = _xpAwarded + _userXPPre;
        final _userLevelPost = levelAt(_userXPPost);
        _leveledUp = _userLevelPost > _userLevelPre;
        final _resultMap = {
          "leveledUp": _leveledUp,
          "experiencePoints": _xpAwarded,
        };
        final _failureOrUnit = await _repository.rewardUser(
          _xpAwarded,
          _userLevelPost,
        );
        return _failureOrUnit.fold(
          left,
          (_) => right(_resultMap),
        );
      },
    );
  }
}

class Params {
  final Difficulty difficulty;

  Params({
    required this.difficulty,
  });
}
