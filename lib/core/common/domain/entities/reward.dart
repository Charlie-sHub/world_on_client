import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

/// [Reward] entity class.
///
/// Rewards are given to Users for doing Experiences, rewards will be set by the Users creating the Experience.
class Reward extends Equatable {
  final int id;
  final String name;
  final String description;
  final String imageName;

  Reward({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.imageName,
  });

  @override
  List<Object> get props => [
        id,
        name,
        description,
        imageName,
      ];
}
