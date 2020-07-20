// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'objective.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ObjectiveTearOff {
  const _$ObjectiveTearOff();

// ignore: unused_element
  _Objective call({int id, @required EntityDescription description, @required Coordinates coordinates, @required String imageName}) {
    return _Objective(
      id: id,
      description: description,
      coordinates: coordinates,
      imageName: imageName,
    );
  }
}

// ignore: unused_element
const $Objective = _$ObjectiveTearOff();

mixin _$Objective {
  int get id;
  EntityDescription get description;
  Coordinates get coordinates;
  String get imageName;

  $ObjectiveCopyWith<Objective> get copyWith;
}

abstract class $ObjectiveCopyWith<$Res> {
  factory $ObjectiveCopyWith(Objective value, $Res Function(Objective) then) =
  _$ObjectiveCopyWithImpl<$Res>;
  
  $Res call({int id,
    EntityDescription description,
    Coordinates coordinates,
    String imageName});

  $CoordinatesCopyWith<$Res> get coordinates;
}

class _$ObjectiveCopyWithImpl<$Res> implements $ObjectiveCopyWith<$Res> {
  _$ObjectiveCopyWithImpl(this._value, this._then);

  final Objective _value;
  // ignore: unused_field
  final $Res Function(Objective) _then;

  @override
  $Res call({
    Object id = freezed,
    Object description = freezed,
    Object coordinates = freezed,
    Object imageName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      description: description == freezed
        ? _value.description
        : description as EntityDescription,
      coordinates: coordinates == freezed
        ? _value.coordinates
        : coordinates as Coordinates,
      imageName: imageName == freezed ? _value.imageName : imageName as String,
    ));
  }

  @override
  $CoordinatesCopyWith<$Res> get coordinates {
    if (_value.coordinates == null) {
      return null;
    }
    return $CoordinatesCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value));
    });
  }
}

abstract class _$ObjectiveCopyWith<$Res> implements $ObjectiveCopyWith<$Res> {
  factory _$ObjectiveCopyWith(_Objective value, $Res Function(_Objective) then) =
  __$ObjectiveCopyWithImpl<$Res>;
  @override
  $Res call({int id,
    EntityDescription description,
    Coordinates coordinates,
    String imageName});

  @override
  $CoordinatesCopyWith<$Res> get coordinates;
}

class __$ObjectiveCopyWithImpl<$Res> extends _$ObjectiveCopyWithImpl<$Res>
  implements _$ObjectiveCopyWith<$Res> {
  __$ObjectiveCopyWithImpl(_Objective _value, $Res Function(_Objective) _then)
    : super(_value, (v) => _then(v as _Objective));

  @override
  _Objective get _value => super._value as _Objective;

  @override
  $Res call({
    Object id = freezed,
    Object description = freezed,
    Object coordinates = freezed,
    Object imageName = freezed,
  }) {
    return _then(_Objective(
      id: id == freezed ? _value.id : id as int,
      description: description == freezed
        ? _value.description
        : description as EntityDescription,
      coordinates: coordinates == freezed
        ? _value.coordinates
        : coordinates as Coordinates,
      imageName: imageName == freezed ? _value.imageName : imageName as String,
    ));
  }
}

class _$_Objective extends _Objective {
  const _$_Objective({this.id,
    @required this.description,
    @required this.coordinates,
    @required this.imageName})
      : assert(description != null),
        assert(coordinates != null),
        assert(imageName != null),
        super._();

  @override
  final int id;
  @override
  final EntityDescription description;
  @override
  final Coordinates coordinates;
  @override
  final String imageName;

  @override
  String toString() {
    return 'Objective(id: $id, description: $description, coordinates: $coordinates, imageName: $imageName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Objective &&
          (identical(other.id, id) ||
            const DeepCollectionEquality().equals(other.id, id)) &&
          (identical(other.description, description) ||
            const DeepCollectionEquality()
              .equals(other.description, description)) &&
          (identical(other.coordinates, coordinates) ||
            const DeepCollectionEquality()
              .equals(other.coordinates, coordinates)) &&
          (identical(other.imageName, imageName) ||
            const DeepCollectionEquality()
              .equals(other.imageName, imageName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(coordinates) ^
      const DeepCollectionEquality().hash(imageName);

  @override
  _$ObjectiveCopyWith<_Objective> get copyWith =>
    __$ObjectiveCopyWithImpl<_Objective>(this, _$identity);
}

abstract class _Objective extends Objective {
  const _Objective._() : super._();

  const factory _Objective({int id,
    @required EntityDescription description,
    @required Coordinates coordinates,
    @required String imageName}) = _$_Objective;

  @override
  int get id;
  @override
  EntityDescription get description;
  @override
  Coordinates get coordinates;
  @override
  String get imageName;
  @override
  _$ObjectiveCopyWith<_Objective> get copyWith;
}
