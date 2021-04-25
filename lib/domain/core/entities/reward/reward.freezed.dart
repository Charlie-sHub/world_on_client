// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'reward.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RewardTearOff {
  const _$RewardTearOff();

  _Reward call({required UniqueId id, required Name name, required EntityDescription description, required String imageURL, required Option<File> imageFile}) {
    return _Reward(
      id: id,
      name: name,
      description: description,
      imageURL: imageURL,
      imageFile: imageFile,
    );
  }
}

/// @nodoc
const $Reward = _$RewardTearOff();

/// @nodoc
mixin _$Reward {
  UniqueId get id => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  EntityDescription get description => throw _privateConstructorUsedError;
  String get imageURL => throw _privateConstructorUsedError;
  Option<File> get imageFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RewardCopyWith<Reward> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardCopyWith<$Res> {
  factory $RewardCopyWith(Reward value, $Res Function(Reward) then) = _$RewardCopyWithImpl<$Res>;

  $Res call({UniqueId id, Name name, EntityDescription description, String imageURL, Option<File> imageFile});
}

/// @nodoc
class _$RewardCopyWithImpl<$Res> implements $RewardCopyWith<$Res> {
  _$RewardCopyWithImpl(this._value, this._then);

  final Reward _value;
  // ignore: unused_field
  final $Res Function(Reward) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageURL = freezed,
    Object? imageFile = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as EntityDescription,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      imageFile: imageFile == freezed
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as Option<File>,
    ));
  }
}

/// @nodoc
abstract class _$RewardCopyWith<$Res> implements $RewardCopyWith<$Res> {
  factory _$RewardCopyWith(_Reward value, $Res Function(_Reward) then) = __$RewardCopyWithImpl<$Res>;

  @override
  $Res call({UniqueId id, Name name, EntityDescription description, String imageURL, Option<File> imageFile});
}

/// @nodoc
class __$RewardCopyWithImpl<$Res> extends _$RewardCopyWithImpl<$Res> implements _$RewardCopyWith<$Res> {
  __$RewardCopyWithImpl(_Reward _value, $Res Function(_Reward) _then) : super(_value, (v) => _then(v as _Reward));

  @override
  _Reward get _value => super._value as _Reward;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageURL = freezed,
    Object? imageFile = freezed,
  }) {
    return _then(_Reward(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as EntityDescription,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      imageFile: imageFile == freezed
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as Option<File>,
    ));
  }
}

/// @nodoc
class _$_Reward extends _Reward {
  const _$_Reward({required this.id, required this.name, required this.description, required this.imageURL, required this.imageFile}) : super._();

  @override
  final UniqueId id;
  @override
  final Name name;
  @override
  final EntityDescription description;
  @override
  final String imageURL;
  @override
  final Option<File> imageFile;

  @override
  String toString() {
    return 'Reward(id: $id, name: $name, description: $description, imageURL: $imageURL, imageFile: $imageFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Reward &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) || const DeepCollectionEquality().equals(other.description, description)) &&
            (identical(other.imageURL, imageURL) || const DeepCollectionEquality().equals(other.imageURL, imageURL)) &&
            (identical(other.imageFile, imageFile) || const DeepCollectionEquality().equals(other.imageFile, imageFile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(imageURL) ^
      const DeepCollectionEquality().hash(imageFile);

  @JsonKey(ignore: true)
  @override
  _$RewardCopyWith<_Reward> get copyWith => __$RewardCopyWithImpl<_Reward>(this, _$identity);
}

abstract class _Reward extends Reward {
  const factory _Reward({required UniqueId id, required Name name, required EntityDescription description, required String imageURL, required Option<File> imageFile}) = _$_Reward;

  const _Reward._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;

  @override
  Name get name => throw _privateConstructorUsedError;

  @override
  EntityDescription get description => throw _privateConstructorUsedError;

  @override
  String get imageURL => throw _privateConstructorUsedError;
  @override
  Option<File> get imageFile => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RewardCopyWith<_Reward> get copyWith => throw _privateConstructorUsedError;
}
