import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';

/// [Objective] entity class.
///
/// Objectives are what's required by the Experience of the User doing it.
class Objective extends Equatable {
  final int id;
  final EntityDescription description;
  final double latitude; // TODO: Maybe create a value object and validator for the longitude and latitude
  final double longitude;
  final String imageName;

  const Objective({
    @required this.id,
    @required this.description,
    @required this.latitude,
    @required this.longitude,
    @required this.imageName,
  });

  @override
  List<Object> get props => [
        id,
        description,
        latitude,
        longitude,
        imageName,
      ];
}
