import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/data/core/misc/server_timestamp_converter.dart';
import 'package:worldon/data/core/models/experience/experience_dto.dart';
import 'package:worldon/data/core/models/user/user_dto.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/core/entities/notification/notification_type_enum.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'notification_dto.freezed.dart';
part 'notification_dto.g.dart';

@freezed
class NotificationDto with _$NotificationDto {
  const NotificationDto._();

  const factory NotificationDto({
    @JsonKey(ignore: true) String? id,
    required UserDto sender,
    required UserDto receiver,
    required String description,
    required bool seen,
    @ServerTimestampConverter() required DateTime creationDate,
    required NotificationType type,
    ExperienceDto? experience,
  }) = _NotificationDto;

  factory NotificationDto.fromDomain(Notification notification) => NotificationDto(
        id: notification.id.getOrCrash(),
        sender: UserDto.fromDomain(notification.sender),
        receiver: UserDto.fromDomain(notification.receiver),
        description: notification.description.getOrCrash(),
        seen: notification.seen,
        creationDate: notification.creationDate.getOrCrash(),
        type: notification.type,
        experience: notification.experienceOption.fold(
          () => null,
          (_experience) => ExperienceDto.fromDomain(_experience),
        ),
      );

  Notification toDomain() => Notification(
        id: UniqueId.fromUniqueString(id!),
        sender: sender.toDomain(),
        receiver: receiver.toDomain(),
        description: EntityDescription(description),
        seen: seen,
        creationDate: PastDate(creationDate),
        type: type,
        experienceOption: experience != null ? dartz.some(experience!.toDomain()) : dartz.none(),
      );

  factory NotificationDto.fromJson(Map<String, dynamic> json) => _$NotificationDtoFromJson(json);

  factory NotificationDto.fromFirestore(DocumentSnapshot document) => NotificationDto.fromJson(
        document.data()!,
      ).copyWith(
        id: document.id,
      );
}
