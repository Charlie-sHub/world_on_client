// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'primitive_reward.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PrimitiveRewardTearOff {
  const _$PrimitiveRewardTearOff();

  _PrimitiveReward call({required UniqueId id, required String name, required String description, required File? imageFile}) {
    return _PrimitiveReward(
      id: id,
      name: name,
      description: description,
      imageFile: imageFile,
    );
  }
}

/// @nodoc
const $PrimitiveReward = _$PrimitiveRewardTearOff();

/// @nodoc
mixin _$PrimitiveReward {
  UniqueId get id => throw _privateConstructorUsedError;

  String get name => throw _privateConstructorUsedError;

  String get description => throw _privateConstructorUsedError;

  File? get imageFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrimitiveRewardCopyWith<PrimitiveReward> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrimitiveRewardCopyWith<$Res> {
  factory $PrimitiveRewardCopyWith(PrimitiveReward value, $Res Function(PrimitiveReward) then) = _$PrimitiveRewardCopyWithImpl<$Res>;

  $Res call({UniqueId id, String name, String description, File? imageFile});
}

/// @nodoc
class _$PrimitiveRewardCopyWithImpl<$Res> implements $PrimitiveRewardCopyWith<$Res> {
  _$PrimitiveRewardCopyWithImpl(this._value, this._then);

  final PrimitiveReward _value;
  // ignore: unused_field
  final $Res Function(PrimitiveReward) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
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
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageFile: imageFile == freezed
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc
abstract class _$PrimitiveRewardCopyWith<$Res> implements $PrimitiveRewardCopyWith<$Res> {
  factory _$PrimitiveRewardCopyWith(_PrimitiveReward value, $Res Function(_PrimitiveReward) then) = __$PrimitiveRewardCopyWithImpl<$Res>;

  @override
  $Res call({UniqueId id, String name, String description, File? imageFile});
}

/// @nodoc
class __$PrimitiveRewardCopyWithImpl<$Res> extends _$PrimitiveRewardCopyWithImpl<$Res> implements _$PrimitiveRewardCopyWith<$Res> {
  __$PrimitiveRewardCopyWithImpl(_PrimitiveReward _value, $Res Function(_PrimitiveReward) _then) : super(_value, (v) => _then(v as _PrimitiveReward));

  @override
  _PrimitiveReward get _value => super._value as _PrimitiveReward;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageFile = freezed,
  }) {
    return _then(_PrimitiveReward(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageFile: imageFile == freezed
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc
class _$_PrimitiveReward extends _PrimitiveReward {
  const _$_PrimitiveReward({required this.id, required this.name, required this.description, required this.imageFile}) : super._();

  @override
  final UniqueId id;
  @override
  final String name;
  @override
  final String description;
  @override
  final File? imageFile;

  @override
  String toString() {
    return 'PrimitiveReward(id: $id, name: $name, description: $description, imageFile: $imageFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PrimitiveReward &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) || const DeepCollectionEquality().equals(other.description, description)) &&
            (identical(other.imageFile, imageFile) || const DeepCollectionEquality().equals(other.imageFile, imageFile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(imageFile);

  @JsonKey(ignore: true)
  @override
  _$PrimitiveRewardCopyWith<_PrimitiveReward> get copyWith => __$PrimitiveRewardCopyWithImpl<_PrimitiveReward>(this, _$identity);
}

abstract class _PrimitiveReward extends PrimitiveReward {
  const factory _PrimitiveReward({required UniqueId id, required String name, required String description, required File? imageFile}) = _$_PrimitiveReward;

  const _PrimitiveReward._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;

  @override
  String get name => throw _privateConstructorUsedError;

  @override
  String get description => throw _privateConstructorUsedError;

  @override
  File? get imageFile => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$PrimitiveRewardCopyWith<_PrimitiveReward> get copyWith => throw _privateConstructorUsedError;
}
