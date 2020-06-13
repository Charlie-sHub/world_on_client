import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import 'experience.dart';

/// [Location] entity class.
///
/// Locations are real life places set by City, Country and Postal Code.
class Location extends Equatable {
  final int id;
  final String city;
  final String country; // TODO: Maybe make a value object and validator for countries
  final String postalCode;
  final Set<Experience> experiences;

  const Location({
    @required this.id,
    @required this.city,
    @required this.country,
    @required this.postalCode,
    @required this.experiences,
  });

  @override
  List<Object> get props => [
        id,
        city,
        country,
        postalCode,
        experiences,
      ];
}
