import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';

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

@lazySingleton
class NoParams extends Equatable {
  // What's the point of this class extending Equatable?
  @override
  List<Object> get props => [];
}
