// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FailureTearOff {
  const _$FailureTearOff();

  _AuthenticationDomain<T> authenticationDomain<T>(AuthenticationDomainFailure<T> f) {
    return _AuthenticationDomain<T>(
      f,
    );
  }

  _AuthenticationData<T> authenticationData<T>(AuthenticationDataFailure<T> f) {
    return _AuthenticationData<T>(
      f,
    );
  }

  _CoreDomain<T> coreDomain<T>(CoreDomainFailure<T> f) {
    return _CoreDomain<T>(
      f,
    );
  }

  _CoreAppllication<T> coreApplication<T>(CoreApplicationFailure<T> f) {
    return _CoreAppllication<T>(
      f,
    );
  }

  _CoreData<T> coreData<T>(CoreDataFailure<T> f) {
    return _CoreData<T>(
      f,
    );
  }

  _Value<T> value<T>(ValueFailure<T> f) {
    return _Value<T>(
      f,
    );
  }
}

// ignore: unused_element
const $Failure = _$FailureTearOff();

mixin _$Failure<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticationDomain(AuthenticationDomainFailure<T> f),
    @required Result authenticationData(AuthenticationDataFailure<T> f),
    @required Result coreDomain(CoreDomainFailure<T> f),
    @required Result coreApplication(CoreApplicationFailure<T> f),
    @required Result coreData(CoreDataFailure<T> f),
    @required Result value(ValueFailure<T> f),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticationDomain(AuthenticationDomainFailure<T> f),
    Result authenticationData(AuthenticationDataFailure<T> f),
    Result coreDomain(CoreDomainFailure<T> f),
    Result coreApplication(CoreApplicationFailure<T> f),
    Result coreData(CoreDataFailure<T> f),
    Result value(ValueFailure<T> f),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticationDomain(_AuthenticationDomain<T> value),
    @required Result authenticationData(_AuthenticationData<T> value),
    @required Result coreDomain(_CoreDomain<T> value),
    @required Result coreApplication(_CoreAppllication<T> value),
    @required Result coreData(_CoreData<T> value),
    @required Result value(_Value<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticationDomain(_AuthenticationDomain<T> value),
    Result authenticationData(_AuthenticationData<T> value),
    Result coreDomain(_CoreDomain<T> value),
    Result coreApplication(_CoreAppllication<T> value),
    Result coreData(_CoreData<T> value),
    Result value(_Value<T> value),
    @required Result orElse(),
  });
}

abstract class $FailureCopyWith<T, $Res> {
  factory $FailureCopyWith(Failure<T> value, $Res Function(Failure<T>) then) = _$FailureCopyWithImpl<T, $Res>;
}

class _$FailureCopyWithImpl<T, $Res> implements $FailureCopyWith<T, $Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure<T> _value;
  // ignore: unused_field
  final $Res Function(Failure<T>) _then;
}

abstract class _$AuthenticationDomainCopyWith<T, $Res> {
  factory _$AuthenticationDomainCopyWith(_AuthenticationDomain<T> value,
    $Res Function(_AuthenticationDomain<T>) then) =
  __$AuthenticationDomainCopyWithImpl<T, $Res>;
  $Res call({AuthenticationDomainFailure<T> f});

  $AuthenticationDomainFailureCopyWith<T, $Res> get f;
}

class __$AuthenticationDomainCopyWithImpl<T, $Res> extends _$FailureCopyWithImpl<T, $Res>
  implements _$AuthenticationDomainCopyWith<T, $Res> {
  __$AuthenticationDomainCopyWithImpl(_AuthenticationDomain<T> _value,
    $Res Function(_AuthenticationDomain<T>) _then)
    : super(_value, (v) => _then(v as _AuthenticationDomain<T>));

  @override
  _AuthenticationDomain<T> get _value =>
    super._value as _AuthenticationDomain<T>;

  @override
  $Res call({
    Object f = freezed,
  }) {
    return _then(_AuthenticationDomain<T>(
      f == freezed ? _value.f : f as AuthenticationDomainFailure<T>,
    ));
  }

  @override
  $AuthenticationDomainFailureCopyWith<T, $Res> get f {
    if (_value.f == null) {
      return null;
    }
    return $AuthenticationDomainFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

class _$_AuthenticationDomain<T> implements _AuthenticationDomain<T> {
  const _$_AuthenticationDomain(this.f) : assert(f != null);

  @override
  final AuthenticationDomainFailure<T> f;

  @override
  String toString() {
    return 'Failure<$T>.authenticationDomain(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _AuthenticationDomain<T> &&
        (identical(other.f, f) ||
          const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @override
  _$AuthenticationDomainCopyWith<T, _AuthenticationDomain<T>> get copyWith =>
    __$AuthenticationDomainCopyWithImpl<T, _AuthenticationDomain<T>>(
      this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticationDomain(AuthenticationDomainFailure<T> f),
    @required Result authenticationData(AuthenticationDataFailure<T> f),
    @required Result coreDomain(CoreDomainFailure<T> f),
    @required Result coreApplication(CoreApplicationFailure<T> f),
    @required Result coreData(CoreDataFailure<T> f),
    @required Result value(ValueFailure<T> f),
  }) {
    assert(authenticationDomain != null);
    assert(authenticationData != null);
    assert(coreDomain != null);
    assert(coreApplication != null);
    assert(coreData != null);
    assert(value != null);
    return authenticationDomain(f);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticationDomain(AuthenticationDomainFailure<T> f),
    Result authenticationData(AuthenticationDataFailure<T> f),
    Result coreDomain(CoreDomainFailure<T> f),
    Result coreApplication(CoreApplicationFailure<T> f),
    Result coreData(CoreDataFailure<T> f),
    Result value(ValueFailure<T> f),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticationDomain != null) {
      return authenticationDomain(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticationDomain(_AuthenticationDomain<T> value),
    @required Result authenticationData(_AuthenticationData<T> value),
    @required Result coreDomain(_CoreDomain<T> value),
    @required Result coreApplication(_CoreAppllication<T> value),
    @required Result coreData(_CoreData<T> value),
    @required Result value(_Value<T> value),
  }) {
    assert(authenticationDomain != null);
    assert(authenticationData != null);
    assert(coreDomain != null);
    assert(coreApplication != null);
    assert(coreData != null);
    assert(value != null);
    return authenticationDomain(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticationDomain(_AuthenticationDomain<T> value),
    Result authenticationData(_AuthenticationData<T> value),
    Result coreDomain(_CoreDomain<T> value),
    Result coreApplication(_CoreAppllication<T> value),
    Result coreData(_CoreData<T> value),
    Result value(_Value<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticationDomain != null) {
      return authenticationDomain(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationDomain<T> implements Failure<T> {
  const factory _AuthenticationDomain(AuthenticationDomainFailure<T> f) =
  _$_AuthenticationDomain<T>;

  AuthenticationDomainFailure<T> get f;
  _$AuthenticationDomainCopyWith<T, _AuthenticationDomain<T>> get copyWith;
}

abstract class _$AuthenticationDataCopyWith<T, $Res> {
  factory _$AuthenticationDataCopyWith(_AuthenticationData<T> value,
    $Res Function(_AuthenticationData<T>) then) =
  __$AuthenticationDataCopyWithImpl<T, $Res>;
  $Res call({AuthenticationDataFailure<T> f});

  $AuthenticationDataFailureCopyWith<T, $Res> get f;
}

class __$AuthenticationDataCopyWithImpl<T, $Res> extends _$FailureCopyWithImpl<T, $Res>
  implements _$AuthenticationDataCopyWith<T, $Res> {
  __$AuthenticationDataCopyWithImpl(_AuthenticationData<T> _value,
    $Res Function(_AuthenticationData<T>) _then)
    : super(_value, (v) => _then(v as _AuthenticationData<T>));

  @override
  _AuthenticationData<T> get _value => super._value as _AuthenticationData<T>;

  @override
  $Res call({
    Object f = freezed,
  }) {
    return _then(_AuthenticationData<T>(
      f == freezed ? _value.f : f as AuthenticationDataFailure<T>,
    ));
  }

  @override
  $AuthenticationDataFailureCopyWith<T, $Res> get f {
    if (_value.f == null) {
      return null;
    }
    return $AuthenticationDataFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

class _$_AuthenticationData<T> implements _AuthenticationData<T> {
  const _$_AuthenticationData(this.f) : assert(f != null);

  @override
  final AuthenticationDataFailure<T> f;

  @override
  String toString() {
    return 'Failure<$T>.authenticationData(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _AuthenticationData<T> &&
        (identical(other.f, f) ||
          const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @override
  _$AuthenticationDataCopyWith<T, _AuthenticationData<T>> get copyWith =>
    __$AuthenticationDataCopyWithImpl<T, _AuthenticationData<T>>(
      this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticationDomain(AuthenticationDomainFailure<T> f),
    @required Result authenticationData(AuthenticationDataFailure<T> f),
    @required Result coreDomain(CoreDomainFailure<T> f),
    @required Result coreApplication(CoreApplicationFailure<T> f),
    @required Result coreData(CoreDataFailure<T> f),
    @required Result value(ValueFailure<T> f),
  }) {
    assert(authenticationDomain != null);
    assert(authenticationData != null);
    assert(coreDomain != null);
    assert(coreApplication != null);
    assert(coreData != null);
    assert(value != null);
    return authenticationData(f);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticationDomain(AuthenticationDomainFailure<T> f),
    Result authenticationData(AuthenticationDataFailure<T> f),
    Result coreDomain(CoreDomainFailure<T> f),
    Result coreApplication(CoreApplicationFailure<T> f),
    Result coreData(CoreDataFailure<T> f),
    Result value(ValueFailure<T> f),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticationData != null) {
      return authenticationData(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticationDomain(_AuthenticationDomain<T> value),
    @required Result authenticationData(_AuthenticationData<T> value),
    @required Result coreDomain(_CoreDomain<T> value),
    @required Result coreApplication(_CoreAppllication<T> value),
    @required Result coreData(_CoreData<T> value),
    @required Result value(_Value<T> value),
  }) {
    assert(authenticationDomain != null);
    assert(authenticationData != null);
    assert(coreDomain != null);
    assert(coreApplication != null);
    assert(coreData != null);
    assert(value != null);
    return authenticationData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticationDomain(_AuthenticationDomain<T> value),
    Result authenticationData(_AuthenticationData<T> value),
    Result coreDomain(_CoreDomain<T> value),
    Result coreApplication(_CoreAppllication<T> value),
    Result coreData(_CoreData<T> value),
    Result value(_Value<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticationData != null) {
      return authenticationData(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationData<T> implements Failure<T> {
  const factory _AuthenticationData(AuthenticationDataFailure<T> f) =
  _$_AuthenticationData<T>;

  AuthenticationDataFailure<T> get f;
  _$AuthenticationDataCopyWith<T, _AuthenticationData<T>> get copyWith;
}

abstract class _$CoreDomainCopyWith<T, $Res> {
  factory _$CoreDomainCopyWith(_CoreDomain<T> value, $Res Function(_CoreDomain<T>) then) =
  __$CoreDomainCopyWithImpl<T, $Res>;
  $Res call({CoreDomainFailure<T> f});

  $CoreDomainFailureCopyWith<T, $Res> get f;
}

class __$CoreDomainCopyWithImpl<T, $Res> extends _$FailureCopyWithImpl<T, $Res>
  implements _$CoreDomainCopyWith<T, $Res> {
  __$CoreDomainCopyWithImpl(_CoreDomain<T> _value, $Res Function(_CoreDomain<T>) _then)
    : super(_value, (v) => _then(v as _CoreDomain<T>));

  @override
  _CoreDomain<T> get _value => super._value as _CoreDomain<T>;

  @override
  $Res call({
    Object f = freezed,
  }) {
    return _then(_CoreDomain<T>(
      f == freezed ? _value.f : f as CoreDomainFailure<T>,
    ));
  }

  @override
  $CoreDomainFailureCopyWith<T, $Res> get f {
    if (_value.f == null) {
      return null;
    }
    return $CoreDomainFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

class _$_CoreDomain<T> implements _CoreDomain<T> {
  const _$_CoreDomain(this.f) : assert(f != null);

  @override
  final CoreDomainFailure<T> f;

  @override
  String toString() {
    return 'Failure<$T>.coreDomain(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _CoreDomain<T> &&
        (identical(other.f, f) ||
          const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @override
  _$CoreDomainCopyWith<T, _CoreDomain<T>> get copyWith =>
    __$CoreDomainCopyWithImpl<T, _CoreDomain<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticationDomain(AuthenticationDomainFailure<T> f),
    @required Result authenticationData(AuthenticationDataFailure<T> f),
    @required Result coreDomain(CoreDomainFailure<T> f),
    @required Result coreApplication(CoreApplicationFailure<T> f),
    @required Result coreData(CoreDataFailure<T> f),
    @required Result value(ValueFailure<T> f),
  }) {
    assert(authenticationDomain != null);
    assert(authenticationData != null);
    assert(coreDomain != null);
    assert(coreApplication != null);
    assert(coreData != null);
    assert(value != null);
    return coreDomain(f);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticationDomain(AuthenticationDomainFailure<T> f),
    Result authenticationData(AuthenticationDataFailure<T> f),
    Result coreDomain(CoreDomainFailure<T> f),
    Result coreApplication(CoreApplicationFailure<T> f),
    Result coreData(CoreDataFailure<T> f),
    Result value(ValueFailure<T> f),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (coreDomain != null) {
      return coreDomain(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticationDomain(_AuthenticationDomain<T> value),
    @required Result authenticationData(_AuthenticationData<T> value),
    @required Result coreDomain(_CoreDomain<T> value),
    @required Result coreApplication(_CoreAppllication<T> value),
    @required Result coreData(_CoreData<T> value),
    @required Result value(_Value<T> value),
  }) {
    assert(authenticationDomain != null);
    assert(authenticationData != null);
    assert(coreDomain != null);
    assert(coreApplication != null);
    assert(coreData != null);
    assert(value != null);
    return coreDomain(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticationDomain(_AuthenticationDomain<T> value),
    Result authenticationData(_AuthenticationData<T> value),
    Result coreDomain(_CoreDomain<T> value),
    Result coreApplication(_CoreAppllication<T> value),
    Result coreData(_CoreData<T> value),
    Result value(_Value<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (coreDomain != null) {
      return coreDomain(this);
    }
    return orElse();
  }
}

abstract class _CoreDomain<T> implements Failure<T> {
  const factory _CoreDomain(CoreDomainFailure<T> f) = _$_CoreDomain<T>;

  CoreDomainFailure<T> get f;
  _$CoreDomainCopyWith<T, _CoreDomain<T>> get copyWith;
}

abstract class _$CoreAppllicationCopyWith<T, $Res> {
  factory _$CoreAppllicationCopyWith(_CoreAppllication<T> value, $Res Function(_CoreAppllication<T>) then) = __$CoreAppllicationCopyWithImpl<T, $Res>;

  $Res call({CoreApplicationFailure<T> f});

  $CoreApplicationFailureCopyWith<T, $Res> get f;
}

class __$CoreAppllicationCopyWithImpl<T, $Res> extends _$FailureCopyWithImpl<T, $Res> implements _$CoreAppllicationCopyWith<T, $Res> {
  __$CoreAppllicationCopyWithImpl(_CoreAppllication<T> _value, $Res Function(_CoreAppllication<T>) _then) : super(_value, (v) => _then(v as _CoreAppllication<T>));

  @override
  _CoreAppllication<T> get _value => super._value as _CoreAppllication<T>;

  @override
  $Res call({
    Object f = freezed,
  }) {
    return _then(_CoreAppllication<T>(
      f == freezed ? _value.f : f as CoreApplicationFailure<T>,
    ));
  }

  @override
  $CoreApplicationFailureCopyWith<T, $Res> get f {
    if (_value.f == null) {
      return null;
    }
    return $CoreApplicationFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

class _$_CoreAppllication<T> implements _CoreAppllication<T> {
  const _$_CoreAppllication(this.f) : assert(f != null);

  @override
  final CoreApplicationFailure<T> f;

  @override
  String toString() {
    return 'Failure<$T>.coreApplication(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CoreAppllication<T> && (identical(other.f, f) || const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @override
  _$CoreAppllicationCopyWith<T, _CoreAppllication<T>> get copyWith => __$CoreAppllicationCopyWithImpl<T, _CoreAppllication<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticationDomain(AuthenticationDomainFailure<T> f),
    @required Result authenticationData(AuthenticationDataFailure<T> f),
    @required Result coreDomain(CoreDomainFailure<T> f),
    @required Result coreApplication(CoreApplicationFailure<T> f),
    @required Result coreData(CoreDataFailure<T> f),
    @required Result value(ValueFailure<T> f),
  }) {
    assert(authenticationDomain != null);
    assert(authenticationData != null);
    assert(coreDomain != null);
    assert(coreApplication != null);
    assert(coreData != null);
    assert(value != null);
    return coreApplication(f);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticationDomain(AuthenticationDomainFailure<T> f),
    Result authenticationData(AuthenticationDataFailure<T> f),
    Result coreDomain(CoreDomainFailure<T> f),
    Result coreApplication(CoreApplicationFailure<T> f),
    Result coreData(CoreDataFailure<T> f),
    Result value(ValueFailure<T> f),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (coreApplication != null) {
      return coreApplication(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticationDomain(_AuthenticationDomain<T> value),
    @required Result authenticationData(_AuthenticationData<T> value),
    @required Result coreDomain(_CoreDomain<T> value),
    @required Result coreApplication(_CoreAppllication<T> value),
    @required Result coreData(_CoreData<T> value),
    @required Result value(_Value<T> value),
  }) {
    assert(authenticationDomain != null);
    assert(authenticationData != null);
    assert(coreDomain != null);
    assert(coreApplication != null);
    assert(coreData != null);
    assert(value != null);
    return coreApplication(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticationDomain(_AuthenticationDomain<T> value),
    Result authenticationData(_AuthenticationData<T> value),
    Result coreDomain(_CoreDomain<T> value),
    Result coreApplication(_CoreAppllication<T> value),
    Result coreData(_CoreData<T> value),
    Result value(_Value<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (coreApplication != null) {
      return coreApplication(this);
    }
    return orElse();
  }
}

abstract class _CoreAppllication<T> implements Failure<T> {
  const factory _CoreAppllication(CoreApplicationFailure<T> f) = _$_CoreAppllication<T>;

  CoreApplicationFailure<T> get f;

  _$CoreAppllicationCopyWith<T, _CoreAppllication<T>> get copyWith;
}

abstract class _$CoreDataCopyWith<T, $Res> {
  factory _$CoreDataCopyWith(_CoreData<T> value, $Res Function(_CoreData<T>) then) =
  __$CoreDataCopyWithImpl<T, $Res>;
  $Res call({CoreDataFailure<T> f});

  $CoreDataFailureCopyWith<T, $Res> get f;
}

class __$CoreDataCopyWithImpl<T, $Res> extends _$FailureCopyWithImpl<T, $Res>
  implements _$CoreDataCopyWith<T, $Res> {
  __$CoreDataCopyWithImpl(_CoreData<T> _value, $Res Function(_CoreData<T>) _then)
    : super(_value, (v) => _then(v as _CoreData<T>));

  @override
  _CoreData<T> get _value => super._value as _CoreData<T>;

  @override
  $Res call({
    Object f = freezed,
  }) {
    return _then(_CoreData<T>(
      f == freezed ? _value.f : f as CoreDataFailure<T>,
    ));
  }

  @override
  $CoreDataFailureCopyWith<T, $Res> get f {
    if (_value.f == null) {
      return null;
    }
    return $CoreDataFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

class _$_CoreData<T> implements _CoreData<T> {
  const _$_CoreData(this.f) : assert(f != null);

  @override
  final CoreDataFailure<T> f;

  @override
  String toString() {
    return 'Failure<$T>.coreData(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _CoreData<T> &&
        (identical(other.f, f) ||
          const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @override
  _$CoreDataCopyWith<T, _CoreData<T>> get copyWith =>
    __$CoreDataCopyWithImpl<T, _CoreData<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticationDomain(AuthenticationDomainFailure<T> f),
    @required Result authenticationData(AuthenticationDataFailure<T> f),
    @required Result coreDomain(CoreDomainFailure<T> f),
    @required Result coreApplication(CoreApplicationFailure<T> f),
    @required Result coreData(CoreDataFailure<T> f),
    @required Result value(ValueFailure<T> f),
  }) {
    assert(authenticationDomain != null);
    assert(authenticationData != null);
    assert(coreDomain != null);
    assert(coreApplication != null);
    assert(coreData != null);
    assert(value != null);
    return coreData(f);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticationDomain(AuthenticationDomainFailure<T> f),
    Result authenticationData(AuthenticationDataFailure<T> f),
    Result coreDomain(CoreDomainFailure<T> f),
    Result coreApplication(CoreApplicationFailure<T> f),
    Result coreData(CoreDataFailure<T> f),
    Result value(ValueFailure<T> f),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (coreData != null) {
      return coreData(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticationDomain(_AuthenticationDomain<T> value),
    @required Result authenticationData(_AuthenticationData<T> value),
    @required Result coreDomain(_CoreDomain<T> value),
    @required Result coreApplication(_CoreAppllication<T> value),
    @required Result coreData(_CoreData<T> value),
    @required Result value(_Value<T> value),
  }) {
    assert(authenticationDomain != null);
    assert(authenticationData != null);
    assert(coreDomain != null);
    assert(coreApplication != null);
    assert(coreData != null);
    assert(value != null);
    return coreData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticationDomain(_AuthenticationDomain<T> value),
    Result authenticationData(_AuthenticationData<T> value),
    Result coreDomain(_CoreDomain<T> value),
    Result coreApplication(_CoreAppllication<T> value),
    Result coreData(_CoreData<T> value),
    Result value(_Value<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (coreData != null) {
      return coreData(this);
    }
    return orElse();
  }
}

abstract class _CoreData<T> implements Failure<T> {
  const factory _CoreData(CoreDataFailure<T> f) = _$_CoreData<T>;

  CoreDataFailure<T> get f;
  _$CoreDataCopyWith<T, _CoreData<T>> get copyWith;
}

abstract class _$ValueCopyWith<T, $Res> {
  factory _$ValueCopyWith(_Value<T> value, $Res Function(_Value<T>) then) =
  __$ValueCopyWithImpl<T, $Res>;
  $Res call({ValueFailure<T> f});

  $ValueFailureCopyWith<T, $Res> get f;
}

class __$ValueCopyWithImpl<T, $Res> extends _$FailureCopyWithImpl<T, $Res>
  implements _$ValueCopyWith<T, $Res> {
  __$ValueCopyWithImpl(_Value<T> _value, $Res Function(_Value<T>) _then)
    : super(_value, (v) => _then(v as _Value<T>));

  @override
  _Value<T> get _value => super._value as _Value<T>;

  @override
  $Res call({
    Object f = freezed,
  }) {
    return _then(_Value<T>(
      f == freezed ? _value.f : f as ValueFailure<T>,
    ));
  }

  @override
  $ValueFailureCopyWith<T, $Res> get f {
    if (_value.f == null) {
      return null;
    }
    return $ValueFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

class _$_Value<T> implements _Value<T> {
  const _$_Value(this.f) : assert(f != null);

  @override
  final ValueFailure<T> f;

  @override
  String toString() {
    return 'Failure<$T>.value(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _Value<T> &&
        (identical(other.f, f) ||
          const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @override
  _$ValueCopyWith<T, _Value<T>> get copyWith =>
    __$ValueCopyWithImpl<T, _Value<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticationDomain(AuthenticationDomainFailure<T> f),
    @required Result authenticationData(AuthenticationDataFailure<T> f),
    @required Result coreDomain(CoreDomainFailure<T> f),
    @required Result coreApplication(CoreApplicationFailure<T> f),
    @required Result coreData(CoreDataFailure<T> f),
    @required Result value(ValueFailure<T> f),
  }) {
    assert(authenticationDomain != null);
    assert(authenticationData != null);
    assert(coreDomain != null);
    assert(coreApplication != null);
    assert(coreData != null);
    assert(value != null);
    return value(f);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticationDomain(AuthenticationDomainFailure<T> f),
    Result authenticationData(AuthenticationDataFailure<T> f),
    Result coreDomain(CoreDomainFailure<T> f),
    Result coreApplication(CoreApplicationFailure<T> f),
    Result coreData(CoreDataFailure<T> f),
    Result value(ValueFailure<T> f),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (value != null) {
      return value(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticationDomain(_AuthenticationDomain<T> value),
    @required Result authenticationData(_AuthenticationData<T> value),
    @required Result coreDomain(_CoreDomain<T> value),
    @required Result coreApplication(_CoreAppllication<T> value),
    @required Result coreData(_CoreData<T> value),
    @required Result value(_Value<T> value),
  }) {
    assert(authenticationDomain != null);
    assert(authenticationData != null);
    assert(coreDomain != null);
    assert(coreApplication != null);
    assert(coreData != null);
    assert(value != null);
    return value(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticationDomain(_AuthenticationDomain<T> value),
    Result authenticationData(_AuthenticationData<T> value),
    Result coreDomain(_CoreDomain<T> value),
    Result coreApplication(_CoreAppllication<T> value),
    Result coreData(_CoreData<T> value),
    Result value(_Value<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (value != null) {
      return value(this);
    }
    return orElse();
  }
}

abstract class _Value<T> implements Failure<T> {
  const factory _Value(ValueFailure<T> f) = _$_Value<T>;

  ValueFailure<T> get f;
  _$ValueCopyWith<T, _Value<T>> get copyWith;
}
