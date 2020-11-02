import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/message_content.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

part 'message.freezed.dart';

/// [Message] entity class.
///
/// These are [Message]s sent between [User]s.
// TODO: Implement messaging
// A chat is not a priority right now so it'll be left on the back burner for the time being
// I'm also unsure about how to implement it
@freezed
abstract class Message implements _$Message {
  const Message._();

  const factory Message({
    int id,
    @required User sender,
    @required User receiver,
    @required MessageContent content,
    @required PastDate creationDate,
  }) = _Message;
  
  factory Message.empty() => Message(
    sender: User.empty(),
    receiver: User.empty(),
    content: MessageContent(""),
    creationDate: PastDate(DateTime.now()),
  );
  
  Option<ValueFailure<dynamic>> get failureOption {
    return content.failureOrUnit.andThen(receiver.failureOrUnit).andThen(sender.failureOrUnit).andThen(creationDate.failureOrUnit).fold(
        (failure) => some(failure),
        (_) => none(),
    );
  }
  
  bool get isValid => failureOption.isNone();
}
