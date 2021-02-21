// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ItemDto _$ItemDtoFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
class _$ItemDtoTearOff {
  const _$ItemDtoTearOff();

// ignore: unused_element
  _Item call({@required String id,
    @required String name,
    @required String description,
    @required ItemCode code,
    @required int value,
    @required int timeLimitInDays,
    @required String imageURL,
    @required @ServerTimestampConverter() DateTime boughtDate}) {
    return _Item(
      id: id,
      name: name,
      description: description,
      code: code,
      value: value,
      timeLimitInDays: timeLimitInDays,
      imageURL: imageURL,
      boughtDate: boughtDate,
    );
  }

// ignore: unused_element
  ItemDto fromJson(Map<String, Object> json) {
    return ItemDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ItemDto = _$ItemDtoTearOff();

/// @nodoc
mixin _$ItemDto {
  String get id;
  String get name;
  String get description;
  ItemCode get code;
  int get value;
  int get timeLimitInDays;
  String get imageURL;
  @ServerTimestampConverter()
  DateTime get boughtDate;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ItemDtoCopyWith<ItemDto> get copyWith;
}

/// @nodoc
abstract class $ItemDtoCopyWith<$Res> {
  factory $ItemDtoCopyWith(ItemDto value, $Res Function(ItemDto) then) =
  _$ItemDtoCopyWithImpl<$Res>;
  
  $Res call({String id,
    String name,
    String description,
    ItemCode code,
    int value,
    int timeLimitInDays,
    String imageURL,
    @ServerTimestampConverter() DateTime boughtDate});
}

/// @nodoc
class _$ItemDtoCopyWithImpl<$Res> implements $ItemDtoCopyWith<$Res> {
  _$ItemDtoCopyWithImpl(this._value, this._then);

  final ItemDto _value;
  // ignore: unused_field
  final $Res Function(ItemDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object code = freezed,
    Object value = freezed,
    Object timeLimitInDays = freezed,
    Object imageURL = freezed,
    Object boughtDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
      description == freezed ? _value.description : description as String,
      code: code == freezed ? _value.code : code as ItemCode,
      value: value == freezed ? _value.value : value as int,
      timeLimitInDays: timeLimitInDays == freezed
        ? _value.timeLimitInDays
        : timeLimitInDays as int,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      boughtDate:
      boughtDate == freezed ? _value.boughtDate : boughtDate as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$ItemCopyWith<$Res> implements $ItemDtoCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) =
  __$ItemCopyWithImpl<$Res>;
  
  @override
  $Res call({String id,
    String name,
    String description,
    ItemCode code,
    int value,
    int timeLimitInDays,
    String imageURL,
    @ServerTimestampConverter() DateTime boughtDate});
}

/// @nodoc
class __$ItemCopyWithImpl<$Res> extends _$ItemDtoCopyWithImpl<$Res>
  implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(_Item _value, $Res Function(_Item) _then)
    : super(_value, (v) => _then(v as _Item));
  
  @override
  _Item get _value => super._value as _Item;
  
  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object code = freezed,
    Object value = freezed,
    Object timeLimitInDays = freezed,
    Object imageURL = freezed,
    Object boughtDate = freezed,
  }) {
    return _then(_Item(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
      description == freezed ? _value.description : description as String,
      code: code == freezed ? _value.code : code as ItemCode,
      value: value == freezed ? _value.value : value as int,
      timeLimitInDays: timeLimitInDays == freezed
        ? _value.timeLimitInDays
        : timeLimitInDays as int,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      boughtDate:
      boughtDate == freezed ? _value.boughtDate : boughtDate as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc class _$_Item extends _Item {
  const _$_Item({@required this.id,
    @required this.name,
    @required this.description,
    @required this.code,
    @required this.value,
    @required this.timeLimitInDays,
    @required this.imageURL,
    @required @ServerTimestampConverter() this.boughtDate})
    : assert(id != null),
      assert(name != null),
      assert(description != null),
      assert(code != null),
      assert(value != null),
      assert(timeLimitInDays != null),
      assert(imageURL != null),
      assert(boughtDate != null),
      super._();
  
  factory _$_Item.fromJson(Map<String, dynamic> json) =>
    _$_$_ItemFromJson(json);
  
  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final ItemCode code;
  @override
  final int value;
  @override
  final int timeLimitInDays;
  @override
  final String imageURL;
  @override
  @ServerTimestampConverter()
  final DateTime boughtDate;

@override
  String toString() {
    return 'ItemDto(id: $id, name: $name, description: $description, code: $code, value: $value, timeLimitInDays: $timeLimitInDays, imageURL: $imageURL, boughtDate: $boughtDate)';
  }
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _Item &&
        (identical(other.id, id) ||
          const DeepCollectionEquality().equals(other.id, id)) &&
        (identical(other.name, name) ||
          const DeepCollectionEquality().equals(other.name, name)) &&
        (identical(other.description, description) ||
          const DeepCollectionEquality()
            .equals(other.description, description)) &&
        (identical(other.code, code) ||
          const DeepCollectionEquality().equals(other.code, code)) &&
        (identical(other.value, value) ||
          const DeepCollectionEquality().equals(other.value, value)) &&
        (identical(other.timeLimitInDays, timeLimitInDays) ||
          const DeepCollectionEquality()
            .equals(other.timeLimitInDays, timeLimitInDays)) &&
        (identical(other.imageURL, imageURL) ||
          const DeepCollectionEquality()
            .equals(other.imageURL, imageURL)) &&
        (identical(other.boughtDate, boughtDate) ||
          const DeepCollectionEquality()
            .equals(other.boughtDate, boughtDate)));
  }
  
  @override
  int get hashCode =>
    runtimeType.hashCode ^
    const DeepCollectionEquality().hash(id) ^
    const DeepCollectionEquality().hash(name) ^
    const DeepCollectionEquality().hash(description) ^
    const DeepCollectionEquality().hash(code) ^
    const DeepCollectionEquality().hash(value) ^
    const DeepCollectionEquality().hash(timeLimitInDays) ^
    const DeepCollectionEquality().hash(imageURL) ^
    const DeepCollectionEquality().hash(boughtDate);
  
  @JsonKey(ignore: true)
  @override
  _$ItemCopyWith<_Item> get copyWith =>
    __$ItemCopyWithImpl<_Item>(this, _$identity);
  
  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemToJson(this);
  }
}

abstract class _Item extends ItemDto {
  const _Item._() : super._();
  
  const factory _Item({@required String id,
    @required String name,
    @required String description,
    @required ItemCode code,
    @required int value,
    @required int timeLimitInDays,
    @required String imageURL,
    @required @ServerTimestampConverter() DateTime boughtDate}) = _$_Item;
  
  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;
  
  @override
  String get id;
  
  @override
  String get name;
  
  @override
  String get description;
  
  @override
  ItemCode get code;
  @override
  int get value;
  @override
  int get timeLimitInDays;
  @override
  String get imageURL;
  @override
  @ServerTimestampConverter()
  DateTime get boughtDate;
  @override
  @JsonKey(ignore: true)
  _$ItemCopyWith<_Item> get copyWith;
}
