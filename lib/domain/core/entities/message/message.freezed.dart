// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MessageTearOff {
  const _$MessageTearOff();

// ignore: unused_element
  _Message call({int id, @required User sender, @required User receiver, @required MessageContent content, @required PastDate creationDate}) {
    return _Message(
      id: id,
      sender: sender,
      receiver: receiver,
      content: content,
      creationDate: creationDate,
    );
  }
}

// ignore: unused_element
const $Message = _$MessageTearOff();

mixin _$Message {
  int get id;
  User get sender;
  User get receiver;
  MessageContent get content;
  PastDate get creationDate;

  $MessageCopyWith<Message> get copyWith;
}

abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) = _$MessageCopyWithImpl<$Res>;

  $Res call({int id, User sender, User receiver, MessageContent content, PastDate creationDate});

  $UserCopyWith<$Res> get sender;

  $UserCopyWith<$Res> get receiver;
}

class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  final Message _value;
  // ignore: unused_field
  final $Res Function(Message) _then;

  @override
  $Res call({
    Object id = freezed,
    Object sender = freezed,
    Object receiver = freezed,
    Object content = freezed,
    Object creationDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      sender: sender == freezed ? _value.sender : sender as User,
      receiver: receiver == freezed ? _value.receiver : receiver as User,
      content: content == freezed ? _value.content : content as MessageContent,
      creationDate: creationDate == freezed ? _value.creationDate : creationDate as PastDate,
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

abstract class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) then) = __$MessageCopyWithImpl<$Res>;

  @override
  $Res call({int id, User sender, User receiver, MessageContent content, PastDate creationDate});

  @override
  $UserCopyWith<$Res> get sender;
  @override
  $UserCopyWith<$Res> get receiver;
}

class __$MessageCopyWithImpl<$Res> extends _$MessageCopyWithImpl<$Res> implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(_Message _value, $Res Function(_Message) _then) : super(_value, (v) => _then(v as _Message));

  @override
  _Message get _value => super._value as _Message;

  @override
  $Res call({
    Object id = freezed,
    Object sender = freezed,
    Object receiver = freezed,
    Object content = freezed,
    Object creationDate = freezed,
  }) {
    return _then(_Message(
      id: id == freezed ? _value.id : id as int,
      sender: sender == freezed ? _value.sender : sender as User,
      receiver: receiver == freezed ? _value.receiver : receiver as User,
      content: content == freezed ? _value.content : content as MessageContent,
      creationDate: creationDate == freezed ? _value.creationDate : creationDate as PastDate,
    ));
  }
}

class _$_Message extends _Message {
  const _$_Message({this.id, @required this.sender, @required this.receiver, @required this.content, @required this.creationDate})
      : assert(sender != null),
        assert(receiver != null),
        assert(content != null),
        assert(creationDate != null),
        super._();

  @override
  final int id;
  @override
  final User sender;
  @override
  final User receiver;
  @override
  final MessageContent content;
  @override
  final PastDate creationDate;

  @override
  String toString() {
    return 'Message(id: $id, sender: $sender, receiver: $receiver, content: $content, creationDate: $creationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Message &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.sender, sender) || const DeepCollectionEquality().equals(other.sender, sender)) &&
            (identical(other.receiver, receiver) || const DeepCollectionEquality().equals(other.receiver, receiver)) &&
            (identical(other.content, content) || const DeepCollectionEquality().equals(other.content, content)) &&
            (identical(other.creationDate, creationDate) || const DeepCollectionEquality().equals(other.creationDate, creationDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(sender) ^
      const DeepCollectionEquality().hash(receiver) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(creationDate);

  @override
  _$MessageCopyWith<_Message> get copyWith => __$MessageCopyWithImpl<_Message>(this, _$identity);
}

abstract class _Message extends Message {
  const _Message._() : super._();

  const factory _Message({int id, @required User sender, @required User receiver, @required MessageContent content, @required PastDate creationDate}) = _$_Message;

  @override
  int get id;

  @override
  User get sender;

  @override
  User get receiver;

  @override
  MessageContent get content;

  @override
  PastDate get creationDate;
  @override
  _$MessageCopyWith<_Message> get copyWith;
}
