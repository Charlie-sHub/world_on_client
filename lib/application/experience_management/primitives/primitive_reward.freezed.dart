// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'primitive_reward.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PrimitiveRewardTearOff {
  const _$PrimitiveRewardTearOff();

// ignore: unused_element
  _PrimitiveReward call({@required String name, @required String description, @required File imageFile}) {
    return _PrimitiveReward(
      name: name,
      description: description,
      imageFile: imageFile,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PrimitiveReward = _$PrimitiveRewardTearOff();

/// @nodoc
mixin _$PrimitiveReward {
  String get name;
  String get description;
  File get imageFile;

  $PrimitiveRewardCopyWith<PrimitiveReward> get copyWith;
}

/// @nodoc
abstract class $PrimitiveRewardCopyWith<$Res> {
  factory $PrimitiveRewardCopyWith(PrimitiveReward value, $Res Function(PrimitiveReward) then) =
  _$PrimitiveRewardCopyWithImpl<$Res>;
  
  $Res call({String name, String description, File imageFile});
}

/// @nodoc
class _$PrimitiveRewardCopyWithImpl<$Res>
  implements $PrimitiveRewardCopyWith<$Res> {
  _$PrimitiveRewardCopyWithImpl(this._value, this._then);
  
  final PrimitiveReward _value;
  
  // ignore: unused_field
  final $Res Function(PrimitiveReward) _then;
  
  @override
  $Res call({
    Object name = freezed,
    Object description = freezed,
    Object imageFile = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      description:
      description == freezed ? _value.description : description as String,
      imageFile: imageFile == freezed ? _value.imageFile : imageFile as File,
    ));
  }
}

/// @nodoc
abstract class _$PrimitiveRewardCopyWith<$Res>
  implements $PrimitiveRewardCopyWith<$Res> {
  factory _$PrimitiveRewardCopyWith(_PrimitiveReward value, $Res Function(_PrimitiveReward) then) =
  __$PrimitiveRewardCopyWithImpl<$Res>;
  
  @override
  $Res call({String name, String description, File imageFile});
}

/// @nodoc
class __$PrimitiveRewardCopyWithImpl<$Res> extends _$PrimitiveRewardCopyWithImpl<$Res>
  implements _$PrimitiveRewardCopyWith<$Res> {
  __$PrimitiveRewardCopyWithImpl(_PrimitiveReward _value, $Res Function(_PrimitiveReward) _then)
    : super(_value, (v) => _then(v as _PrimitiveReward));
  
  @override
  _PrimitiveReward get _value => super._value as _PrimitiveReward;
  
  @override
  $Res call({
    Object name = freezed,
    Object description = freezed,
    Object imageFile = freezed,
  }) {
    return _then(_PrimitiveReward(
      name: name == freezed ? _value.name : name as String,
      description:
      description == freezed ? _value.description : description as String,
      imageFile: imageFile == freezed ? _value.imageFile : imageFile as File,
    ));
  }
}

/// @nodoc
class _$_PrimitiveReward extends _PrimitiveReward {
  const _$_PrimitiveReward({@required this.name,
    @required this.description,
    @required this.imageFile})
    : assert(name != null),
      assert(description != null),
      assert(imageFile != null),
      super._();
  
  @override
  final String name;
  @override
  final String description;
  @override
  final File imageFile;

  @override
  String toString() {
    return 'PrimitiveReward(name: $name, description: $description, imageFile: $imageFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _PrimitiveReward &&
        (identical(other.name, name) ||
          const DeepCollectionEquality().equals(other.name, name)) &&
        (identical(other.description, description) ||
          const DeepCollectionEquality()
            .equals(other.description, description)) &&
        (identical(other.imageFile, imageFile) ||
          const DeepCollectionEquality()
            .equals(other.imageFile, imageFile)));
  }
  
  @override
  int get hashCode =>
    runtimeType.hashCode ^
    const DeepCollectionEquality().hash(name) ^
    const DeepCollectionEquality().hash(description) ^
    const DeepCollectionEquality().hash(imageFile);
  
  @override
  _$PrimitiveRewardCopyWith<_PrimitiveReward> get copyWith =>
    __$PrimitiveRewardCopyWithImpl<_PrimitiveReward>(this, _$identity);
}

abstract class _PrimitiveReward extends PrimitiveReward {
  const _PrimitiveReward._() : super._();
  
  const factory _PrimitiveReward({@required String name,
    @required String description,
    @required File imageFile}) = _$_PrimitiveReward;
  
  @override
  String get name;
  
  @override
  String get description;
  
  @override
  File get imageFile;
  
  @override
  _$PrimitiveRewardCopyWith<_PrimitiveReward> get copyWith;
}
