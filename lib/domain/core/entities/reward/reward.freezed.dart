// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'reward.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RewardTearOff {
  const _$RewardTearOff();

  _Reward call(
      {@required int id,
      @required Name name,
      @required EntityDescription description,
      @required String imageURL}) {
    return _Reward(
      id: id,
      name: name,
      description: description,
      imageURL: imageURL,
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

  $RewardCopyWith<Reward> get copyWith;
}

abstract class $RewardCopyWith<$Res> {
  factory $RewardCopyWith(Reward value, $Res Function(Reward) then) =
      _$RewardCopyWithImpl<$Res>;
  $Res call(
      {int id, Name name, EntityDescription description, String imageURL});
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
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as Name,
      description: description == freezed
          ? _value.description
          : description as EntityDescription,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
    ));
  }
}

abstract class _$RewardCopyWith<$Res> implements $RewardCopyWith<$Res> {
  factory _$RewardCopyWith(_Reward value, $Res Function(_Reward) then) =
      __$RewardCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, Name name, EntityDescription description, String imageURL});
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
  }) {
    return _then(_Reward(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as Name,
      description: description == freezed
          ? _value.description
          : description as EntityDescription,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
    ));
  }
}

class _$_Reward implements _Reward {
  const _$_Reward(
      {@required this.id,
      @required this.name,
      @required this.description,
      @required this.imageURL})
      : assert(id != null),
        assert(name != null),
        assert(description != null),
        assert(imageURL != null);

  @override
  final int id;
  @override
  final Name name;
  @override
  final EntityDescription description;
  @override
  final String imageURL;

  @override
  String toString() {
    return 'Reward(id: $id, name: $name, description: $description, imageURL: $imageURL)';
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
                    .equals(other.imageURL, imageURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(imageURL);

  @override
  _$RewardCopyWith<_Reward> get copyWith =>
      __$RewardCopyWithImpl<_Reward>(this, _$identity);
}

abstract class _Reward implements Reward {
  const factory _Reward(
      {@required int id,
      @required Name name,
      @required EntityDescription description,
      @required String imageURL}) = _$_Reward;

  @override
  int get id;
  @override
  Name get name;
  @override
  EntityDescription get description;
  @override
  String get imageURL;
  @override
  _$RewardCopyWith<_Reward> get copyWith;
}
