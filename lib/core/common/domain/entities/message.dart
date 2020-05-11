import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/common/domain/entities/user.dart';

/// [Message] entity class.
///
/// These are Messages sent between Users.
class Message extends Equatable {
  final int id;
  final User sender;
  final User receiver;
  final String content;
  final DateTime creationDate;

  Message({
    @required this.id,
    @required this.sender,
    @required this.receiver,
    @required this.content,
    @required this.creationDate,
  });

  @override
  List<Object> get props => [
        id,
        sender,
        receiver,
        content,
        creationDate,
      ];
}
