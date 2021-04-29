// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'notification_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationDto _$NotificationDtoFromJson(Map<String, dynamic> json) {
  return _NotificationDto.fromJson(json);
}

/// @nodoc
class _$NotificationDtoTearOff {
  const _$NotificationDtoTearOff();

  _NotificationDto call(
      {@JsonKey(ignore: true) String? id,
      required UserDto sender,
      required UserDto receiver,
      required String description,
      required bool seen,
      @ServerTimestampConverter() required DateTime creationDate,
      required NotificationType type}) {
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

  NotificationDto fromJson(Map<String, Object> json) {
    return NotificationDto.fromJson(json);
  }
}

/// @nodoc
const $NotificationDto = _$NotificationDtoTearOff();

/// @nodoc
mixin _$NotificationDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  UserDto get sender => throw _privateConstructorUsedError;
  UserDto get receiver => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get seen => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  DateTime get creationDate => throw _privateConstructorUsedError;
  NotificationType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationDtoCopyWith<NotificationDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDtoCopyWith<$Res> {
  factory $NotificationDtoCopyWith(NotificationDto value, $Res Function(NotificationDto) then) = _$NotificationDtoCopyWithImpl<$Res>;

  $Res call({@JsonKey(ignore: true) String? id, UserDto sender, UserDto receiver, String description, bool seen, @ServerTimestampConverter() DateTime creationDate, NotificationType type});

  $UserDtoCopyWith<$Res> get sender;

  $UserDtoCopyWith<$Res> get receiver;
}

/// @nodoc
class _$NotificationDtoCopyWithImpl<$Res> implements $NotificationDtoCopyWith<$Res> {
  _$NotificationDtoCopyWithImpl(this._value, this._then);

  final NotificationDto _value;

  // ignore: unused_field
  final $Res Function(NotificationDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? description = freezed,
    Object? seen = freezed,
    Object? creationDate = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as UserDto,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as UserDto,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      seen: seen == freezed
          ? _value.seen
          : seen // ignore: cast_nullable_to_non_nullable
              as bool,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
    ));
  }

  @override
  $UserDtoCopyWith<$Res> get sender {
    return $UserDtoCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value));
    });
  }

  @override
  $UserDtoCopyWith<$Res> get receiver {
    return $UserDtoCopyWith<$Res>(_value.receiver, (value) {
      return _then(_value.copyWith(receiver: value));
    });
  }
}

/// @nodoc
abstract class _$NotificationDtoCopyWith<$Res> implements $NotificationDtoCopyWith<$Res> {
  factory _$NotificationDtoCopyWith(_NotificationDto value, $Res Function(_NotificationDto) then) = __$NotificationDtoCopyWithImpl<$Res>;

  @override
  $Res call({@JsonKey(ignore: true) String? id, UserDto sender, UserDto receiver, String description, bool seen, @ServerTimestampConverter() DateTime creationDate, NotificationType type});

  @override
  $UserDtoCopyWith<$Res> get sender;
  @override
  $UserDtoCopyWith<$Res> get receiver;
}

/// @nodoc
class __$NotificationDtoCopyWithImpl<$Res> extends _$NotificationDtoCopyWithImpl<$Res> implements _$NotificationDtoCopyWith<$Res> {
  __$NotificationDtoCopyWithImpl(_NotificationDto _value, $Res Function(_NotificationDto) _then) : super(_value, (v) => _then(v as _NotificationDto));

  @override
  _NotificationDto get _value => super._value as _NotificationDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? description = freezed,
    Object? seen = freezed,
    Object? creationDate = freezed,
    Object? type = freezed,
  }) {
    return _then(_NotificationDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as UserDto,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as UserDto,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      seen: seen == freezed
          ? _value.seen
          : seen // ignore: cast_nullable_to_non_nullable
              as bool,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationDto extends _NotificationDto {
  const _$_NotificationDto(
      {@JsonKey(ignore: true) this.id,
      required this.sender,
      required this.receiver,
      required this.description,
      required this.seen,
      @ServerTimestampConverter() required this.creationDate,
      required this.type})
      : super._();

  factory _$_NotificationDto.fromJson(Map<String, dynamic> json) => _$_$_NotificationDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
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
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.sender, sender) || const DeepCollectionEquality().equals(other.sender, sender)) &&
            (identical(other.receiver, receiver) || const DeepCollectionEquality().equals(other.receiver, receiver)) &&
            (identical(other.description, description) || const DeepCollectionEquality().equals(other.description, description)) &&
            (identical(other.seen, seen) || const DeepCollectionEquality().equals(other.seen, seen)) &&
            (identical(other.creationDate, creationDate) || const DeepCollectionEquality().equals(other.creationDate, creationDate)) &&
            (identical(other.type, type) || const DeepCollectionEquality().equals(other.type, type)));
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

  @JsonKey(ignore: true)
  @override
  _$NotificationDtoCopyWith<_NotificationDto> get copyWith => __$NotificationDtoCopyWithImpl<_NotificationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NotificationDtoToJson(this);
  }
}

abstract class _NotificationDto extends NotificationDto {
  const factory _NotificationDto(
      {@JsonKey(ignore: true) String? id,
      required UserDto sender,
      required UserDto receiver,
      required String description,
      required bool seen,
      @ServerTimestampConverter() required DateTime creationDate,
      required NotificationType type}) = _$_NotificationDto;

  const _NotificationDto._() : super._();

  factory _NotificationDto.fromJson(Map<String, dynamic> json) = _$_NotificationDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;

  @override
  UserDto get sender => throw _privateConstructorUsedError;

  @override
  UserDto get receiver => throw _privateConstructorUsedError;

  @override
  String get description => throw _privateConstructorUsedError;
  @override
  bool get seen => throw _privateConstructorUsedError;
  @override
  @ServerTimestampConverter()
  DateTime get creationDate => throw _privateConstructorUsedError;

  @override
  NotificationType get type => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$NotificationDtoCopyWith<_NotificationDto> get copyWith => throw _privateConstructorUsedError;
}
