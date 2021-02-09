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
  _Item call(
      {@required UniqueId id,
      @required Name name,
      @required EntityDescription description,
      @required ItemCode code,
      @required int value,
      @required String imageURL,
      @required int timeLimitInDays,
      @required DateTime boughtDate}) {
    return _Item(
      id: id,
      name: name,
      description: description,
      code: code,
      value: value,
      imageURL: imageURL,
      timeLimitInDays: timeLimitInDays,
      boughtDate: boughtDate,
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

  ItemCode get code;

  int get value;

  String get imageURL;

  int get timeLimitInDays;

  DateTime get boughtDate;

  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) = _$ItemCopyWithImpl<$Res>;

  $Res call({UniqueId id, Name name, EntityDescription description, ItemCode code, int value, String imageURL, int timeLimitInDays, DateTime boughtDate});
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
    Object timeLimitInDays = freezed,
    Object boughtDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as Name,
      description: description == freezed ? _value.description : description as EntityDescription,
      code: code == freezed ? _value.code : code as ItemCode,
      value: value == freezed ? _value.value : value as int,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      timeLimitInDays: timeLimitInDays == freezed ? _value.timeLimitInDays : timeLimitInDays as int,
      boughtDate: boughtDate == freezed ? _value.boughtDate : boughtDate as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) = __$ItemCopyWithImpl<$Res>;

  @override
  $Res call({UniqueId id, Name name, EntityDescription description, ItemCode code, int value, String imageURL, int timeLimitInDays, DateTime boughtDate});
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
    Object timeLimitInDays = freezed,
    Object boughtDate = freezed,
  }) {
    return _then(_Item(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as Name,
      description: description == freezed ? _value.description : description as EntityDescription,
      code: code == freezed ? _value.code : code as ItemCode,
      value: value == freezed ? _value.value : value as int,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      timeLimitInDays: timeLimitInDays == freezed ? _value.timeLimitInDays : timeLimitInDays as int,
      boughtDate: boughtDate == freezed ? _value.boughtDate : boughtDate as DateTime,
    ));
  }
}

/// @nodoc
class _$_Item extends _Item {
  const _$_Item(
      {@required this.id,
      @required this.name,
      @required this.description,
      @required this.code,
      @required this.value,
      @required this.imageURL,
      @required this.timeLimitInDays,
      @required this.boughtDate})
      : assert(id != null),
        assert(name != null),
        assert(description != null),
        assert(code != null),
        assert(value != null),
        assert(imageURL != null),
        assert(timeLimitInDays != null),
        assert(boughtDate != null),
        super._();

  @override
  final UniqueId id;
  @override
  final Name name;
  @override
  final EntityDescription description;
  @override
  final ItemCode code;
  @override
  final int value;
  @override
  final String imageURL;
  @override
  final int timeLimitInDays;
  @override
  final DateTime boughtDate;

  @override
  String toString() {
    return 'Item(id: $id, name: $name, description: $description, code: $code, value: $value, imageURL: $imageURL, timeLimitInDays: $timeLimitInDays, boughtDate: $boughtDate)';
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
            (identical(other.imageURL, imageURL) || const DeepCollectionEquality().equals(other.imageURL, imageURL)) &&
            (identical(other.timeLimitInDays, timeLimitInDays) || const DeepCollectionEquality().equals(other.timeLimitInDays, timeLimitInDays)) &&
            (identical(other.boughtDate, boughtDate) || const DeepCollectionEquality().equals(other.boughtDate, boughtDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(imageURL) ^
      const DeepCollectionEquality().hash(timeLimitInDays) ^
      const DeepCollectionEquality().hash(boughtDate);

  @JsonKey(ignore: true)
  @override
  _$ItemCopyWith<_Item> get copyWith => __$ItemCopyWithImpl<_Item>(this, _$identity);
}

abstract class _Item extends Item {
  const _Item._() : super._();

  const factory _Item(
      {@required UniqueId id,
      @required Name name,
      @required EntityDescription description,
      @required ItemCode code,
      @required int value,
      @required String imageURL,
      @required int timeLimitInDays,
      @required DateTime boughtDate}) = _$_Item;

  @override
  UniqueId get id;

  @override
  Name get name;

  @override
  EntityDescription get description;

  @override
  ItemCode get code;

  @override
  int get value;

  @override
  String get imageURL;

  @override
  int get timeLimitInDays;

  @override
  DateTime get boughtDate;

  @override
  @JsonKey(ignore: true)
  _$ItemCopyWith<_Item> get copyWith;
}
