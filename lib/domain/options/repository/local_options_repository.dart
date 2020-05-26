import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/options.dart';

/// Repository for the local [Options]
// TODO: Determine necessity of this class
// What would constitute a local option?
abstract class LocalOptionsRepository {
  /// Saves a [Options] object locally, corresponding to the local [Options]
  Future<Either<Failure, Unit>> saveLocalOptions(Options option);
}
