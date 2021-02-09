// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ItemTearOff {
  const _$ItemTearOff();

// ignore: unused_element
  _Item call({@required UniqueId id, @required Name name, @required EntityDescription description, @required ItemCode code, @required int value, @required String imageURL}) {
    return _Item(
      id: id,
      name: name,
      description: description,
      code: code,
      value: value,
      imageURL: imageURL,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Item = _$ItemTearOff();

/// @nodoc
mixin _$Item {
  UniqueId get id;
  Name get name;
  EntityDescription get description;
  ItemCode get code; // The value in coins it's an int
// it should be a double in case we go for direct sales
  int get value;
  String get imageURL;

  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) = _$ItemCopyWithImpl<$Res>;

  $Res call({UniqueId id, Name name, EntityDescription description, ItemCode code, int value, String imageURL});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object code = freezed,
    Object value = freezed,
    Object imageURL = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as Name,
      description: description == freezed ? _value.description : description as EntityDescription,
      code: code == freezed ? _value.code : code as ItemCode,
      value: value == freezed ? _value.value : value as int,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
    ));
  }
}

/// @nodoc
abstract class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) = __$ItemCopyWithImpl<$Res>;

  @override
  $Res call({UniqueId id, Name name, EntityDescription description, ItemCode code, int value, String imageURL});
}

/// @nodoc
class __$ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res> implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(_Item _value, $Res Function(_Item) _then) : super(_value, (v) => _then(v as _Item));

  @override
  _Item get _value => super._value as _Item;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object code = freezed,
    Object value = freezed,
    Object imageURL = freezed,
  }) {
    return _then(_Item(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as Name,
      description: description == freezed ? _value.description : description as EntityDescription,
      code: code == freezed ? _value.code : code as ItemCode,
      value: value == freezed ? _value.value : value as int,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
    ));
  }
}

/// @nodoc
class _$_Item extends _Item {
  const _$_Item({@required this.id, @required this.name, @required this.description, @required this.code, @required this.value, @required this.imageURL})
      : assert(id != null),
        assert(name != null),
        assert(description != null),
        assert(code != null),
        assert(value != null),
        assert(imageURL != null),
        super._();

  @override
  final UniqueId id;
  @override
  final Name name;
  @override
  final EntityDescription description;
  @override
  final ItemCode code;
  @override // The value in coins it's an int
// it should be a double in case we go for direct sales
  final int value;
  @override
  final String imageURL;

  @override
  String toString() {
    return 'Item(id: $id, name: $name, description: $description, code: $code, value: $value, imageURL: $imageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Item &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) || const DeepCollectionEquality().equals(other.description, description)) &&
            (identical(other.code, code) || const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.imageURL, imageURL) || const DeepCollectionEquality().equals(other.imageURL, imageURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(imageURL);

  @JsonKey(ignore: true)
  @override
  _$ItemCopyWith<_Item> get copyWith => __$ItemCopyWithImpl<_Item>(this, _$identity);
}

abstract class _Item extends Item {
  const _Item._() : super._();

  const factory _Item({@required UniqueId id, @required Name name, @required EntityDescription description, @required ItemCode code, @required int value, @required String imageURL}) = _$_Item;

  @override
  UniqueId get id;

  @override
  Name get name;

  @override
  EntityDescription get description;

  @override
  ItemCode get code;

  @override // The value in coins it's an int
// it should be a double in case we go for direct sales
  int get value;
  @override
  String get imageURL;
  @override
  @JsonKey(ignore: true)
  _$ItemCopyWith<_Item> get copyWith;
}
