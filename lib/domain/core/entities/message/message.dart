import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/user/simple_user.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/message_content.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'message.freezed.dart';

/// [Message] entity class.
///
/// These are [Message]s sent between [User]s.
@freezed
class Message with _$Message {
  const Message._();

  const factory Message({
    required UniqueId id,
    required SimpleUser sender,
    required UniqueId receiverId,
    required MessageContent content,
    required PastDate creationDate,
  }) = _Message;

  factory Message.empty() => Message(
        id: UniqueId(),
        sender: SimpleUser.empty(),
        receiverId: UniqueId(),
        content: MessageContent(""),
        creationDate: PastDate(DateTime.now()),
      );

  Option<ValueFailure<dynamic>> get failureOption => content.failureOrUnit
      .andThen(sender.failureOrUnit)
      .andThen(creationDate.failureOrUnit)
      .fold(
        some,
        (_) => none(),
      );

  bool get isValid => failureOption.isNone();
}
