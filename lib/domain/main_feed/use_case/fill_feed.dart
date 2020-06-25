import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/main_feed/repository/main_feed_repository_interface.dart';

class FillFeed implements AsyncUseCase<List<Experience>, NoParams> {
  final MainFeedRepositoryInterface _repository;

  FillFeed(this._repository);

  @override
  Future<Either<Failure, List<Experience>>> call(NoParams params) async {
    return _repository.fillFeed();
  }
}
