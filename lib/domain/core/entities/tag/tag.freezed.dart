// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TagTearOff {
  const _$TagTearOff();

  _Tag call(
      {required UniqueId id,
      required Name name,
      required UniqueId creatorId,
      required PastDate creationDate,
      required PastDate modificationDate}) {
    return _Tag(
      id: id,
      name: name,
      creatorId: creatorId,
      creationDate: creationDate,
      modificationDate: modificationDate,
    );
  }
}

/// @nodoc
const $Tag = _$TagTearOff();

/// @nodoc
mixin _$Tag {
  UniqueId get id => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  UniqueId get creatorId => throw _privateConstructorUsedError;
  PastDate get creationDate => throw _privateConstructorUsedError;
  PastDate get modificationDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TagCopyWith<Tag> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagCopyWith<$Res> {
  factory $TagCopyWith(Tag value, $Res Function(Tag) then) = _$TagCopyWithImpl<$Res>;

  $Res call(
      {UniqueId id,
      Name name,
      UniqueId creatorId,
      PastDate creationDate,
      PastDate modificationDate});
}

/// @nodoc
class _$TagCopyWithImpl<$Res> implements $TagCopyWith<$Res> {
  _$TagCopyWithImpl(this._value, this._then);

  final Tag _value;
  // ignore: unused_field
  final $Res Function(Tag) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? creatorId = freezed,
    Object? creationDate = freezed,
    Object? modificationDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      creatorId: creatorId == freezed
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
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
abstract class _$TagCopyWith<$Res> implements $TagCopyWith<$Res> {
  factory _$TagCopyWith(_Tag value, $Res Function(_Tag) then) = __$TagCopyWithImpl<$Res>;

  @override
  $Res call(
      {UniqueId id,
      Name name,
      UniqueId creatorId,
      PastDate creationDate,
      PastDate modificationDate});
}

/// @nodoc
class __$TagCopyWithImpl<$Res> extends _$TagCopyWithImpl<$Res> implements _$TagCopyWith<$Res> {
  __$TagCopyWithImpl(_Tag _value, $Res Function(_Tag) _then)
      : super(_value, (v) => _then(v as _Tag));

  @override
  _Tag get _value => super._value as _Tag;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? creatorId = freezed,
    Object? creationDate = freezed,
    Object? modificationDate = freezed,
  }) {
    return _then(_Tag(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      creatorId: creatorId == freezed
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
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

class _$_Tag extends _Tag {
  const _$_Tag(
      {required this.id,
      required this.name,
      required this.creatorId,
      required this.creationDate,
      required this.modificationDate})
      : super._();

  @override
  final UniqueId id;
  @override
  final Name name;
  @override
  final UniqueId creatorId;
  @override
  final PastDate creationDate;
  @override
  final PastDate modificationDate;

  @override
  String toString() {
    return 'Tag(id: $id, name: $name, creatorId: $creatorId, creationDate: $creationDate, modificationDate: $modificationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Tag &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.creatorId, creatorId) ||
                const DeepCollectionEquality().equals(other.creatorId, creatorId)) &&
            (identical(other.creationDate, creationDate) ||
                const DeepCollectionEquality().equals(other.creationDate, creationDate)) &&
            (identical(other.modificationDate, modificationDate) ||
                const DeepCollectionEquality().equals(other.modificationDate, modificationDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(creatorId) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(modificationDate);

  @JsonKey(ignore: true)
  @override
  _$TagCopyWith<_Tag> get copyWith => __$TagCopyWithImpl<_Tag>(this, _$identity);
}

abstract class _Tag extends Tag {
  const factory _Tag(
      {required UniqueId id,
      required Name name,
      required UniqueId creatorId,
      required PastDate creationDate,
      required PastDate modificationDate}) = _$_Tag;

  const _Tag._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;

  @override
  Name get name => throw _privateConstructorUsedError;

  @override
  UniqueId get creatorId => throw _privateConstructorUsedError;

  @override
  PastDate get creationDate => throw _privateConstructorUsedError;
  @override
  PastDate get modificationDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TagCopyWith<_Tag> get copyWith => throw _privateConstructorUsedError;
}
