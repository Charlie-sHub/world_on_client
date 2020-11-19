// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'notification_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
NotificationDto _$NotificationDtoFromJson(Map<String, dynamic> json) {
  return _NotificationDto.fromJson(json);
}

/// @nodoc
class _$NotificationDtoTearOff {
  const _$NotificationDtoTearOff();

// ignore: unused_element
  _NotificationDto call(
      {@JsonKey(ignore: true) String id,
      @required String senderId,
      @required String receiverId,
      @required String description,
      @required bool seen,
      @required String creationDate,
      @required NotificationType type}) {
    return _NotificationDto(
      id: id,
      senderId: senderId,
      receiverId: receiverId,
      description: description,
      seen: seen,
      creationDate: creationDate,
      type: type,
    );
  }

// ignore: unused_element
  NotificationDto fromJson(Map<String, Object> json) {
    return NotificationDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $NotificationDto = _$NotificationDtoTearOff();

/// @nodoc
mixin _$NotificationDto {
  @JsonKey(ignore: true)
  String get id;
  String get senderId; // Maybe change the Users to only the ids
  String get receiverId;
  String get description;
  bool get seen;
  String get creationDate;
  NotificationType get type;

  Map<String, dynamic> toJson();
  $NotificationDtoCopyWith<NotificationDto> get copyWith;
}

/// @nodoc
abstract class $NotificationDtoCopyWith<$Res> {
  factory $NotificationDtoCopyWith(NotificationDto value, $Res Function(NotificationDto) then) = _$NotificationDtoCopyWithImpl<$Res>;

  $Res call({@JsonKey(ignore: true) String id, String senderId, String receiverId, String description, bool seen, String creationDate, NotificationType type});
}

/// @nodoc
class _$NotificationDtoCopyWithImpl<$Res>
    implements $NotificationDtoCopyWith<$Res> {
  _$NotificationDtoCopyWithImpl(this._value, this._then);

  final NotificationDto _value;
  // ignore: unused_field
  final $Res Function(NotificationDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object senderId = freezed,
    Object receiverId = freezed,
    Object description = freezed,
    Object seen = freezed,
    Object creationDate = freezed,
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      senderId: senderId == freezed ? _value.senderId : senderId as String,
      receiverId:
          receiverId == freezed ? _value.receiverId : receiverId as String,
      description:
          description == freezed ? _value.description : description as String,
      seen: seen == freezed ? _value.seen : seen as bool,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate as String,
      type: type == freezed ? _value.type : type as NotificationType,
    ));
  }
}

/// @nodoc
abstract class _$NotificationDtoCopyWith<$Res>
    implements $NotificationDtoCopyWith<$Res> {
  factory _$NotificationDtoCopyWith(
          _NotificationDto value, $Res Function(_NotificationDto) then) =
      __$NotificationDtoCopyWithImpl<$Res>;

  @override
  $Res call({@JsonKey(ignore: true) String id,
    String senderId,
    String receiverId,
    String description,
    bool seen,
    String creationDate,
    NotificationType type});
}

/// @nodoc
class __$NotificationDtoCopyWithImpl<$Res>
    extends _$NotificationDtoCopyWithImpl<$Res>
    implements _$NotificationDtoCopyWith<$Res> {
  __$NotificationDtoCopyWithImpl(
      _NotificationDto _value, $Res Function(_NotificationDto) _then)
      : super(_value, (v) => _then(v as _NotificationDto));

  @override
  _NotificationDto get _value => super._value as _NotificationDto;

  @override
  $Res call({
    Object id = freezed,
    Object senderId = freezed,
    Object receiverId = freezed,
    Object description = freezed,
    Object seen = freezed,
    Object creationDate = freezed,
    Object type = freezed,
  }) {
    return _then(_NotificationDto(
      id: id == freezed ? _value.id : id as String,
      senderId: senderId == freezed ? _value.senderId : senderId as String,
      receiverId:
          receiverId == freezed ? _value.receiverId : receiverId as String,
      description:
          description == freezed ? _value.description : description as String,
      seen: seen == freezed ? _value.seen : seen as bool,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate as String,
      type: type == freezed ? _value.type : type as NotificationType,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_NotificationDto extends _NotificationDto {
  const _$_NotificationDto({@JsonKey(ignore: true) this.id,
    @required this.senderId,
    @required this.receiverId,
    @required this.description,
    @required this.seen,
    @required this.creationDate,
    @required this.type})
    : assert(senderId != null),
      assert(receiverId != null),
      assert(description != null),
      assert(seen != null),
      assert(creationDate != null),
      assert(type != null),
      super._();
  
  factory _$_NotificationDto.fromJson(Map<String, dynamic> json) =>
    _$_$_NotificationDtoFromJson(json);
  
  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String senderId;
  @override // Maybe change the Users to only the ids
  final String receiverId;
  @override
  final String description;
  @override
  final bool seen;
  @override
  final String creationDate;
  @override
  final NotificationType type;

  @override
  String toString() {
    return 'NotificationDto(id: $id, senderId: $senderId, receiverId: $receiverId, description: $description, seen: $seen, creationDate: $creationDate, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.senderId, senderId) ||
                const DeepCollectionEquality()
                    .equals(other.senderId, senderId)) &&
            (identical(other.receiverId, receiverId) ||
                const DeepCollectionEquality()
                    .equals(other.receiverId, receiverId)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.seen, seen) ||
                const DeepCollectionEquality().equals(other.seen, seen)) &&
            (identical(other.creationDate, creationDate) ||
                const DeepCollectionEquality()
                    .equals(other.creationDate, creationDate)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(senderId) ^
      const DeepCollectionEquality().hash(receiverId) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(seen) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(type);

  @override
  _$NotificationDtoCopyWith<_NotificationDto> get copyWith =>
      __$NotificationDtoCopyWithImpl<_NotificationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NotificationDtoToJson(this);
  }
}

abstract class _NotificationDto extends NotificationDto {
  const _NotificationDto._() : super._();
  
  const factory _NotificationDto({@JsonKey(ignore: true) String id,
    @required String senderId,
    @required String receiverId,
    @required String description,
    @required bool seen,
    @required String creationDate,
    @required NotificationType type}) = _$_NotificationDto;
  
  factory _NotificationDto.fromJson(Map<String, dynamic> json) =
  _$_NotificationDto.fromJson;
  
  @override
  @JsonKey(ignore: true)
  String get id;
  
  @override
  String get senderId;
  
  @override // Maybe change the Users to only the ids
  String get receiverId;
  
  @override
  String get description;
  @override
  bool get seen;
  @override
  String get creationDate;
  @override
  NotificationType get type;
  @override
  _$NotificationDtoCopyWith<_NotificationDto> get copyWith;
}
