import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/domain/core/entities/message/message.dart';
import 'package:worldon/domain/core/validation/objects/message_content.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

Message getValidMessage() {
  return Message(
    sender: getValidUser(),
    receiver: getValidUser().copyWith(
      id: 2,
      name: Name("Carlos"),
      username: Name(
        "carlos",
      ),
    ),
    content: MessageContent("In sodales lacus elementum quam luctus molestie."),
    creationDate: PastDate(DateTime.now().subtract(const Duration(days: 100))),
  );
}
