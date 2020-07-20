// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'core_application_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CoreApplicationFailureTearOff {
  const _$CoreApplicationFailureTearOff();

// ignore: unused_element
  UnknownApplicationLayerError<T> unknownApplicationLayerError<T>({@required String errorString}) {
    return UnknownApplicationLayerError<T>(
      errorString: errorString,
    );
  }
}

// ignore: unused_element
const $CoreApplicationFailure = _$CoreApplicationFailureTearOff();

mixin _$CoreApplicationFailure<T> {
  String get errorString;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unknownApplicationLayerError(String errorString),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknownApplicationLayerError(String errorString),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknownApplicationLayerError(UnknownApplicationLayerError<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknownApplicationLayerError(UnknownApplicationLayerError<T> value),
    @required Result orElse(),
  });

  $CoreApplicationFailureCopyWith<T, CoreApplicationFailure<T>> get copyWith;
}

abstract class $CoreApplicationFailureCopyWith<T, $Res> {
  factory $CoreApplicationFailureCopyWith(CoreApplicationFailure<T> value, $Res Function(CoreApplicationFailure<T>) then) = _$CoreApplicationFailureCopyWithImpl<T, $Res>;
  $Res call({String errorString});
}

class _$CoreApplicationFailureCopyWithImpl<T, $Res> implements $CoreApplicationFailureCopyWith<T, $Res> {
  _$CoreApplicationFailureCopyWithImpl(this._value, this._then);

  final CoreApplicationFailure<T> _value;
  // ignore: unused_field
  final $Res Function(CoreApplicationFailure<T>) _then;

  @override
  $Res call({
    Object errorString = freezed,
  }) {
    return _then(_value.copyWith(
      errorString: errorString == freezed ? _value.errorString : errorString as String,
    ));
  }
}

abstract class $UnknownApplicationLayerErrorCopyWith<T, $Res> implements $CoreApplicationFailureCopyWith<T, $Res> {
  factory $UnknownApplicationLayerErrorCopyWith(UnknownApplicationLayerError<T> value, $Res Function(UnknownApplicationLayerError<T>) then) = _$UnknownApplicationLayerErrorCopyWithImpl<T, $Res>;
  @override
  $Res call({String errorString});
}

class _$UnknownApplicationLayerErrorCopyWithImpl<T, $Res> extends _$CoreApplicationFailureCopyWithImpl<T, $Res> implements $UnknownApplicationLayerErrorCopyWith<T, $Res> {
  _$UnknownApplicationLayerErrorCopyWithImpl(UnknownApplicationLayerError<T> _value, $Res Function(UnknownApplicationLayerError<T>) _then)
      : super(_value, (v) => _then(v as UnknownApplicationLayerError<T>));

  @override
  UnknownApplicationLayerError<T> get _value => super._value as UnknownApplicationLayerError<T>;

  @override
  $Res call({
    Object errorString = freezed,
  }) {
    return _then(UnknownApplicationLayerError<T>(
      errorString: errorString == freezed ? _value.errorString : errorString as String,
    ));
  }
}

class _$UnknownApplicationLayerError<T> implements UnknownApplicationLayerError<T> {
  const _$UnknownApplicationLayerError({@required this.errorString}) : assert(errorString != null);

  @override
  final String errorString;

  @override
  String toString() {
    return 'CoreApplicationFailure<$T>.unknownApplicationLayerError(errorString: $errorString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnknownApplicationLayerError<T> && (identical(other.errorString, errorString) || const DeepCollectionEquality().equals(other.errorString, errorString)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorString);

  @override
  $UnknownApplicationLayerErrorCopyWith<T, UnknownApplicationLayerError<T>> get copyWith => _$UnknownApplicationLayerErrorCopyWithImpl<T, UnknownApplicationLayerError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unknownApplicationLayerError(String errorString),
  }) {
    assert(unknownApplicationLayerError != null);
    return unknownApplicationLayerError(errorString);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknownApplicationLayerError(String errorString),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknownApplicationLayerError != null) {
      return unknownApplicationLayerError(errorString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknownApplicationLayerError(UnknownApplicationLayerError<T> value),
  }) {
    assert(unknownApplicationLayerError != null);
    return unknownApplicationLayerError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknownApplicationLayerError(UnknownApplicationLayerError<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknownApplicationLayerError != null) {
      return unknownApplicationLayerError(this);
    }
    return orElse();
  }
}

abstract class UnknownApplicationLayerError<T> implements CoreApplicationFailure<T> {
  const factory UnknownApplicationLayerError({@required String errorString}) = _$UnknownApplicationLayerError<T>;

  @override
  String get errorString;
  @override
  $UnknownApplicationLayerErrorCopyWith<T, UnknownApplicationLayerError<T>> get copyWith;
}
