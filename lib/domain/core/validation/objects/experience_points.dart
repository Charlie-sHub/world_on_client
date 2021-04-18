import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/value_object.dart';
import 'package:worldon/domain/core/validation/validators/validate_bounded_integer.dart';

class ExperiencePoints extends ValueObject<int> {
  static const limit = 10000;

  @override
  final Either<ValueFailure<int>, int> value;

  factory ExperiencePoints(int input) => ExperiencePoints._(
        validateBoundedInteger(
          input: input,
          limit: limit,
        ),
      );

  const ExperiencePoints._(this.value);

  @override
  List<Object> get props => [value];
}
