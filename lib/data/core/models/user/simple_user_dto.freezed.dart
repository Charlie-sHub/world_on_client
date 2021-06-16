// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'simple_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SimpleUserDto _$SimpleUserDtoFromJson(Map<String, dynamic> json) {
  return _SimpleUserDto.fromJson(json);
}

/// @nodoc
class _$SimpleUserDtoTearOff {
  const _$SimpleUserDtoTearOff();

  _SimpleUserDto call(
      {required String id,
      required String name,
      required String username,
      required String imageURL,
      required int level,
      required int experiencePoints,
      required bool adminPowers,
      required int followersAmount}) {
    return _SimpleUserDto(
      id: id,
      name: name,
      username: username,
      imageURL: imageURL,
      level: level,
      experiencePoints: experiencePoints,
      adminPowers: adminPowers,
      followersAmount: followersAmount,
    );
  }

  SimpleUserDto fromJson(Map<String, Object> json) {
    return SimpleUserDto.fromJson(json);
  }
}

/// @nodoc
const $SimpleUserDto = _$SimpleUserDtoTearOff();

/// @nodoc
mixin _$SimpleUserDto {
  String get id => throw _privateConstructorUsedError;

  String get name => throw _privateConstructorUsedError;

  String get username => throw _privateConstructorUsedError;

  String get imageURL => throw _privateConstructorUsedError;

  int get level => throw _privateConstructorUsedError;

  int get experiencePoints => throw _privateConstructorUsedError;

  bool get adminPowers => throw _privateConstructorUsedError;

  int get followersAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimpleUserDtoCopyWith<SimpleUserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleUserDtoCopyWith<$Res> {
  factory $SimpleUserDtoCopyWith(SimpleUserDto value, $Res Function(SimpleUserDto) then) = _$SimpleUserDtoCopyWithImpl<$Res>;

  $Res call({String id, String name, String username, String imageURL, int level, int experiencePoints, bool adminPowers, int followersAmount});
}

/// @nodoc
class _$SimpleUserDtoCopyWithImpl<$Res> implements $SimpleUserDtoCopyWith<$Res> {
  _$SimpleUserDtoCopyWithImpl(this._value, this._then);

  final SimpleUserDto _value;

  // ignore: unused_field
  final $Res Function(SimpleUserDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? imageURL = freezed,
    Object? level = freezed,
    Object? experiencePoints = freezed,
    Object? adminPowers = freezed,
    Object? followersAmount = freezed,
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
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      experiencePoints: experiencePoints == freezed
          ? _value.experiencePoints
          : experiencePoints // ignore: cast_nullable_to_non_nullable
              as int,
      adminPowers: adminPowers == freezed
          ? _value.adminPowers
          : adminPowers // ignore: cast_nullable_to_non_nullable
              as bool,
      followersAmount: followersAmount == freezed
          ? _value.followersAmount
          : followersAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SimpleUserDtoCopyWith<$Res> implements $SimpleUserDtoCopyWith<$Res> {
  factory _$SimpleUserDtoCopyWith(_SimpleUserDto value, $Res Function(_SimpleUserDto) then) = __$SimpleUserDtoCopyWithImpl<$Res>;

  @override
  $Res call({String id, String name, String username, String imageURL, int level, int experiencePoints, bool adminPowers, int followersAmount});
}

/// @nodoc
class __$SimpleUserDtoCopyWithImpl<$Res> extends _$SimpleUserDtoCopyWithImpl<$Res> implements _$SimpleUserDtoCopyWith<$Res> {
  __$SimpleUserDtoCopyWithImpl(_SimpleUserDto _value, $Res Function(_SimpleUserDto) _then) : super(_value, (v) => _then(v as _SimpleUserDto));

  @override
  _SimpleUserDto get _value => super._value as _SimpleUserDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? imageURL = freezed,
    Object? level = freezed,
    Object? experiencePoints = freezed,
    Object? adminPowers = freezed,
    Object? followersAmount = freezed,
  }) {
    return _then(_SimpleUserDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      experiencePoints: experiencePoints == freezed
          ? _value.experiencePoints
          : experiencePoints // ignore: cast_nullable_to_non_nullable
              as int,
      adminPowers: adminPowers == freezed
          ? _value.adminPowers
          : adminPowers // ignore: cast_nullable_to_non_nullable
              as bool,
      followersAmount: followersAmount == freezed
          ? _value.followersAmount
          : followersAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SimpleUserDto extends _SimpleUserDto {
  const _$_SimpleUserDto(
      {required this.id,
      required this.name,
      required this.username,
      required this.imageURL,
      required this.level,
      required this.experiencePoints,
      required this.adminPowers,
      required this.followersAmount})
      : super._();

  factory _$_SimpleUserDto.fromJson(Map<String, dynamic> json) => _$_$_SimpleUserDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String username;
  @override
  final String imageURL;
  @override
  final int level;
  @override
  final int experiencePoints;
  @override
  final bool adminPowers;
  @override
  final int followersAmount;

  @override
  String toString() {
    return 'SimpleUserDto(id: $id, name: $name, username: $username, imageURL: $imageURL, level: $level, experiencePoints: $experiencePoints, adminPowers: $adminPowers, followersAmount: $followersAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SimpleUserDto &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.username, username) || const DeepCollectionEquality().equals(other.username, username)) &&
            (identical(other.imageURL, imageURL) || const DeepCollectionEquality().equals(other.imageURL, imageURL)) &&
            (identical(other.level, level) || const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.experiencePoints, experiencePoints) || const DeepCollectionEquality().equals(other.experiencePoints, experiencePoints)) &&
            (identical(other.adminPowers, adminPowers) || const DeepCollectionEquality().equals(other.adminPowers, adminPowers)) &&
            (identical(other.followersAmount, followersAmount) || const DeepCollectionEquality().equals(other.followersAmount, followersAmount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(imageURL) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(experiencePoints) ^
      const DeepCollectionEquality().hash(adminPowers) ^
      const DeepCollectionEquality().hash(followersAmount);

  @JsonKey(ignore: true)
  @override
  _$SimpleUserDtoCopyWith<_SimpleUserDto> get copyWith => __$SimpleUserDtoCopyWithImpl<_SimpleUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SimpleUserDtoToJson(this);
  }
}

abstract class _SimpleUserDto extends SimpleUserDto {
  const factory _SimpleUserDto(
      {required String id,
      required String name,
      required String username,
      required String imageURL,
      required int level,
      required int experiencePoints,
      required bool adminPowers,
      required int followersAmount}) = _$_SimpleUserDto;

  const _SimpleUserDto._() : super._();

  factory _SimpleUserDto.fromJson(Map<String, dynamic> json) = _$_SimpleUserDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;

  @override
  String get name => throw _privateConstructorUsedError;

  @override
  String get username => throw _privateConstructorUsedError;

  @override
  String get imageURL => throw _privateConstructorUsedError;

  @override
  int get level => throw _privateConstructorUsedError;

  @override
  int get experiencePoints => throw _privateConstructorUsedError;

  @override
  bool get adminPowers => throw _privateConstructorUsedError;

  @override
  int get followersAmount => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$SimpleUserDtoCopyWith<_SimpleUserDto> get copyWith => throw _privateConstructorUsedError;
}
