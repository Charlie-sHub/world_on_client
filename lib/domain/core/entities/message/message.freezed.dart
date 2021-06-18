// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MessageTearOff {
  const _$MessageTearOff();

  _Message call({required UniqueId id, required SimpleUser sender, required UniqueId receiverId, required MessageContent content, required PastDate creationDate}) {
    return _Message(
      id: id,
      sender: sender,
      receiverId: receiverId,
      content: content,
      creationDate: creationDate,
    );
  }
}

/// @nodoc
const $Message = _$MessageTearOff();

/// @nodoc
mixin _$Message {
  UniqueId get id => throw _privateConstructorUsedError;
  SimpleUser get sender => throw _privateConstructorUsedError;
  UniqueId get receiverId => throw _privateConstructorUsedError;
  MessageContent get content => throw _privateConstructorUsedError;
  PastDate get creationDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) = _$MessageCopyWithImpl<$Res>;

  $Res call({UniqueId id, SimpleUser sender, UniqueId receiverId, MessageContent content, PastDate creationDate});

  $SimpleUserCopyWith<$Res> get sender;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  final Message _value;
  // ignore: unused_field
  final $Res Function(Message) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? sender = freezed,
    Object? receiverId = freezed,
    Object? content = freezed,
    Object? creationDate = freezed,
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
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as MessageContent,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as PastDate,
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
abstract class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) then) = __$MessageCopyWithImpl<$Res>;

  @override
  $Res call({UniqueId id, SimpleUser sender, UniqueId receiverId, MessageContent content, PastDate creationDate});

  @override
  $SimpleUserCopyWith<$Res> get sender;
}

/// @nodoc
class __$MessageCopyWithImpl<$Res> extends _$MessageCopyWithImpl<$Res> implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(_Message _value, $Res Function(_Message) _then) : super(_value, (v) => _then(v as _Message));

  @override
  _Message get _value => super._value as _Message;

  @override
  $Res call({
    Object? id = freezed,
    Object? sender = freezed,
    Object? receiverId = freezed,
    Object? content = freezed,
    Object? creationDate = freezed,
  }) {
    return _then(_Message(
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
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as MessageContent,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as PastDate,
    ));
  }
}

/// @nodoc

class _$_Message extends _Message {
  const _$_Message({required this.id, required this.sender, required this.receiverId, required this.content, required this.creationDate}) : super._();

  @override
  final UniqueId id;
  @override
  final SimpleUser sender;
  @override
  final UniqueId receiverId;
  @override
  final MessageContent content;
  @override
  final PastDate creationDate;

  @override
  String toString() {
    return 'Message(id: $id, sender: $sender, receiverId: $receiverId, content: $content, creationDate: $creationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Message &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.sender, sender) || const DeepCollectionEquality().equals(other.sender, sender)) &&
            (identical(other.receiverId, receiverId) || const DeepCollectionEquality().equals(other.receiverId, receiverId)) &&
            (identical(other.content, content) || const DeepCollectionEquality().equals(other.content, content)) &&
            (identical(other.creationDate, creationDate) || const DeepCollectionEquality().equals(other.creationDate, creationDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(sender) ^
      const DeepCollectionEquality().hash(receiverId) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(creationDate);

  @JsonKey(ignore: true)
  @override
  _$MessageCopyWith<_Message> get copyWith => __$MessageCopyWithImpl<_Message>(this, _$identity);
}

abstract class _Message extends Message {
  const factory _Message({required UniqueId id, required SimpleUser sender, required UniqueId receiverId, required MessageContent content, required PastDate creationDate}) = _$_Message;

  const _Message._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;

  @override
  SimpleUser get sender => throw _privateConstructorUsedError;

  @override
  UniqueId get receiverId => throw _privateConstructorUsedError;

  @override
  MessageContent get content => throw _privateConstructorUsedError;

  @override
  PastDate get creationDate => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$MessageCopyWith<_Message> get copyWith => throw _privateConstructorUsedError;
}
