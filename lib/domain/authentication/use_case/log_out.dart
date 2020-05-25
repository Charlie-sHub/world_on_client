import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

// Likely useless for now, maybe if we ever implement sessions
class LogOut implements AsyncUseCase<Unit, Params> {
  @override
  Future<Either<Failure, Unit>> call(Params params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}

class Params {
  final User user;

  Params({@required this.user});
}
