// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationTearOff {
  const _$LocationTearOff();

  _Location call({required UniqueId id, required String city, required String country, required String postalCode, required Set<Experience> experiences}) {
    return _Location(
      id: id,
      city: city,
      country: country,
      postalCode: postalCode,
      experiences: experiences,
    );
  }
}

/// @nodoc
const $Location = _$LocationTearOff();

/// @nodoc
mixin _$Location {
  UniqueId get id => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get postalCode => throw _privateConstructorUsedError;
  Set<Experience> get experiences => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) = _$LocationCopyWithImpl<$Res>;

  $Res call({UniqueId id, String city, String country, String postalCode, Set<Experience> experiences});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res> implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  final Location _value;
  // ignore: unused_field
  final $Res Function(Location) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? postalCode = freezed,
    Object? experiences = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      experiences: experiences == freezed
          ? _value.experiences
          : experiences // ignore: cast_nullable_to_non_nullable
              as Set<Experience>,
    ));
  }
}

/// @nodoc
abstract class _$LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) then) = __$LocationCopyWithImpl<$Res>;

  @override
  $Res call({UniqueId id, String city, String country, String postalCode, Set<Experience> experiences});
}

/// @nodoc
class __$LocationCopyWithImpl<$Res> extends _$LocationCopyWithImpl<$Res> implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(_Location _value, $Res Function(_Location) _then) : super(_value, (v) => _then(v as _Location));

  @override
  _Location get _value => super._value as _Location;

  @override
  $Res call({
    Object? id = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? postalCode = freezed,
    Object? experiences = freezed,
  }) {
    return _then(_Location(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      experiences: experiences == freezed
          ? _value.experiences
          : experiences // ignore: cast_nullable_to_non_nullable
              as Set<Experience>,
    ));
  }
}

/// @nodoc

class _$_Location extends _Location {
  const _$_Location({required this.id, required this.city, required this.country, required this.postalCode, required this.experiences}) : super._();

  @override
  final UniqueId id;
  @override
  final String city;
  @override
  final String country;
  @override
  final String postalCode;
  @override
  final Set<Experience> experiences;

  @override
  String toString() {
    return 'Location(id: $id, city: $city, country: $country, postalCode: $postalCode, experiences: $experiences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Location &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.city, city) || const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.country, country) || const DeepCollectionEquality().equals(other.country, country)) &&
            (identical(other.postalCode, postalCode) || const DeepCollectionEquality().equals(other.postalCode, postalCode)) &&
            (identical(other.experiences, experiences) || const DeepCollectionEquality().equals(other.experiences, experiences)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(experiences);

  @JsonKey(ignore: true)
  @override
  _$LocationCopyWith<_Location> get copyWith => __$LocationCopyWithImpl<_Location>(this, _$identity);
}

abstract class _Location extends Location {
  const factory _Location({required UniqueId id, required String city, required String country, required String postalCode, required Set<Experience> experiences}) = _$_Location;

  const _Location._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;

  @override
  String get city => throw _privateConstructorUsedError;

  @override
  String get country => throw _privateConstructorUsedError;

  @override
  String get postalCode => throw _privateConstructorUsedError;

  @override
  Set<Experience> get experiences => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$LocationCopyWith<_Location> get copyWith => throw _privateConstructorUsedError;
}
