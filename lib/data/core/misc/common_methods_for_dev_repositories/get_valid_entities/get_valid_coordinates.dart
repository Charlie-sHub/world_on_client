import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';

Coordinates getValidCoordinates() {
  return Coordinates(
    latitude: Latitude(0.0),
    longitude: Longitude(0.0),
  );
}
