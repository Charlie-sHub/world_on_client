import 'package:dartz/dartz.dart';
import 'package:worldon/core/common/domain/entities/user.dart';
import 'package:worldon/core/errors/general_errors/failures.dart';
import 'package:worldon/core/use_case/use_case.dart';

class LogOut implements AsyncUseCase<void, Params> {
  @override
  Future<Either<Failure, void>> call(Params params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}

class Params {
  final User user;

  Params({this.user});
}
