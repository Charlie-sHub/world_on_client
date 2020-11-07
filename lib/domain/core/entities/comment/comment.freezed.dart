// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CommentTearOff {
  const _$CommentTearOff();

// ignore: unused_element
  _Comment call(
      {@required UniqueId id, @required User poster, @required UniqueId experienceId, @required CommentContent content, @required PastDate creationDate, @required PastDate modificationDate}) {
    return _Comment(
      id: id,
      poster: poster,
      experienceId: experienceId,
      content: content,
      creationDate: creationDate,
      modificationDate: modificationDate,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Comment = _$CommentTearOff();

/// @nodoc
mixin _$Comment {
  UniqueId get id;
  
  User get poster;
  
  UniqueId get experienceId;
  
  CommentContent get content;
  PastDate get creationDate;
  PastDate get modificationDate;

  $CommentCopyWith<Comment> get copyWith;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
  _$CommentCopyWithImpl<$Res>;
  
  $Res call({UniqueId id,
    User poster,
    UniqueId experienceId,
    CommentContent content,
    PastDate creationDate,
    PastDate modificationDate});
  
  $UserCopyWith<$Res> get poster;
}

/// @nodoc
class _$CommentCopyWithImpl<$Res> implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  final Comment _value;
  // ignore: unused_field
  final $Res Function(Comment) _then;

  @override
  $Res call({
    Object id = freezed,
    Object poster = freezed,
    Object experienceId = freezed,
    Object content = freezed,
    Object creationDate = freezed,
    Object modificationDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      poster: poster == freezed ? _value.poster : poster as User,
      experienceId: experienceId == freezed
        ? _value.experienceId
        : experienceId as UniqueId,
      content: content == freezed ? _value.content : content as CommentContent,
      creationDate: creationDate == freezed
        ? _value.creationDate
        : creationDate as PastDate,
      modificationDate: modificationDate == freezed
        ? _value.modificationDate
        : modificationDate as PastDate,
    ));
  }

  @override
  $UserCopyWith<$Res> get poster {
    if (_value.poster == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.poster, (value) {
      return _then(_value.copyWith(poster: value));
    });
  }
}

/// @nodoc
abstract class _$CommentCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$CommentCopyWith(_Comment value, $Res Function(_Comment) then) =
  __$CommentCopyWithImpl<$Res>;
  
  @override
  $Res call({UniqueId id,
    User poster,
    UniqueId experienceId,
    CommentContent content,
    PastDate creationDate,
    PastDate modificationDate});
  
  @override
  $UserCopyWith<$Res> get poster;
}

/// @nodoc
class __$CommentCopyWithImpl<$Res> extends _$CommentCopyWithImpl<$Res>
  implements _$CommentCopyWith<$Res> {
  __$CommentCopyWithImpl(_Comment _value, $Res Function(_Comment) _then)
    : super(_value, (v) => _then(v as _Comment));
  
  @override
  _Comment get _value => super._value as _Comment;
  
  @override
  $Res call({
    Object id = freezed,
    Object poster = freezed,
    Object experienceId = freezed,
    Object content = freezed,
    Object creationDate = freezed,
    Object modificationDate = freezed,
  }) {
    return _then(_Comment(
      id: id == freezed ? _value.id : id as UniqueId,
      poster: poster == freezed ? _value.poster : poster as User,
      experienceId: experienceId == freezed
        ? _value.experienceId
        : experienceId as UniqueId,
      content: content == freezed ? _value.content : content as CommentContent,
      creationDate: creationDate == freezed
        ? _value.creationDate
        : creationDate as PastDate,
      modificationDate: modificationDate == freezed
        ? _value.modificationDate
        : modificationDate as PastDate,
    ));
  }
}

/// @nodoc
class _$_Comment extends _Comment {
  const _$_Comment({@required this.id,
    @required this.poster,
    @required this.experienceId,
    @required this.content,
    @required this.creationDate,
    @required this.modificationDate})
    : assert(id != null),
      assert(poster != null),
      assert(experienceId != null),
      assert(content != null),
      assert(creationDate != null),
      assert(modificationDate != null),
      super._();
  
  @override
  final UniqueId id;
  @override
  final User poster;
  @override
  final UniqueId experienceId;
  @override
  final CommentContent content;
  @override
  final PastDate creationDate;
  @override
  final PastDate modificationDate;
  
  @override
  String toString() {
    return 'Comment(id: $id, poster: $poster, experienceId: $experienceId, content: $content, creationDate: $creationDate, modificationDate: $modificationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _Comment &&
        (identical(other.id, id) ||
          const DeepCollectionEquality().equals(other.id, id)) &&
        (identical(other.poster, poster) ||
          const DeepCollectionEquality().equals(other.poster, poster)) &&
        (identical(other.experienceId, experienceId) ||
          const DeepCollectionEquality()
            .equals(other.experienceId, experienceId)) &&
        (identical(other.content, content) ||
          const DeepCollectionEquality()
            .equals(other.content, content)) &&
        (identical(other.creationDate, creationDate) ||
          const DeepCollectionEquality()
            .equals(other.creationDate, creationDate)) &&
        (identical(other.modificationDate, modificationDate) ||
          const DeepCollectionEquality()
            .equals(other.modificationDate, modificationDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(poster) ^
      const DeepCollectionEquality().hash(experienceId) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(modificationDate);

  @override
  _$CommentCopyWith<_Comment> get copyWith =>
    __$CommentCopyWithImpl<_Comment>(this, _$identity);
}

abstract class _Comment extends Comment {
  const _Comment._() : super._();
  
  const factory _Comment({@required UniqueId id,
    @required User poster,
    @required UniqueId experienceId,
    @required CommentContent content,
    @required PastDate creationDate,
    @required PastDate modificationDate}) = _$_Comment;
  
  @override
  UniqueId get id;
  
  @override
  User get poster;
  
  @override
  UniqueId get experienceId;
  
  @override
  CommentContent get content;
  
  @override
  PastDate get creationDate;
  @override
  PastDate get modificationDate;
  @override
  _$CommentCopyWith<_Comment> get copyWith;
}
