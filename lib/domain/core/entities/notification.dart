import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

/// [Notification] entity class.
///
/// [User]s receive these in a variety of situations to notify them of things they might be interested in or what other [User]s want them to be notified of.
class Notification extends Equatable {
  final int id;
  final User sender; // Maybe change the Users to only the ids
  final User receiver;
  final EntityDescription description;
  final bool seen;
  final PastDate creationDate;

  // An enumerator classifying the type of notification also would be useful: FOLLOW, UNFOLLOW, BLOCKED... for example

  const Notification({
    @required this.id,
    @required this.sender,
    @required this.receiver,
    @required this.description,
    @required this.seen,
    @required this.creationDate,
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
