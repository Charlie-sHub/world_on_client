import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/data/core/models/user/user_dto.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/core/entities/notification/notification_type_enum.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

part 'notification_dto.freezed.dart';

part 'notification_dto.g.dart';

@freezed
abstract class NotificationDto implements _$NotificationDto {
  const NotificationDto._();

  const factory NotificationDto({
    @required int id,
    @required UserDto sender, // Maybe change the Users to only the ids
    @required UserDto receiver,
    @required String description,
    @required bool seen,
    @required String creationDate,
    @required NotificationType type,
  }) = _NotificationDto;

  factory NotificationDto.fromDomain(Notification notification) => NotificationDto(
        id: notification.id,
        sender: UserDto.fromDomain(notification.sender),
        receiver: UserDto.fromDomain(notification.receiver),
        description: notification.description.getOrCrash(),
        seen: notification.seen,
        creationDate: notification.creationDate.getOrCrash().toIso8601String(),
        type: notification.type,
      );

  Notification toDomain() => Notification(
        id: id,
        sender: sender.toDomain(),
        receiver: receiver.toDomain(),
        description: EntityDescription(description),
        seen: seen,
        creationDate: PastDate(DateTime.parse(creationDate)),
        type: type,
      );

  factory NotificationDto.fromJson(Map<String, dynamic> json) => _$NotificationDtoFromJson(json);
}
