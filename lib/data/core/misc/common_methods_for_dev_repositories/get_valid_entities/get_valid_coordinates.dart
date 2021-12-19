import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';

Coordinates getValidCoordinates() => Coordinates(
      latitude: Latitude(40.417611),
      longitude: Longitude(-3.703749),
    );
