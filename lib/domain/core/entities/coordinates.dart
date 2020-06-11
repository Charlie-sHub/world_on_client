import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';

/// This class exists to decouple the domain layer's code from external libraries regarding location
// It's honestly a bit overkill even for me, but i don't think that the core of the application should have classes that belong to external libraries
// like Position in the geolocator library, hence the creation of this class
class Coordinates extends Equatable {
  final Latitude latitude;
  final Longitude longitude;

  const Coordinates({
    @required this.latitude,
    @required this.longitude,
  });

  @override
  List<Object> get props => [
        latitude,
        longitude,
      ];
}
