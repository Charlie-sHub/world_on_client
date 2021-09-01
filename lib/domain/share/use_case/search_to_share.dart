import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/share/repository/share_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class SearchToShare implements AsyncUseCase<KtList<User>, NoParams> {
  final ShareRepositoryInterface _repository;

  SearchToShare(this._repository);

  @override
  Future<Either<Failure, KtList<User>>> call(NoParams params) async => _repository.getShareableUsers();
}
