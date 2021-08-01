// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemDto _$ItemDtoFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
class _$ItemDtoTearOff {
  const _$ItemDtoTearOff();

  _Item call(
      {required String id,
      required String name,
      required String description,
      required ItemCode code,
      required int value,
      required int timeLimitInDays,
      required String imageURL,
      @ServerTimestampConverter() required DateTime boughtDate}) {
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

  ItemDto fromJson(Map<String, Object> json) {
    return ItemDto.fromJson(json);
  }
}

/// @nodoc
const $ItemDto = _$ItemDtoTearOff();

/// @nodoc
mixin _$ItemDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  ItemCode get code => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;
  int get timeLimitInDays => throw _privateConstructorUsedError;
  String get imageURL => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  DateTime get boughtDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemDtoCopyWith<ItemDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDtoCopyWith<$Res> {
  factory $ItemDtoCopyWith(ItemDto value, $Res Function(ItemDto) then) = _$ItemDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
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
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? code = freezed,
    Object? value = freezed,
    Object? timeLimitInDays = freezed,
    Object? imageURL = freezed,
    Object? boughtDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ItemCode,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      timeLimitInDays: timeLimitInDays == freezed
          ? _value.timeLimitInDays
          : timeLimitInDays // ignore: cast_nullable_to_non_nullable
              as int,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      boughtDate: boughtDate == freezed
          ? _value.boughtDate
          : boughtDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$ItemCopyWith<$Res> implements $ItemDtoCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) = __$ItemCopyWithImpl<$Res>;

  @override
  $Res call(
      {String id,
      String name,
      String description,
      ItemCode code,
      int value,
      int timeLimitInDays,
      String imageURL,
      @ServerTimestampConverter() DateTime boughtDate});
}

/// @nodoc
class __$ItemCopyWithImpl<$Res> extends _$ItemDtoCopyWithImpl<$Res> implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(_Item _value, $Res Function(_Item) _then) : super(_value, (v) => _then(v as _Item));

  @override
  _Item get _value => super._value as _Item;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? code = freezed,
    Object? value = freezed,
    Object? timeLimitInDays = freezed,
    Object? imageURL = freezed,
    Object? boughtDate = freezed,
  }) {
    return _then(_Item(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ItemCode,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      timeLimitInDays: timeLimitInDays == freezed
          ? _value.timeLimitInDays
          : timeLimitInDays // ignore: cast_nullable_to_non_nullable
              as int,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      boughtDate: boughtDate == freezed
          ? _value.boughtDate
          : boughtDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Item extends _Item {
  const _$_Item(
      {required this.id,
      required this.name,
      required this.description,
      required this.code,
      required this.value,
      required this.timeLimitInDays,
      required this.imageURL,
      @ServerTimestampConverter() required this.boughtDate})
      : super._();

  factory _$_Item.fromJson(Map<String, dynamic> json) => _$_$_ItemFromJson(json);

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
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(other.description, description)) &&
            (identical(other.code, code) || const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.timeLimitInDays, timeLimitInDays) ||
                const DeepCollectionEquality().equals(other.timeLimitInDays, timeLimitInDays)) &&
            (identical(other.imageURL, imageURL) ||
                const DeepCollectionEquality().equals(other.imageURL, imageURL)) &&
            (identical(other.boughtDate, boughtDate) ||
                const DeepCollectionEquality().equals(other.boughtDate, boughtDate)));
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
  _$ItemCopyWith<_Item> get copyWith => __$ItemCopyWithImpl<_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemToJson(this);
  }
}

abstract class _Item extends ItemDto {
  const factory _Item(
      {required String id,
      required String name,
      required String description,
      required ItemCode code,
      required int value,
      required int timeLimitInDays,
      required String imageURL,
      @ServerTimestampConverter() required DateTime boughtDate}) = _$_Item;
  const _Item._() : super._();

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  ItemCode get code => throw _privateConstructorUsedError;
  @override
  int get value => throw _privateConstructorUsedError;
  @override
  int get timeLimitInDays => throw _privateConstructorUsedError;
  @override
  String get imageURL => throw _privateConstructorUsedError;
  @override
  @ServerTimestampConverter()
  DateTime get boughtDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemCopyWith<_Item> get copyWith => throw _privateConstructorUsedError;
}
