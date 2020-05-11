import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

/// [Objective] entity class.
///
/// Objectives are what's required by the Experience of the User doing it.
class Objective extends Equatable {
  final int id;
  final String description;
  final double latitude;
  final double longitude;
  final String imageName;

  Objective({
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
