import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';

/// [Reward] entity class.
///
/// Rewards are given to Users for doing Experiences, rewards will be set by the Users creating the Experience.
@Deprecated("Use the freezed classes")
class Reward extends Equatable {
  final int id;
  final Name name;
  final EntityDescription description;
  final String imageURL;
  
  const Reward({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.imageURL,
  });
  
  @override
  List<Object> get props => [
    id,
    name,
    description,
    imageURL,
  ];
}
