import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';

part 'location.freezed.dart';

/// [Location] entity class.
///
/// [Location]s are real life places set by City, Country and Postal Code.
@freezed
abstract class Location implements _$Location {
  const Location._();

  const factory Location({
    int id,
    @required String city,
    @required String country, // TODO: Maybe make a value object and validator for countries
    @required String postalCode,
    @required Set<Experience> experiences,
  }) = _Location;

  factory Location.empty() => const Location(
        city: "",
        country: "",
        postalCode: "",
        experiences: <Experience>{},
      );
}
