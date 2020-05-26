import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository.dart';

/// Sends the ids of a [User] and a [Experience] to the server so the [Experience] is added to the [User]'s list of done [Experience]s
class FinishExperience implements AsyncUseCase<Unit, Params> {
  final ExperienceNavigationRepository repository;

  const FinishExperience(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return repository.finishExperience(
      userId: params.userId,
      experienceId: params.experienceId,
    );
  }
}

class Params {
  final int userId;
  final int experienceId;

  Params({@required this.userId, @required this.experienceId});
}
