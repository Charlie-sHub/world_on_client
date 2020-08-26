// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'coordinates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CoordinatesTearOff {
  const _$CoordinatesTearOff();

// ignore: unused_element
  _Coordinates call({@required Latitude latitude, @required Longitude longitude}) {
    return _Coordinates(
      latitude: latitude,
      longitude: longitude,
    );
  }
}

// ignore: unused_element
const $Coordinates = _$CoordinatesTearOff();

mixin _$Coordinates {
  Latitude get latitude;
  Longitude get longitude;

  $CoordinatesCopyWith<Coordinates> get copyWith;
}

abstract class $CoordinatesCopyWith<$Res> {
  factory $CoordinatesCopyWith(Coordinates value, $Res Function(Coordinates) then) = _$CoordinatesCopyWithImpl<$Res>;

  $Res call({Latitude latitude, Longitude longitude});
}

class _$CoordinatesCopyWithImpl<$Res> implements $CoordinatesCopyWith<$Res> {
  _$CoordinatesCopyWithImpl(this._value, this._then);

  final Coordinates _value;
  // ignore: unused_field
  final $Res Function(Coordinates) _then;

  @override
  $Res call({
    Object latitude = freezed,
    Object longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed ? _value.latitude : latitude as Latitude,
      longitude: longitude == freezed ? _value.longitude : longitude as Longitude,
    ));
  }
}

abstract class _$CoordinatesCopyWith<$Res> implements $CoordinatesCopyWith<$Res> {
  factory _$CoordinatesCopyWith(_Coordinates value, $Res Function(_Coordinates) then) = __$CoordinatesCopyWithImpl<$Res>;

  @override
  $Res call({Latitude latitude, Longitude longitude});
}

class __$CoordinatesCopyWithImpl<$Res> extends _$CoordinatesCopyWithImpl<$Res> implements _$CoordinatesCopyWith<$Res> {
  __$CoordinatesCopyWithImpl(_Coordinates _value, $Res Function(_Coordinates) _then) : super(_value, (v) => _then(v as _Coordinates));
  
  @override
  _Coordinates get _value => super._value as _Coordinates;
  
  @override
  $Res call({
    Object latitude = freezed,
    Object longitude = freezed,
  }) {
    return _then(_Coordinates(
      latitude: latitude == freezed ? _value.latitude : latitude as Latitude,
      longitude: longitude == freezed ? _value.longitude : longitude as Longitude,
    ));
  }
}

class _$_Coordinates extends _Coordinates {
  const _$_Coordinates({@required this.latitude, @required this.longitude})
      : assert(latitude != null),
        assert(longitude != null),
        super._();

  @override
  final Latitude latitude;
  @override
  final Longitude longitude;

  @override
  String toString() {
    return 'Coordinates(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _Coordinates &&
        (identical(other.latitude, latitude) || const DeepCollectionEquality().equals(other.latitude, latitude)) &&
        (identical(other.longitude, longitude) || const DeepCollectionEquality().equals(other.longitude, longitude)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(latitude) ^ const DeepCollectionEquality().hash(longitude);

  @override
  _$CoordinatesCopyWith<_Coordinates> get copyWith => __$CoordinatesCopyWithImpl<_Coordinates>(this, _$identity);
}

abstract class _Coordinates extends Coordinates {
  const _Coordinates._() : super._();
  
  const factory _Coordinates({@required Latitude latitude, @required Longitude longitude}) = _$_Coordinates;
  
  @override
  Latitude get latitude;
  
  @override
  Longitude get longitude;
  
  @override
  _$CoordinatesCopyWith<_Coordinates> get copyWith;
}
