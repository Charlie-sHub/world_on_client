import 'package:dartz/dartz.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/value_object.dart';
import 'package:worldon/domain/core/validation/validators/validate_string_not_empty.dart';

/// Ensures the search term [String] given as input is not empty
class SearchTerm extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory SearchTerm(String input) {
    assert(input != null);
    return SearchTerm._(
      validateStringNotEmpty(input),
    );
  }

  const SearchTerm._(this.value);

  @override
  List<Object> get props => [value];
}
