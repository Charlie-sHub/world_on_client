// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NotificationTearOff {
  const _$NotificationTearOff();

// ignore: unused_element
  _Notification call(
      {int id, @required User sender, @required User receiver, @required EntityDescription description, @required bool seen, @required PastDate creationDate, @required NotificationType type}) {
    return _Notification(
      id: id,
      sender: sender,
      receiver: receiver,
      description: description,
      seen: seen,
      creationDate: creationDate,
      type: type,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Notification = _$NotificationTearOff();

/// @nodoc
mixin _$Notification {
  int get id;

  User get sender; // TODO: Is the receiver necessary for the domain entity?
// The receiver will always be the logged in user
// Relation is needed in the database of course, but not really beyond that
// Could be left to just the id
  User get receiver;

  EntityDescription get description;

  bool get seen;

  PastDate get creationDate;

  NotificationType get type;

  $NotificationCopyWith<Notification> get copyWith;
}

/// @nodoc
abstract class $NotificationCopyWith<$Res> {
  factory $NotificationCopyWith(Notification value, $Res Function(Notification) then) = _$NotificationCopyWithImpl<$Res>;
  $Res call({int id, User sender, User receiver, EntityDescription description, bool seen, PastDate creationDate, NotificationType type});

  $UserCopyWith<$Res> get sender;
  $UserCopyWith<$Res> get receiver;
}

/// @nodoc
class _$NotificationCopyWithImpl<$Res> implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._value, this._then);

  final Notification _value;
  // ignore: unused_field
  final $Res Function(Notification) _then;

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
      id: id == freezed ? _value.id : id as int,
      sender: sender == freezed ? _value.sender : sender as User,
      receiver: receiver == freezed ? _value.receiver : receiver as User,
      description: description == freezed ? _value.description : description as EntityDescription,
      seen: seen == freezed ? _value.seen : seen as bool,
      creationDate: creationDate == freezed ? _value.creationDate : creationDate as PastDate,
      type: type == freezed ? _value.type : type as NotificationType,
    ));
  }

  @override
  $UserCopyWith<$Res> get sender {
    if (_value.sender == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value));
    });
  }

  @override
  $UserCopyWith<$Res> get receiver {
    if (_value.receiver == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.receiver, (value) {
      return _then(_value.copyWith(receiver: value));
    });
  }
}

/// @nodoc
abstract class _$NotificationCopyWith<$Res> implements $NotificationCopyWith<$Res> {
  factory _$NotificationCopyWith(_Notification value, $Res Function(_Notification) then) = __$NotificationCopyWithImpl<$Res>;
  @override
  $Res call({int id, User sender, User receiver, EntityDescription description, bool seen, PastDate creationDate, NotificationType type});

  @override
  $UserCopyWith<$Res> get sender;
  @override
  $UserCopyWith<$Res> get receiver;
}

/// @nodoc
class __$NotificationCopyWithImpl<$Res> extends _$NotificationCopyWithImpl<$Res> implements _$NotificationCopyWith<$Res> {
  __$NotificationCopyWithImpl(_Notification _value, $Res Function(_Notification) _then) : super(_value, (v) => _then(v as _Notification));

  @override
  _Notification get _value => super._value as _Notification;

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
    return _then(_Notification(
      id: id == freezed ? _value.id : id as int,
      sender: sender == freezed ? _value.sender : sender as User,
      receiver: receiver == freezed ? _value.receiver : receiver as User,
      description: description == freezed ? _value.description : description as EntityDescription,
      seen: seen == freezed ? _value.seen : seen as bool,
      creationDate: creationDate == freezed ? _value.creationDate : creationDate as PastDate,
      type: type == freezed ? _value.type : type as NotificationType,
    ));
  }
}

/// @nodoc
class _$_Notification extends _Notification {
  const _$_Notification({this.id, @required this.sender, @required this.receiver, @required this.description, @required this.seen, @required this.creationDate, @required this.type})
      : assert(sender != null),
        assert(receiver != null),
        assert(description != null),
        assert(seen != null),
        assert(creationDate != null),
        assert(type != null),
        super._();

  @override
  final int id;
  @override
  final User sender;
  @override // TODO: Is the receiver necessary for the domain entity?
// The receiver will always be the logged in user
// Relation is needed in the database of course, but not really beyond that
// Could be left to just the id
  final User receiver;
  @override
  final EntityDescription description;
  @override
  final bool seen;
  @override
  final PastDate creationDate;
  @override
  final NotificationType type;

  @override
  String toString() {
    return 'Notification(id: $id, sender: $sender, receiver: $receiver, description: $description, seen: $seen, creationDate: $creationDate, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Notification &&
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

  @override
  _$NotificationCopyWith<_Notification> get copyWith => __$NotificationCopyWithImpl<_Notification>(this, _$identity);
}

abstract class _Notification extends Notification {
  const _Notification._() : super._();
  const factory _Notification(
      {int id,
      @required User sender,
      @required User receiver,
      @required EntityDescription description,
      @required bool seen,
      @required PastDate creationDate,
      @required NotificationType type}) = _$_Notification;

  @override
  int get id;

  @override
  User get sender;

  @override // TODO: Is the receiver necessary for the domain entity?
// The receiver will always be the logged in user
// Relation is needed in the database of course, but not really beyond that
// Could be left to just the id
  User get receiver;

  @override
  EntityDescription get description;

  @override
  bool get seen;

  @override
  PastDate get creationDate;

  @override
  NotificationType get type;

  @override
  _$NotificationCopyWith<_Notification> get copyWith;
}
