// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TagTearOff {
  const _$TagTearOff();

// ignore: unused_element
  _Tag call({@required UniqueId id, @required Name name, @required UniqueId creatorId, @required PastDate creationDate, @required PastDate modificationDate}) {
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
// ignore: unused_element
const $Tag = _$TagTearOff();

/// @nodoc
mixin _$Tag {
  UniqueId get id;
  
  Name get name;
  
  UniqueId get creatorId;
  
  PastDate get creationDate;
  PastDate get modificationDate;

  $TagCopyWith<Tag> get copyWith;
}

/// @nodoc
abstract class $TagCopyWith<$Res> {
  factory $TagCopyWith(Tag value, $Res Function(Tag) then) =
  _$TagCopyWithImpl<$Res>;
  
  $Res call({UniqueId id,
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
    Object id = freezed,
    Object name = freezed,
    Object creatorId = freezed,
    Object creationDate = freezed,
    Object modificationDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as Name,
      creatorId:
      creatorId == freezed ? _value.creatorId : creatorId as UniqueId,
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
abstract class _$TagCopyWith<$Res> implements $TagCopyWith<$Res> {
  factory _$TagCopyWith(_Tag value, $Res Function(_Tag) then) =
  __$TagCopyWithImpl<$Res>;
  
  @override
  $Res call({UniqueId id,
    Name name,
    UniqueId creatorId,
    PastDate creationDate,
    PastDate modificationDate});
}

/// @nodoc
class __$TagCopyWithImpl<$Res> extends _$TagCopyWithImpl<$Res>
  implements _$TagCopyWith<$Res> {
  __$TagCopyWithImpl(_Tag _value, $Res Function(_Tag) _then)
    : super(_value, (v) => _then(v as _Tag));
  
  @override
  _Tag get _value => super._value as _Tag;
  
  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object creatorId = freezed,
    Object creationDate = freezed,
    Object modificationDate = freezed,
  }) {
    return _then(_Tag(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as Name,
      creatorId:
      creatorId == freezed ? _value.creatorId : creatorId as UniqueId,
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
class _$_Tag extends _Tag {
  const _$_Tag({@required this.id,
    @required this.name,
    @required this.creatorId,
    @required this.creationDate,
    @required this.modificationDate})
    : assert(id != null),
      assert(name != null),
      assert(creatorId != null),
      assert(creationDate != null),
      assert(modificationDate != null),
      super._();
  
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
        (identical(other.id, id) ||
          const DeepCollectionEquality().equals(other.id, id)) &&
        (identical(other.name, name) ||
          const DeepCollectionEquality().equals(other.name, name)) &&
        (identical(other.creatorId, creatorId) ||
          const DeepCollectionEquality()
            .equals(other.creatorId, creatorId)) &&
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
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(creatorId) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(modificationDate);

  @override
  _$TagCopyWith<_Tag> get copyWith =>
    __$TagCopyWithImpl<_Tag>(this, _$identity);
}

abstract class _Tag extends Tag {
  const _Tag._() : super._();
  
  const factory _Tag({@required UniqueId id,
    @required Name name,
    @required UniqueId creatorId,
    @required PastDate creationDate,
    @required PastDate modificationDate}) = _$_Tag;
  
  @override
  UniqueId get id;
  
  @override
  Name get name;
  
  @override
  UniqueId get creatorId;
  
  @override
  PastDate get creationDate;
  
  @override
  PastDate get modificationDate;
  @override
  _$TagCopyWith<_Tag> get copyWith;
}
