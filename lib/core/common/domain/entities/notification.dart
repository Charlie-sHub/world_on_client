import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/common/domain/entities/user.dart';

/// [Notification] entity class.
///
/// Users receive these in a variety of situations to notify them of things they might be interested in or what other Users want them to be notified of.
class Notification extends Equatable {
  final int id;
  final User sender;
  final User receiver;
  final String content;
  final bool seen;
  final DateTime creationDate;

  Notification({
    @required this.id,
    @required this.sender,
    @required this.receiver,
    @required this.content,
    @required this.seen,
    @required this.creationDate,
  });

  @override
  List<Object> get props => [
        id,
        sender,
        receiver,
        content,
        seen,
        creationDate,
      ];
}
