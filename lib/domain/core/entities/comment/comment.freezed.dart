// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommentTearOff {
  const _$CommentTearOff();

  _Comment call({required UniqueId id, required User poster, required UniqueId experienceId, required CommentContent content, required PastDate creationDate, required PastDate modificationDate}) {
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
const $Comment = _$CommentTearOff();

/// @nodoc
mixin _$Comment {
  UniqueId get id => throw _privateConstructorUsedError;

  User get poster => throw _privateConstructorUsedError;

  UniqueId get experienceId => throw _privateConstructorUsedError;

  CommentContent get content => throw _privateConstructorUsedError;

  PastDate get creationDate => throw _privateConstructorUsedError;

  PastDate get modificationDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) = _$CommentCopyWithImpl<$Res>;
  $Res call({UniqueId id, User poster, UniqueId experienceId, CommentContent content, PastDate creationDate, PastDate modificationDate});

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
    Object? id = freezed,
    Object? poster = freezed,
    Object? experienceId = freezed,
    Object? content = freezed,
    Object? creationDate = freezed,
    Object? modificationDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      poster: poster == freezed
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as User,
      experienceId: experienceId == freezed
          ? _value.experienceId
          : experienceId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as CommentContent,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as PastDate,
      modificationDate: modificationDate == freezed
          ? _value.modificationDate
          : modificationDate // ignore: cast_nullable_to_non_nullable
              as PastDate,
    ));
  }

  @override
  $UserCopyWith<$Res> get poster {
    return $UserCopyWith<$Res>(_value.poster, (value) {
      return _then(_value.copyWith(poster: value));
    });
  }
}

/// @nodoc
abstract class _$CommentCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$CommentCopyWith(_Comment value, $Res Function(_Comment) then) = __$CommentCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, User poster, UniqueId experienceId, CommentContent content, PastDate creationDate, PastDate modificationDate});

  @override
  $UserCopyWith<$Res> get poster;
}

/// @nodoc
class __$CommentCopyWithImpl<$Res> extends _$CommentCopyWithImpl<$Res> implements _$CommentCopyWith<$Res> {
  __$CommentCopyWithImpl(_Comment _value, $Res Function(_Comment) _then) : super(_value, (v) => _then(v as _Comment));

  @override
  _Comment get _value => super._value as _Comment;

  @override
  $Res call({
    Object? id = freezed,
    Object? poster = freezed,
    Object? experienceId = freezed,
    Object? content = freezed,
    Object? creationDate = freezed,
    Object? modificationDate = freezed,
  }) {
    return _then(_Comment(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      poster: poster == freezed
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as User,
      experienceId: experienceId == freezed
          ? _value.experienceId
          : experienceId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as CommentContent,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as PastDate,
      modificationDate: modificationDate == freezed
          ? _value.modificationDate
          : modificationDate // ignore: cast_nullable_to_non_nullable
              as PastDate,
    ));
  }
}

/// @nodoc
class _$_Comment extends _Comment {
  const _$_Comment({required this.id, required this.poster, required this.experienceId, required this.content, required this.creationDate, required this.modificationDate}) : super._();

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
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.poster, poster) || const DeepCollectionEquality().equals(other.poster, poster)) &&
            (identical(other.experienceId, experienceId) || const DeepCollectionEquality().equals(other.experienceId, experienceId)) &&
            (identical(other.content, content) || const DeepCollectionEquality().equals(other.content, content)) &&
            (identical(other.creationDate, creationDate) || const DeepCollectionEquality().equals(other.creationDate, creationDate)) &&
            (identical(other.modificationDate, modificationDate) || const DeepCollectionEquality().equals(other.modificationDate, modificationDate)));
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

  @JsonKey(ignore: true)
  @override
  _$CommentCopyWith<_Comment> get copyWith => __$CommentCopyWithImpl<_Comment>(this, _$identity);
}

abstract class _Comment extends Comment {
  const factory _Comment(
      {required UniqueId id, required User poster, required UniqueId experienceId, required CommentContent content, required PastDate creationDate, required PastDate modificationDate}) = _$_Comment;

  const _Comment._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;

  @override
  User get poster => throw _privateConstructorUsedError;

  @override
  UniqueId get experienceId => throw _privateConstructorUsedError;

  @override
  CommentContent get content => throw _privateConstructorUsedError;

  @override
  PastDate get creationDate => throw _privateConstructorUsedError;

  @override
  PastDate get modificationDate => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$CommentCopyWith<_Comment> get copyWith => throw _privateConstructorUsedError;
}
