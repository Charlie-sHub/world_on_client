import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'location.freezed.dart';

/// [Location] entity class.
///
/// [Location]s are real life places set by City, Country and Postal Code.
@freezed
class Location with _$Location {
  const Location._();

  const factory Location({
    required UniqueId id,
    required String city,
    required String country,
    required String postalCode,
    required Set<Experience> experiences,
  }) = _Location;

  factory Location.empty() => Location(
        id: UniqueId(),
        city: "",
        country: "",
        postalCode: "",
        experiences: <Experience>{},
      );
}
