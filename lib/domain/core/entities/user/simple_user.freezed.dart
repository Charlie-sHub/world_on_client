// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'simple_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SimpleUserTearOff {
  const _$SimpleUserTearOff();

  _SimpleUser call(
      {required UniqueId id,
      required Name name,
      required Name username,
      required String imageURL,
      required UserLevel level,
      required ExperiencePoints experiencePoints,
      required bool adminPowers,
      required int followersAmount}) {
    return _SimpleUser(
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
}

/// @nodoc
const $SimpleUser = _$SimpleUserTearOff();

/// @nodoc
mixin _$SimpleUser {
  UniqueId get id => throw _privateConstructorUsedError;

  Name get name => throw _privateConstructorUsedError;

  Name get username => throw _privateConstructorUsedError;

  String get imageURL => throw _privateConstructorUsedError;

  UserLevel get level => throw _privateConstructorUsedError;

  ExperiencePoints get experiencePoints => throw _privateConstructorUsedError;

  bool get adminPowers => throw _privateConstructorUsedError;

  int get followersAmount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimpleUserCopyWith<SimpleUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleUserCopyWith<$Res> {
  factory $SimpleUserCopyWith(SimpleUser value, $Res Function(SimpleUser) then) = _$SimpleUserCopyWithImpl<$Res>;

  $Res call({UniqueId id, Name name, Name username, String imageURL, UserLevel level, ExperiencePoints experiencePoints, bool adminPowers, int followersAmount});
}

/// @nodoc
class _$SimpleUserCopyWithImpl<$Res> implements $SimpleUserCopyWith<$Res> {
  _$SimpleUserCopyWithImpl(this._value, this._then);

  final SimpleUser _value;

  // ignore: unused_field
  final $Res Function(SimpleUser) _then;

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
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Name,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as UserLevel,
      experiencePoints: experiencePoints == freezed
          ? _value.experiencePoints
          : experiencePoints // ignore: cast_nullable_to_non_nullable
              as ExperiencePoints,
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
abstract class _$SimpleUserCopyWith<$Res> implements $SimpleUserCopyWith<$Res> {
  factory _$SimpleUserCopyWith(_SimpleUser value, $Res Function(_SimpleUser) then) = __$SimpleUserCopyWithImpl<$Res>;

  @override
  $Res call({UniqueId id, Name name, Name username, String imageURL, UserLevel level, ExperiencePoints experiencePoints, bool adminPowers, int followersAmount});
}

/// @nodoc
class __$SimpleUserCopyWithImpl<$Res> extends _$SimpleUserCopyWithImpl<$Res> implements _$SimpleUserCopyWith<$Res> {
  __$SimpleUserCopyWithImpl(_SimpleUser _value, $Res Function(_SimpleUser) _then) : super(_value, (v) => _then(v as _SimpleUser));

  @override
  _SimpleUser get _value => super._value as _SimpleUser;

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
    return _then(_SimpleUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Name,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as UserLevel,
      experiencePoints: experiencePoints == freezed
          ? _value.experiencePoints
          : experiencePoints // ignore: cast_nullable_to_non_nullable
              as ExperiencePoints,
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

class _$_SimpleUser extends _SimpleUser {
  const _$_SimpleUser(
      {required this.id,
      required this.name,
      required this.username,
      required this.imageURL,
      required this.level,
      required this.experiencePoints,
      required this.adminPowers,
      required this.followersAmount})
      : super._();

  @override
  final UniqueId id;
  @override
  final Name name;
  @override
  final Name username;
  @override
  final String imageURL;
  @override
  final UserLevel level;
  @override
  final ExperiencePoints experiencePoints;
  @override
  final bool adminPowers;
  @override
  final int followersAmount;

  @override
  String toString() {
    return 'SimpleUser(id: $id, name: $name, username: $username, imageURL: $imageURL, level: $level, experiencePoints: $experiencePoints, adminPowers: $adminPowers, followersAmount: $followersAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SimpleUser &&
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
  _$SimpleUserCopyWith<_SimpleUser> get copyWith => __$SimpleUserCopyWithImpl<_SimpleUser>(this, _$identity);
}

abstract class _SimpleUser extends SimpleUser {
  const factory _SimpleUser(
      {required UniqueId id,
      required Name name,
      required Name username,
      required String imageURL,
      required UserLevel level,
      required ExperiencePoints experiencePoints,
      required bool adminPowers,
      required int followersAmount}) = _$_SimpleUser;

  const _SimpleUser._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;

  @override
  Name get name => throw _privateConstructorUsedError;

  @override
  Name get username => throw _privateConstructorUsedError;

  @override
  String get imageURL => throw _privateConstructorUsedError;

  @override
  UserLevel get level => throw _privateConstructorUsedError;

  @override
  ExperiencePoints get experiencePoints => throw _privateConstructorUsedError;

  @override
  bool get adminPowers => throw _privateConstructorUsedError;

  @override
  int get followersAmount => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$SimpleUserCopyWith<_SimpleUser> get copyWith => throw _privateConstructorUsedError;
}
