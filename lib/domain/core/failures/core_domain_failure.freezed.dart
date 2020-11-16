// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'core_domain_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CoreDomainFailureTearOff {
  const _$CoreDomainFailureTearOff();

// ignore: unused_element
  UnknownDomainLayerError<T> unknownDomainLayerError<T>({@required String errorString}) {
    return UnknownDomainLayerError<T>(
      errorString: errorString,
    );
  }

// ignore: unused_element
  DomainLayerError<T> domainLayerError<T>({@required String errorString}) {
    return DomainLayerError<T>(
      errorString: errorString,
    );
  }

// ignore: unused_element
  UnAuthorizedError<T> unAuthorizedError<T>() {
    return UnAuthorizedError<T>();
  }
}

/// @nodoc
// ignore: unused_element
const $CoreDomainFailure = _$CoreDomainFailureTearOff();

/// @nodoc
mixin _$CoreDomainFailure<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unknownDomainLayerError(String errorString),
    @required Result domainLayerError(String errorString),
    @required Result unAuthorizedError(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknownDomainLayerError(String errorString),
    Result domainLayerError(String errorString),
    Result unAuthorizedError(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknownDomainLayerError(UnknownDomainLayerError<T> value),
    @required Result domainLayerError(DomainLayerError<T> value),
    @required Result unAuthorizedError(UnAuthorizedError<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknownDomainLayerError(UnknownDomainLayerError<T> value),
    Result domainLayerError(DomainLayerError<T> value),
    Result unAuthorizedError(UnAuthorizedError<T> value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CoreDomainFailureCopyWith<T, $Res> {
  factory $CoreDomainFailureCopyWith(CoreDomainFailure<T> value, $Res Function(CoreDomainFailure<T>) then) = _$CoreDomainFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$CoreDomainFailureCopyWithImpl<T, $Res>
  implements $CoreDomainFailureCopyWith<T, $Res> {
  _$CoreDomainFailureCopyWithImpl(this._value, this._then);
  
  final CoreDomainFailure<T> _value;
  
  // ignore: unused_field
  final $Res Function(CoreDomainFailure<T>) _then;
}

/// @nodoc
abstract class $UnknownDomainLayerErrorCopyWith<T, $Res> {
  factory $UnknownDomainLayerErrorCopyWith(UnknownDomainLayerError<T> value,
    $Res Function(UnknownDomainLayerError<T>) then) =
  _$UnknownDomainLayerErrorCopyWithImpl<T, $Res>;
  
  $Res call({String errorString});
}

/// @nodoc
class _$UnknownDomainLayerErrorCopyWithImpl<T, $Res> extends _$CoreDomainFailureCopyWithImpl<T, $Res>
  implements $UnknownDomainLayerErrorCopyWith<T, $Res> {
  _$UnknownDomainLayerErrorCopyWithImpl(UnknownDomainLayerError<T> _value,
    $Res Function(UnknownDomainLayerError<T>) _then)
    : super(_value, (v) => _then(v as UnknownDomainLayerError<T>));
  
  @override
  UnknownDomainLayerError<T> get _value =>
    super._value as UnknownDomainLayerError<T>;
  
  @override
  $Res call({
    Object errorString = freezed,
  }) {
    return _then(UnknownDomainLayerError<T>(
      errorString:
      errorString == freezed ? _value.errorString : errorString as String,
    ));
  }
}

/// @nodoc
class _$UnknownDomainLayerError<T> implements UnknownDomainLayerError<T> {
  const _$UnknownDomainLayerError({@required this.errorString})
    : assert(errorString != null);
  
  @override
  final String errorString;
  
  @override
  String toString() {
    return 'CoreDomainFailure<$T>.unknownDomainLayerError(errorString: $errorString)';
  }
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is UnknownDomainLayerError<T> &&
        (identical(other.errorString, errorString) ||
          const DeepCollectionEquality()
            .equals(other.errorString, errorString)));
  }
  
  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorString);
  
  @override
  $UnknownDomainLayerErrorCopyWith<T, UnknownDomainLayerError<T>>
  get copyWith =>
    _$UnknownDomainLayerErrorCopyWithImpl<T, UnknownDomainLayerError<T>>(
      this, _$identity);
  
  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unknownDomainLayerError(String errorString),
    @required Result domainLayerError(String errorString),
    @required Result unAuthorizedError(),
  }) {
    assert(unknownDomainLayerError != null);
    assert(domainLayerError != null);
    assert(unAuthorizedError != null);
    return unknownDomainLayerError(errorString);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknownDomainLayerError(String errorString),
    Result domainLayerError(String errorString),
    Result unAuthorizedError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknownDomainLayerError != null) {
      return unknownDomainLayerError(errorString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknownDomainLayerError(UnknownDomainLayerError<T> value),
    @required Result domainLayerError(DomainLayerError<T> value),
    @required Result unAuthorizedError(UnAuthorizedError<T> value),
  }) {
    assert(unknownDomainLayerError != null);
    assert(domainLayerError != null);
    assert(unAuthorizedError != null);
    return unknownDomainLayerError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknownDomainLayerError(UnknownDomainLayerError<T> value),
    Result domainLayerError(DomainLayerError<T> value),
    Result unAuthorizedError(UnAuthorizedError<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknownDomainLayerError != null) {
      return unknownDomainLayerError(this);
    }
    return orElse();
  }
}

abstract class UnknownDomainLayerError<T> implements CoreDomainFailure<T> {
  const factory UnknownDomainLayerError({@required String errorString}) =
  _$UnknownDomainLayerError<T>;
  
  String get errorString;
  
  $UnknownDomainLayerErrorCopyWith<T, UnknownDomainLayerError<T>> get copyWith;
}

/// @nodoc
abstract class $DomainLayerErrorCopyWith<T, $Res> {
  factory $DomainLayerErrorCopyWith(DomainLayerError<T> value, $Res Function(DomainLayerError<T>) then) =
  _$DomainLayerErrorCopyWithImpl<T, $Res>;
  
  $Res call({String errorString});
}

/// @nodoc
class _$DomainLayerErrorCopyWithImpl<T, $Res> extends _$CoreDomainFailureCopyWithImpl<T, $Res>
  implements $DomainLayerErrorCopyWith<T, $Res> {
  _$DomainLayerErrorCopyWithImpl(DomainLayerError<T> _value, $Res Function(DomainLayerError<T>) _then)
    : super(_value, (v) => _then(v as DomainLayerError<T>));
  
  @override
  DomainLayerError<T> get _value => super._value as DomainLayerError<T>;
  
  @override
  $Res call({
    Object errorString = freezed,
  }) {
    return _then(DomainLayerError<T>(
      errorString:
      errorString == freezed ? _value.errorString : errorString as String,
    ));
  }
}

/// @nodoc
class _$DomainLayerError<T> implements DomainLayerError<T> {
  const _$DomainLayerError({@required this.errorString})
    : assert(errorString != null);
  
  @override
  final String errorString;
  
  @override
  String toString() {
    return 'CoreDomainFailure<$T>.domainLayerError(errorString: $errorString)';
  }
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is DomainLayerError<T> &&
        (identical(other.errorString, errorString) ||
          const DeepCollectionEquality()
            .equals(other.errorString, errorString)));
  }
  
  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorString);
  
  @override
  $DomainLayerErrorCopyWith<T, DomainLayerError<T>> get copyWith =>
    _$DomainLayerErrorCopyWithImpl<T, DomainLayerError<T>>(this, _$identity);
  
  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unknownDomainLayerError(String errorString),
    @required Result domainLayerError(String errorString),
    @required Result unAuthorizedError(),
  }) {
    assert(unknownDomainLayerError != null);
    assert(domainLayerError != null);
    assert(unAuthorizedError != null);
    return domainLayerError(errorString);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknownDomainLayerError(String errorString),
    Result domainLayerError(String errorString),
    Result unAuthorizedError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (domainLayerError != null) {
      return domainLayerError(errorString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknownDomainLayerError(UnknownDomainLayerError<T> value),
    @required Result domainLayerError(DomainLayerError<T> value),
    @required Result unAuthorizedError(UnAuthorizedError<T> value),
  }) {
    assert(unknownDomainLayerError != null);
    assert(domainLayerError != null);
    assert(unAuthorizedError != null);
    return domainLayerError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknownDomainLayerError(UnknownDomainLayerError<T> value),
    Result domainLayerError(DomainLayerError<T> value),
    Result unAuthorizedError(UnAuthorizedError<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (domainLayerError != null) {
      return domainLayerError(this);
    }
    return orElse();
  }
}

abstract class DomainLayerError<T> implements CoreDomainFailure<T> {
  const factory DomainLayerError({@required String errorString}) =
  _$DomainLayerError<T>;
  
  String get errorString;
  
  $DomainLayerErrorCopyWith<T, DomainLayerError<T>> get copyWith;
}

/// @nodoc
abstract class $UnAuthorizedErrorCopyWith<T, $Res> {
  factory $UnAuthorizedErrorCopyWith(UnAuthorizedError<T> value,
    $Res Function(UnAuthorizedError<T>) then) =
  _$UnAuthorizedErrorCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$UnAuthorizedErrorCopyWithImpl<T, $Res> extends _$CoreDomainFailureCopyWithImpl<T, $Res>
  implements $UnAuthorizedErrorCopyWith<T, $Res> {
  _$UnAuthorizedErrorCopyWithImpl(UnAuthorizedError<T> _value, $Res Function(UnAuthorizedError<T>) _then)
    : super(_value, (v) => _then(v as UnAuthorizedError<T>));
  
  @override
  UnAuthorizedError<T> get _value => super._value as UnAuthorizedError<T>;
}

/// @nodoc
class _$UnAuthorizedError<T> implements UnAuthorizedError<T> {
  const _$UnAuthorizedError();

  @override
  String toString() {
    return 'CoreDomainFailure<$T>.unAuthorizedError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnAuthorizedError<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unknownDomainLayerError(String errorString),
    @required Result domainLayerError(String errorString),
    @required Result unAuthorizedError(),
  }) {
    assert(unknownDomainLayerError != null);
    assert(domainLayerError != null);
    assert(unAuthorizedError != null);
    return unAuthorizedError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknownDomainLayerError(String errorString),
    Result domainLayerError(String errorString),
    Result unAuthorizedError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unAuthorizedError != null) {
      return unAuthorizedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknownDomainLayerError(UnknownDomainLayerError<T> value),
    @required Result domainLayerError(DomainLayerError<T> value),
    @required Result unAuthorizedError(UnAuthorizedError<T> value),
  }) {
    assert(unknownDomainLayerError != null);
    assert(domainLayerError != null);
    assert(unAuthorizedError != null);
    return unAuthorizedError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknownDomainLayerError(UnknownDomainLayerError<T> value),
    Result domainLayerError(DomainLayerError<T> value),
    Result unAuthorizedError(UnAuthorizedError<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unAuthorizedError != null) {
      return unAuthorizedError(this);
    }
    return orElse();
  }
}

abstract class UnAuthorizedError<T> implements CoreDomainFailure<T> {
  const factory UnAuthorizedError() = _$UnAuthorizedError<T>;
}
