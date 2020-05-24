import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/main_feed/repository/main_feed_repository.dart';

class FillFeed implements AsyncUseCase<List<Experience>, Params> {
  final MainFeedRepository repository;

  FillFeed(this.repository);

  @override
  Future<Either<Failure, List<Experience>>> call(Params params) async {
    return repository.fillFeed(params.userId);
  }
}

class Params {
  final int userId;

  Params({this.userId});
}
