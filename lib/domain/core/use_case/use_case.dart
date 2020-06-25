import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:worldon/core/error/failure.dart';

// TODO: Check if these can be unified with freezed
// AT the very least AsyncUseCase and StreamUseCase can be given a generic type to account for Stream and Future
/// Parent class for all asynchronous Use Cases
abstract class AsyncUseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

/// Parent class for all Use Cases with [Stream]s
abstract class StreamUseCase<Type, Params> {
  Stream<Either<Failure, Type>> call(Params params);
}

/// Parent class for normal Use Cases
abstract class UseCase<Type, Params> {
  Either<Failure, Type> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
