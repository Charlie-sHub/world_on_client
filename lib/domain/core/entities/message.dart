import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/validation/objects/message_content.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

/// [Message] entity class.
///
/// These are Messages sent between Users.
// TODO: Implement messaging
// A chat is not a priority right now so it'll be left on the back burner for the time being
// I'm also unsure about how to implement it
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
