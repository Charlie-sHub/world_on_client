import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:worldon/core/errors/general_errors/failures.dart';

/// Parent class for all UseCases
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
