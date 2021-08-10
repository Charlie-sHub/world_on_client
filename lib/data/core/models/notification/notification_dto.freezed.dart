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
      {required String id,
      required SimpleUserDto sender,
      required String receiverId,
      required String description,
      required bool seen,
      @ServerTimestampConverter() required DateTime creationDate,
      required NotificationType type,
      ExperienceDto? experience}) {
    return _NotificationDto(
      id: id,
      sender: sender,
      receiverId: receiverId,
      description: description,
      seen: seen,
      creationDate: creationDate,
      type: type,
      experience: experience,
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
  String get id => throw _privateConstructorUsedError;
  SimpleUserDto get sender => throw _privateConstructorUsedError;
  String get receiverId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get seen => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  DateTime get creationDate => throw _privateConstructorUsedError;
  NotificationType get type => throw _privateConstructorUsedError;
  ExperienceDto? get experience => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationDtoCopyWith<NotificationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDtoCopyWith<$Res> {
  factory $NotificationDtoCopyWith(
          NotificationDto value, $Res Function(NotificationDto) then) =
      _$NotificationDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      SimpleUserDto sender,
      String receiverId,
      String description,
      bool seen,
      @ServerTimestampConverter() DateTime creationDate,
      NotificationType type,
      ExperienceDto? experience});

  $SimpleUserDtoCopyWith<$Res> get sender;
  $ExperienceDtoCopyWith<$Res>? get experience;
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
    Object? id = freezed,
    Object? sender = freezed,
    Object? receiverId = freezed,
    Object? description = freezed,
    Object? seen = freezed,
    Object? creationDate = freezed,
    Object? type = freezed,
    Object? experience = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as SimpleUserDto,
      receiverId: receiverId == freezed
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
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
      experience: experience == freezed
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as ExperienceDto?,
    ));
  }

  @override
  $SimpleUserDtoCopyWith<$Res> get sender {
    return $SimpleUserDtoCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value));
    });
  }

  @override
  $ExperienceDtoCopyWith<$Res>? get experience {
    if (_value.experience == null) {
      return null;
    }

    return $ExperienceDtoCopyWith<$Res>(_value.experience!, (value) {
      return _then(_value.copyWith(experience: value));
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
      {String id,
      SimpleUserDto sender,
      String receiverId,
      String description,
      bool seen,
      @ServerTimestampConverter() DateTime creationDate,
      NotificationType type,
      ExperienceDto? experience});

  @override
  $SimpleUserDtoCopyWith<$Res> get sender;
  @override
  $ExperienceDtoCopyWith<$Res>? get experience;
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
    Object? id = freezed,
    Object? sender = freezed,
    Object? receiverId = freezed,
    Object? description = freezed,
    Object? seen = freezed,
    Object? creationDate = freezed,
    Object? type = freezed,
    Object? experience = freezed,
  }) {
    return _then(_NotificationDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as SimpleUserDto,
      receiverId: receiverId == freezed
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
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
      experience: experience == freezed
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as ExperienceDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationDto extends _NotificationDto {
  const _$_NotificationDto(
      {required this.id,
      required this.sender,
      required this.receiverId,
      required this.description,
      required this.seen,
      @ServerTimestampConverter() required this.creationDate,
      required this.type,
      this.experience})
      : super._();

  factory _$_NotificationDto.fromJson(Map<String, dynamic> json) =>
      _$_$_NotificationDtoFromJson(json);

  @override
  final String id;
  @override
  final SimpleUserDto sender;
  @override
  final String receiverId;
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
  final ExperienceDto? experience;

  @override
  String toString() {
    return 'NotificationDto(id: $id, sender: $sender, receiverId: $receiverId, description: $description, seen: $seen, creationDate: $creationDate, type: $type, experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.sender, sender) ||
                const DeepCollectionEquality().equals(other.sender, sender)) &&
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
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.experience, experience) ||
                const DeepCollectionEquality()
                    .equals(other.experience, experience)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(sender) ^
      const DeepCollectionEquality().hash(receiverId) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(seen) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(experience);

  @JsonKey(ignore: true)
  @override
  _$NotificationDtoCopyWith<_NotificationDto> get copyWith =>
      __$NotificationDtoCopyWithImpl<_NotificationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NotificationDtoToJson(this);
  }
}

abstract class _NotificationDto extends NotificationDto {
  const factory _NotificationDto(
      {required String id,
      required SimpleUserDto sender,
      required String receiverId,
      required String description,
      required bool seen,
      @ServerTimestampConverter() required DateTime creationDate,
      required NotificationType type,
      ExperienceDto? experience}) = _$_NotificationDto;
  const _NotificationDto._() : super._();

  factory _NotificationDto.fromJson(Map<String, dynamic> json) =
      _$_NotificationDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  SimpleUserDto get sender => throw _privateConstructorUsedError;
  @override
  String get receiverId => throw _privateConstructorUsedError;
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
  ExperienceDto? get experience => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NotificationDtoCopyWith<_NotificationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
