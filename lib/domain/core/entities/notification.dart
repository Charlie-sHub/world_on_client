import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

/// [Notification] entity class.
///
/// [User]s receive these in a variety of situations to notify them of things they might be interested in or what other [User]s want them to be notified of.
@Deprecated("Use the freezed classes")
class Notification extends Equatable {
  final int id;
  final User sender; // Maybe change the Users to only the ids
  final User receiver;
  final EntityDescription description;
  final bool seen;
  final PastDate creationDate;
  final NotificationType type;
  
  const Notification({
    @required this.id,
    @required this.sender,
    @required this.receiver,
    @required this.description,
    @required this.seen,
    @required this.creationDate,
    @required this.type,
  });
  
  @override
  List<Object> get props => [
    id,
    sender,
    receiver,
    description,
    seen,
    creationDate,
  ];
}

@Deprecated("Use the freezed classes")
enum NotificationType {
  follow,
  unfollow,
  block,
  unblock,
}
