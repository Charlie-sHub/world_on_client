// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationTearOff {
  const _$NotificationTearOff();

  _Notification call(
      {required UniqueId id,
      required SimpleUser sender,
      required UniqueId receiverId,
      required EntityDescription description,
      required bool seen,
      required PastDate creationDate,
      required NotificationType type,
      required Option<Experience> experienceOption}) {
    return _Notification(
      id: id,
      sender: sender,
      receiverId: receiverId,
      description: description,
      seen: seen,
      creationDate: creationDate,
      type: type,
      experienceOption: experienceOption,
    );
  }
}

/// @nodoc
const $Notification = _$NotificationTearOff();

/// @nodoc
mixin _$Notification {
  UniqueId get id => throw _privateConstructorUsedError;
  SimpleUser get sender => throw _privateConstructorUsedError;
  UniqueId get receiverId => throw _privateConstructorUsedError;
  EntityDescription get description => throw _privateConstructorUsedError;
  bool get seen => throw _privateConstructorUsedError;
  PastDate get creationDate => throw _privateConstructorUsedError;
  NotificationType get type => throw _privateConstructorUsedError;
  Option<Experience> get experienceOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationCopyWith<Notification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCopyWith<$Res> {
  factory $NotificationCopyWith(
          Notification value, $Res Function(Notification) then) =
      _$NotificationCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      SimpleUser sender,
      UniqueId receiverId,
      EntityDescription description,
      bool seen,
      PastDate creationDate,
      NotificationType type,
      Option<Experience> experienceOption});

  $SimpleUserCopyWith<$Res> get sender;
}

/// @nodoc
class _$NotificationCopyWithImpl<$Res> implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._value, this._then);

  final Notification _value;
  // ignore: unused_field
  final $Res Function(Notification) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? sender = freezed,
    Object? receiverId = freezed,
    Object? description = freezed,
    Object? seen = freezed,
    Object? creationDate = freezed,
    Object? type = freezed,
    Object? experienceOption = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as SimpleUser,
      receiverId: receiverId == freezed
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as EntityDescription,
      seen: seen == freezed
          ? _value.seen
          : seen // ignore: cast_nullable_to_non_nullable
              as bool,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as PastDate,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      experienceOption: experienceOption == freezed
          ? _value.experienceOption
          : experienceOption // ignore: cast_nullable_to_non_nullable
              as Option<Experience>,
    ));
  }

  @override
  $SimpleUserCopyWith<$Res> get sender {
    return $SimpleUserCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value));
    });
  }
}

/// @nodoc
abstract class _$NotificationCopyWith<$Res>
    implements $NotificationCopyWith<$Res> {
  factory _$NotificationCopyWith(
          _Notification value, $Res Function(_Notification) then) =
      __$NotificationCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      SimpleUser sender,
      UniqueId receiverId,
      EntityDescription description,
      bool seen,
      PastDate creationDate,
      NotificationType type,
      Option<Experience> experienceOption});

  @override
  $SimpleUserCopyWith<$Res> get sender;
}

/// @nodoc
class __$NotificationCopyWithImpl<$Res> extends _$NotificationCopyWithImpl<$Res>
    implements _$NotificationCopyWith<$Res> {
  __$NotificationCopyWithImpl(
      _Notification _value, $Res Function(_Notification) _then)
      : super(_value, (v) => _then(v as _Notification));

  @override
  _Notification get _value => super._value as _Notification;

  @override
  $Res call({
    Object? id = freezed,
    Object? sender = freezed,
    Object? receiverId = freezed,
    Object? description = freezed,
    Object? seen = freezed,
    Object? creationDate = freezed,
    Object? type = freezed,
    Object? experienceOption = freezed,
  }) {
    return _then(_Notification(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as SimpleUser,
      receiverId: receiverId == freezed
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as EntityDescription,
      seen: seen == freezed
          ? _value.seen
          : seen // ignore: cast_nullable_to_non_nullable
              as bool,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as PastDate,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      experienceOption: experienceOption == freezed
          ? _value.experienceOption
          : experienceOption // ignore: cast_nullable_to_non_nullable
              as Option<Experience>,
    ));
  }
}

/// @nodoc

class _$_Notification extends _Notification {
  const _$_Notification(
      {required this.id,
      required this.sender,
      required this.receiverId,
      required this.description,
      required this.seen,
      required this.creationDate,
      required this.type,
      required this.experienceOption})
      : super._();

  @override
  final UniqueId id;
  @override
  final SimpleUser sender;
  @override
  final UniqueId receiverId;
  @override
  final EntityDescription description;
  @override
  final bool seen;
  @override
  final PastDate creationDate;
  @override
  final NotificationType type;
  @override
  final Option<Experience> experienceOption;

  @override
  String toString() {
    return 'Notification(id: $id, sender: $sender, receiverId: $receiverId, description: $description, seen: $seen, creationDate: $creationDate, type: $type, experienceOption: $experienceOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Notification &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.seen, seen) || other.seen == seen) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.experienceOption, experienceOption) ||
                other.experienceOption == experienceOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, sender, receiverId,
      description, seen, creationDate, type, experienceOption);

  @JsonKey(ignore: true)
  @override
  _$NotificationCopyWith<_Notification> get copyWith =>
      __$NotificationCopyWithImpl<_Notification>(this, _$identity);
}

abstract class _Notification extends Notification {
  const factory _Notification(
      {required UniqueId id,
      required SimpleUser sender,
      required UniqueId receiverId,
      required EntityDescription description,
      required bool seen,
      required PastDate creationDate,
      required NotificationType type,
      required Option<Experience> experienceOption}) = _$_Notification;
  const _Notification._() : super._();

  @override
  UniqueId get id;
  @override
  SimpleUser get sender;
  @override
  UniqueId get receiverId;
  @override
  EntityDescription get description;
  @override
  bool get seen;
  @override
  PastDate get creationDate;
  @override
  NotificationType get type;
  @override
  Option<Experience> get experienceOption;
  @override
  @JsonKey(ignore: true)
  _$NotificationCopyWith<_Notification> get copyWith =>
      throw _privateConstructorUsedError;
}
