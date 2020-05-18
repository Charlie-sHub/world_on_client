import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:worldon/core/errors/general_errors/failures.dart';

/// Parent class for all  asynchronous Use Cases
abstract class AsyncUseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

/// Parent class for normal Use Cases
abstract class UseCase<Type, Params> {
  Either<Failure, Type> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
