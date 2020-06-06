import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/validation/objects/message_content.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

/// [Message] entity class.
///
/// These are Messages sent between Users.
class Message extends Equatable {
  final int id;
  final User sender;
  final User receiver;
  final MessageContent content;
  final PastDate creationDate;

  const Message({
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
