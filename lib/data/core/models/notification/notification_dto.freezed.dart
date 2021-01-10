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
      @required UserDto sender,
      @required UserDto receiver,
      @required String description,
      @required bool seen,
      @required @ServerTimestampConverter() DateTime creationDate,
      @required NotificationType type}) {
    return _NotificationDto(
      id: id,
      sender: sender,
      receiver: receiver,
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
  UserDto get sender;
  UserDto get receiver;
  String get description;
  bool get seen;
  @ServerTimestampConverter()
  DateTime get creationDate;
  NotificationType get type;

  Map<String, dynamic> toJson();
  $NotificationDtoCopyWith<NotificationDto> get copyWith;
}

/// @nodoc
abstract class $NotificationDtoCopyWith<$Res> {
  factory $NotificationDtoCopyWith(
          NotificationDto value, $Res Function(NotificationDto) then) =
      _$NotificationDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      UserDto sender,
      UserDto receiver,
      String description,
      bool seen,
      @ServerTimestampConverter() DateTime creationDate,
      NotificationType type});

  $UserDtoCopyWith<$Res> get sender;
  $UserDtoCopyWith<$Res> get receiver;
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
    Object sender = freezed,
    Object receiver = freezed,
    Object description = freezed,
    Object seen = freezed,
    Object creationDate = freezed,
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      sender: sender == freezed ? _value.sender : sender as UserDto,
      receiver: receiver == freezed ? _value.receiver : receiver as UserDto,
      description:
          description == freezed ? _value.description : description as String,
      seen: seen == freezed ? _value.seen : seen as bool,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate as DateTime,
      type: type == freezed ? _value.type : type as NotificationType,
    ));
  }

  @override
  $UserDtoCopyWith<$Res> get sender {
    if (_value.sender == null) {
      return null;
    }
    return $UserDtoCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value));
    });
  }

  @override
  $UserDtoCopyWith<$Res> get receiver {
    if (_value.receiver == null) {
      return null;
    }
    return $UserDtoCopyWith<$Res>(_value.receiver, (value) {
      return _then(_value.copyWith(receiver: value));
    });
  }
}

/// @nodoc
abstract class _$NotificationDtoCopyWith<$Res>
    implements $NotificationDtoCopyWith<$Res> {
  factory _$NotificationDtoCopyWith(
          _NotificationDto value, $Res Function(_NotificationDto) then) =
      __$NotificationDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      UserDto sender,
      UserDto receiver,
      String description,
      bool seen,
      @ServerTimestampConverter() DateTime creationDate,
      NotificationType type});

  @override
  $UserDtoCopyWith<$Res> get sender;
  @override
  $UserDtoCopyWith<$Res> get receiver;
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
    Object sender = freezed,
    Object receiver = freezed,
    Object description = freezed,
    Object seen = freezed,
    Object creationDate = freezed,
    Object type = freezed,
  }) {
    return _then(_NotificationDto(
      id: id == freezed ? _value.id : id as String,
      sender: sender == freezed ? _value.sender : sender as UserDto,
      receiver: receiver == freezed ? _value.receiver : receiver as UserDto,
      description:
          description == freezed ? _value.description : description as String,
      seen: seen == freezed ? _value.seen : seen as bool,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate as DateTime,
      type: type == freezed ? _value.type : type as NotificationType,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_NotificationDto extends _NotificationDto {
  const _$_NotificationDto(
      {@JsonKey(ignore: true) this.id,
      @required this.sender,
      @required this.receiver,
      @required this.description,
      @required this.seen,
      @required @ServerTimestampConverter() this.creationDate,
      @required this.type})
      : assert(sender != null),
        assert(receiver != null),
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
  final UserDto sender;
  @override
  final UserDto receiver;
  @override
  final String description;
  @override
  final bool seen;
  @override
  @ServerTimestampConverter()
  final DateTime creationDate;
  @override
  final NotificationType type;

  @override
  String toString() {
    return 'NotificationDto(id: $id, sender: $sender, receiver: $receiver, description: $description, seen: $seen, creationDate: $creationDate, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.sender, sender) ||
                const DeepCollectionEquality().equals(other.sender, sender)) &&
            (identical(other.receiver, receiver) ||
                const DeepCollectionEquality()
                    .equals(other.receiver, receiver)) &&
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
      const DeepCollectionEquality().hash(sender) ^
      const DeepCollectionEquality().hash(receiver) ^
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
  const factory _NotificationDto(
      {@JsonKey(ignore: true) String id,
      @required UserDto sender,
      @required UserDto receiver,
      @required String description,
      @required bool seen,
      @required @ServerTimestampConverter() DateTime creationDate,
      @required NotificationType type}) = _$_NotificationDto;

  factory _NotificationDto.fromJson(Map<String, dynamic> json) =
      _$_NotificationDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  UserDto get sender;
  @override
  UserDto get receiver;
  @override
  String get description;
  @override
  bool get seen;
  @override
  @ServerTimestampConverter()
  DateTime get creationDate;
  @override
  NotificationType get type;
  @override
  _$NotificationDtoCopyWith<_NotificationDto> get copyWith;
}
