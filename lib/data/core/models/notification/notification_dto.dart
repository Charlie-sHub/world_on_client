import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/core/entities/notification/notification_type_enum.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'notification_dto.freezed.dart';
part 'notification_dto.g.dart';

@freezed
abstract class NotificationDto implements _$NotificationDto {
  const NotificationDto._();

  const factory NotificationDto({
    String id,
    @required String senderId, // Maybe change the Users to only the ids
    @required String receiverId,
    @required String description,
    @required bool seen,
    @required String creationDate,
    @required NotificationType type,
  }) = _NotificationDto;

  factory NotificationDto.fromDomain(Notification notification) => NotificationDto(
        id: notification.id.getOrCrash(),
        senderId: notification.sender.id.getOrCrash(),
        receiverId: notification.receiver.id.getOrCrash(),
        description: notification.description.getOrCrash(),
        seen: notification.seen,
        creationDate: notification.creationDate.getOrCrash().toIso8601String(),
        type: notification.type,
      );

  Notification toDomain() => Notification(
        id: UniqueId.fromUniqueString(id),
        sender: User.empty(),
        receiver: User.empty(),
        description: EntityDescription(description),
        seen: seen,
        creationDate: PastDate(DateTime.parse(creationDate)),
        type: type,
      );

  factory NotificationDto.fromJson(Map<String, dynamic> json) => _$NotificationDtoFromJson(json);

  factory NotificationDto.fromFirestore(DocumentSnapshot document) => NotificationDto.fromJson(
        document.data(),
      ).copyWith(
        id: document.id,
      );
}
