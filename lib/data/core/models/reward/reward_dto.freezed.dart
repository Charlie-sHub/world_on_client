// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'reward_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RewardDto _$RewardDtoFromJson(Map<String, dynamic> json) {
  return _RewardDto.fromJson(json);
}

/// @nodoc
class _$RewardDtoTearOff {
  const _$RewardDtoTearOff();

  _RewardDto call({required String id, required String name, required String description, required String imageURL}) {
    return _RewardDto(
      id: id,
      name: name,
      description: description,
      imageURL: imageURL,
    );
  }

  RewardDto fromJson(Map<String, Object> json) {
    return RewardDto.fromJson(json);
  }
}

/// @nodoc
const $RewardDto = _$RewardDtoTearOff();

/// @nodoc
mixin _$RewardDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RewardDtoCopyWith<RewardDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardDtoCopyWith<$Res> {
  factory $RewardDtoCopyWith(RewardDto value, $Res Function(RewardDto) then) = _$RewardDtoCopyWithImpl<$Res>;

  $Res call({String id, String name, String description, String imageURL});
}

/// @nodoc
class _$RewardDtoCopyWithImpl<$Res> implements $RewardDtoCopyWith<$Res> {
  _$RewardDtoCopyWithImpl(this._value, this._then);

  final RewardDto _value;
  // ignore: unused_field
  final $Res Function(RewardDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageURL = freezed,
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
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RewardDtoCopyWith<$Res> implements $RewardDtoCopyWith<$Res> {
  factory _$RewardDtoCopyWith(_RewardDto value, $Res Function(_RewardDto) then) = __$RewardDtoCopyWithImpl<$Res>;

  @override
  $Res call({String id, String name, String description, String imageURL});
}

/// @nodoc
class __$RewardDtoCopyWithImpl<$Res> extends _$RewardDtoCopyWithImpl<$Res> implements _$RewardDtoCopyWith<$Res> {
  __$RewardDtoCopyWithImpl(_RewardDto _value, $Res Function(_RewardDto) _then) : super(_value, (v) => _then(v as _RewardDto));

  @override
  _RewardDto get _value => super._value as _RewardDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageURL = freezed,
  }) {
    return _then(_RewardDto(
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
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RewardDto extends _RewardDto {
  const _$_RewardDto({required this.id, required this.name, required this.description, required this.imageURL}) : super._();

  factory _$_RewardDto.fromJson(Map<String, dynamic> json) => _$_$_RewardDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String imageURL;

  @override
  String toString() {
    return 'RewardDto(id: $id, name: $name, description: $description, imageURL: $imageURL)';
  }
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RewardDto &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) || const DeepCollectionEquality().equals(other.description, description)) &&
            (identical(other.imageURL, imageURL) || const DeepCollectionEquality().equals(other.imageURL, imageURL)));
  }
  
  @override
  int get hashCode =>
    runtimeType.hashCode ^
    const DeepCollectionEquality().hash(id) ^
    const DeepCollectionEquality().hash(name) ^
    const DeepCollectionEquality().hash(description) ^
    const DeepCollectionEquality().hash(imageURL);

  @JsonKey(ignore: true)
  @override
  _$RewardDtoCopyWith<_RewardDto> get copyWith => __$RewardDtoCopyWithImpl<_RewardDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RewardDtoToJson(this);
  }
}

abstract class _RewardDto extends RewardDto {
  const factory _RewardDto({required String id, required String name, required String description, required String imageURL}) = _$_RewardDto;

  const _RewardDto._() : super._();

  factory _RewardDto.fromJson(Map<String, dynamic> json) = _$_RewardDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;

  @override
  String get name => throw _privateConstructorUsedError;

  @override
  String get description => throw _privateConstructorUsedError;

  @override
  String get imageURL => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$RewardDtoCopyWith<_RewardDto> get copyWith => throw _privateConstructorUsedError;
}
