// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'primitive_reward.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PrimitiveRewardTearOff {
  const _$PrimitiveRewardTearOff();

  _PrimitiveReward call({@required String name, @required String description}) {
    return _PrimitiveReward(
      name: name,
      description: description,
    );
  }
}

// ignore: unused_element
const $PrimitiveReward = _$PrimitiveRewardTearOff();

mixin _$PrimitiveReward {
  String get name;
  String get description;

  $PrimitiveRewardCopyWith<PrimitiveReward> get copyWith;
}

abstract class $PrimitiveRewardCopyWith<$Res> {
  factory $PrimitiveRewardCopyWith(PrimitiveReward value, $Res Function(PrimitiveReward) then) = _$PrimitiveRewardCopyWithImpl<$Res>;
  $Res call({String name, String description});
}

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
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      description:
      description == freezed ? _value.description : description as String,
    ));
  }
}

abstract class _$PrimitiveRewardCopyWith<$Res>
  implements $PrimitiveRewardCopyWith<$Res> {
  factory _$PrimitiveRewardCopyWith(_PrimitiveReward value, $Res Function(_PrimitiveReward) then) =
  __$PrimitiveRewardCopyWithImpl<$Res>;
  @override
  $Res call({String name, String description});
}

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
  }) {
    return _then(_PrimitiveReward(
      name: name == freezed ? _value.name : name as String,
      description:
      description == freezed ? _value.description : description as String,
    ));
  }
}

class _$_PrimitiveReward extends _PrimitiveReward {
  const _$_PrimitiveReward({@required this.name, @required this.description})
      : assert(name != null),
        assert(description != null),
        super._();

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'PrimitiveReward(name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PrimitiveReward &&
          (identical(other.name, name) ||
            const DeepCollectionEquality().equals(other.name, name)) &&
          (identical(other.description, description) ||
            const DeepCollectionEquality()
              .equals(other.description, description)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^
    const DeepCollectionEquality().hash(name) ^
    const DeepCollectionEquality().hash(description);

  @override
  _$PrimitiveRewardCopyWith<_PrimitiveReward> get copyWith =>
    __$PrimitiveRewardCopyWithImpl<_PrimitiveReward>(this, _$identity);
}

abstract class _PrimitiveReward extends PrimitiveReward {
  const _PrimitiveReward._() : super._();

  const factory _PrimitiveReward({@required String name,
    @required String description}) = _$_PrimitiveReward;

  @override
  String get name;
  @override
  String get description;
  @override
  _$PrimitiveRewardCopyWith<_PrimitiveReward> get copyWith;
}
