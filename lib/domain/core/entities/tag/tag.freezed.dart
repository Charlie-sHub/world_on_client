// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TagTearOff {
  const _$TagTearOff();

// ignore: unused_element
  _Tag call({int id, @required Name name, @required User creator, @required PastDate creationDate, @required PastDate modificationDate}) {
    return _Tag(
      id: id,
      name: name,
      creator: creator,
      creationDate: creationDate,
      modificationDate: modificationDate,
    );
  }
}

// ignore: unused_element
const $Tag = _$TagTearOff();

mixin _$Tag {
  int get id;
  Name get name;
  User get creator;
  PastDate get creationDate;
  PastDate get modificationDate;

  $TagCopyWith<Tag> get copyWith;
}

abstract class $TagCopyWith<$Res> {
  factory $TagCopyWith(Tag value, $Res Function(Tag) then) =
  _$TagCopyWithImpl<$Res>;
  
  $Res call({int id,
    Name name,
    User creator,
    PastDate creationDate,
    PastDate modificationDate});
  
  $UserCopyWith<$Res> get creator;
}

class _$TagCopyWithImpl<$Res> implements $TagCopyWith<$Res> {
  _$TagCopyWithImpl(this._value, this._then);

  final Tag _value;
  // ignore: unused_field
  final $Res Function(Tag) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object creator = freezed,
    Object creationDate = freezed,
    Object modificationDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as Name,
      creator: creator == freezed ? _value.creator : creator as User,
      creationDate: creationDate == freezed
        ? _value.creationDate
        : creationDate as PastDate,
      modificationDate: modificationDate == freezed
        ? _value.modificationDate
        : modificationDate as PastDate,
    ));
  }

  @override
  $UserCopyWith<$Res> get creator {
    if (_value.creator == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value));
    });
  }
}

abstract class _$TagCopyWith<$Res> implements $TagCopyWith<$Res> {
  factory _$TagCopyWith(_Tag value, $Res Function(_Tag) then) =
  __$TagCopyWithImpl<$Res>;
  
  @override
  $Res call({int id,
    Name name,
    User creator,
    PastDate creationDate,
    PastDate modificationDate});

  @override
  $UserCopyWith<$Res> get creator;
}

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
    Object creator = freezed,
    Object creationDate = freezed,
    Object modificationDate = freezed,
  }) {
    return _then(_Tag(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as Name,
      creator: creator == freezed ? _value.creator : creator as User,
      creationDate: creationDate == freezed
        ? _value.creationDate
        : creationDate as PastDate,
      modificationDate: modificationDate == freezed
        ? _value.modificationDate
        : modificationDate as PastDate,
    ));
  }
}

class _$_Tag extends _Tag {
  const _$_Tag({this.id,
    @required this.name,
    @required this.creator,
    @required this.creationDate,
    @required this.modificationDate})
    : assert(name != null),
      assert(creator != null),
      assert(creationDate != null),
      assert(modificationDate != null),
      super._();
  
  @override
  final int id;
  @override
  final Name name;
  @override
  final User creator;
  @override
  final PastDate creationDate;
  @override
  final PastDate modificationDate;

  @override
  String toString() {
    return 'Tag(id: $id, name: $name, creator: $creator, creationDate: $creationDate, modificationDate: $modificationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _Tag &&
        (identical(other.id, id) ||
          const DeepCollectionEquality().equals(other.id, id)) &&
        (identical(other.name, name) ||
          const DeepCollectionEquality().equals(other.name, name)) &&
        (identical(other.creator, creator) ||
          const DeepCollectionEquality()
            .equals(other.creator, creator)) &&
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
      const DeepCollectionEquality().hash(creator) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(modificationDate);

  @override
  _$TagCopyWith<_Tag> get copyWith =>
    __$TagCopyWithImpl<_Tag>(this, _$identity);
}

abstract class _Tag extends Tag {
  const _Tag._() : super._();
  
  const factory _Tag({int id,
    @required Name name,
    @required User creator,
    @required PastDate creationDate,
    @required PastDate modificationDate}) = _$_Tag;
  
  @override
  int get id;
  
  @override
  Name get name;
  
  @override
  User get creator;
  
  @override
  PastDate get creationDate;
  
  @override
  PastDate get modificationDate;
  @override
  _$TagCopyWith<_Tag> get copyWith;
}
