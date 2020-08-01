// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'reward.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RewardTearOff {
  const _$RewardTearOff();

// ignore: unused_element
  _Reward call({int id, @required Name name, @required EntityDescription description, @required String imageURL, @required Option<File> imageFile}) {
    return _Reward(
      id: id,
      name: name,
      description: description,
      imageURL: imageURL,
      imageFile: imageFile,
    );
  }
}

// ignore: unused_element
const $Reward = _$RewardTearOff();

mixin _$Reward {
  int get id;
  Name get name;
  EntityDescription get description;
  String get imageURL;

  Option<File> get imageFile;

  $RewardCopyWith<Reward> get copyWith;
}

abstract class $RewardCopyWith<$Res> {
  factory $RewardCopyWith(Reward value, $Res Function(Reward) then) =
  _$RewardCopyWithImpl<$Res>;

  $Res call({int id,
    Name name,
    EntityDescription description,
    String imageURL,
    Option<File> imageFile});
}

class _$RewardCopyWithImpl<$Res> implements $RewardCopyWith<$Res> {
  _$RewardCopyWithImpl(this._value, this._then);

  final Reward _value;
  // ignore: unused_field
  final $Res Function(Reward) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object imageURL = freezed,
    Object imageFile = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as Name,
      description: description == freezed
        ? _value.description
        : description as EntityDescription,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      imageFile:
      imageFile == freezed ? _value.imageFile : imageFile as Option<File>,
    ));
  }
}

abstract class _$RewardCopyWith<$Res> implements $RewardCopyWith<$Res> {
  factory _$RewardCopyWith(_Reward value, $Res Function(_Reward) then) =
  __$RewardCopyWithImpl<$Res>;
  @override
  $Res call({int id,
    Name name,
    EntityDescription description,
    String imageURL,
    Option<File> imageFile});
}

class __$RewardCopyWithImpl<$Res> extends _$RewardCopyWithImpl<$Res>
  implements _$RewardCopyWith<$Res> {
  __$RewardCopyWithImpl(_Reward _value, $Res Function(_Reward) _then)
    : super(_value, (v) => _then(v as _Reward));

  @override
  _Reward get _value => super._value as _Reward;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object imageURL = freezed,
    Object imageFile = freezed,
  }) {
    return _then(_Reward(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as Name,
      description: description == freezed
        ? _value.description
        : description as EntityDescription,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      imageFile:
      imageFile == freezed ? _value.imageFile : imageFile as Option<File>,
    ));
  }
}

class _$_Reward extends _Reward {
  const _$_Reward({this.id,
    @required this.name,
    @required this.description,
    @required this.imageURL,
    @required this.imageFile})
      : assert(name != null),
        assert(description != null),
        assert(imageURL != null),
      assert(imageFile != null),
        super._();

  @override
  final int id;
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
          (identical(other.id, id) ||
            const DeepCollectionEquality().equals(other.id, id)) &&
          (identical(other.name, name) ||
            const DeepCollectionEquality().equals(other.name, name)) &&
          (identical(other.description, description) ||
            const DeepCollectionEquality()
              .equals(other.description, description)) &&
          (identical(other.imageURL, imageURL) ||
            const DeepCollectionEquality()
              .equals(other.imageURL, imageURL)) &&
          (identical(other.imageFile, imageFile) ||
            const DeepCollectionEquality()
              .equals(other.imageFile, imageFile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(imageURL) ^
      const DeepCollectionEquality().hash(imageFile);

  @override
  _$RewardCopyWith<_Reward> get copyWith =>
    __$RewardCopyWithImpl<_Reward>(this, _$identity);
}

abstract class _Reward extends Reward {
  const _Reward._() : super._();

  const factory _Reward({int id,
    @required Name name,
    @required EntityDescription description,
    @required String imageURL,
    @required Option<File> imageFile}) = _$_Reward;

  @override
  int get id;
  @override
  Name get name;
  @override
  EntityDescription get description;
  @override
  String get imageURL;
  @override
  Option<File> get imageFile;
  @override
  _$RewardCopyWith<_Reward> get copyWith;
}
