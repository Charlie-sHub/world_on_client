import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';

part 'reward.freezed.dart';

/// [Reward] entity class.
///
/// [Reward]s are given to [User]s for doing [Experience]s, rewards will be set by the [User]s creating the Experience.
@freezed
abstract class Reward with _$Reward {
  const factory Reward({
    @required int id,
    @required Name name,
    @required EntityDescription description,
    @required String imageURL,
  }) = _Reward;
}
