import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/domain/core/entities/coordinates.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';

/// [Objective] entity class.
///
/// Objectives are what's required by the Experience of the User doing it.
@Deprecated("Use the freezed classes")
class Objective extends Equatable {
  final int id;
  final EntityDescription description;
  final Coordinates coordinates;
  final String imageName;
  
  const Objective({
    @required this.id,
    @required this.description,
    @required this.coordinates,
    @required this.imageName,
  });
  
  @override
  List<Object> get props => [
    id,
    description,
    coordinates,
    imageName,
  ];
}
