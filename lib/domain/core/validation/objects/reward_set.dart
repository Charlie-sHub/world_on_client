import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/value_object.dart';
import 'package:worldon/domain/core/validation/validators/validate_max_set_length.dart';

class RewardSet extends ValueObject<KtSet<Reward>> {
  @override
  final Either<ValueFailure<KtSet<Reward>>, KtSet<Reward>> value;

  // Just a value that made sense at the time
  static const maxLength = 5;

  factory RewardSet(KtSet<Reward> input) => RewardSet._(
        validateMaxSetLength(
          input: input,
          maxLength: maxLength,
        ),
      );

  const RewardSet._(this.value);

  @override
  Either<ValueFailure<dynamic>, Unit> get failureOrUnit => value.fold(
        (failure) => left(failure),
        (rewardSet) => rewardSet
            .map(
              (objective) => objective.failureOption,
            )
            .filter(
              (option) => option.isSome(),
            )
            .getOrElse(
              0,
              (_) => none(),
            )
            .fold(
              () => right(unit),
              (failure) => left(failure),
            ),
      );

  int get length => value.getOrElse(() => const KtSet<Reward>.empty()).size;

  bool get isFull => length == maxLength;

  bool get isEmpty => value
      .getOrElse(
        () => const KtSet<Reward>.empty(),
      )
      .isEmpty();

  bool get isNotEmpty => value
      .getOrElse(
        () => const KtSet<Reward>.empty(),
      )
      .isNotEmpty();

  @override
  List<Object> get props => [value];
}
