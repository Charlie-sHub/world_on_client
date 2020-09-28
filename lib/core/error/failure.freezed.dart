// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

// ignore: unused_element
  _AuthenticationDomain<T> authenticationDomain<T>(AuthenticationDomainFailure<T> authenticationDomainFailure) {
    return _AuthenticationDomain<T>(
      authenticationDomainFailure,
    );
  }

// ignore: unused_element
  _AuthenticationData<T> authenticationData<T>(AuthenticationDataFailure<T> authenticationDataFailure) {
    return _AuthenticationData<T>(
      authenticationDataFailure,
    );
  }

// ignore: unused_element
  _CoreDomain<T> coreDomain<T>(CoreDomainFailure<T> coreDomainFailure) {
    return _CoreDomain<T>(
      coreDomainFailure,
    );
  }

// ignore: unused_element
  _CoreAppllication<T> coreApplication<T>(CoreApplicationFailure<T> coreApplicationFailure) {
    return _CoreAppllication<T>(
      coreApplicationFailure,
    );
  }

// ignore: unused_element
  _CoreData<T> coreData<T>(CoreDataFailure<T> coreDataFailure) {
    return _CoreData<T>(
      coreDataFailure,
    );
  }

// ignore: unused_element
  _Value<T> value<T>(ValueFailure<T> valueFailure) {
    return _Value<T>(
      valueFailure,
    );
  }

// ignore: unused_element
  _ProfileDomain<T> profileDomain<T>(ProfileDomainFailure<T> profileDomainFailure) {
    return _ProfileDomain<T>(
      profileDomainFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticationDomain(AuthenticationDomainFailure<T> authenticationDomainFailure),
    @required Result authenticationData(AuthenticationDataFailure<T> authenticationDataFailure),
    @required Result coreDomain(CoreDomainFailure<T> coreDomainFailure),
    @required Result coreApplication(CoreApplicationFailure<T> coreApplicationFailure),
    @required Result coreData(CoreDataFailure<T> coreDataFailure),
    @required Result value(ValueFailure<T> valueFailure),
    @required Result profileDomain(ProfileDomainFailure<T> profileDomainFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticationDomain(AuthenticationDomainFailure<T> authenticationDomainFailure),
    Result authenticationData(AuthenticationDataFailure<T> authenticationDataFailure),
    Result coreDomain(CoreDomainFailure<T> coreDomainFailure),
    Result coreApplication(CoreApplicationFailure<T> coreApplicationFailure),
    Result coreData(CoreDataFailure<T> coreDataFailure),
    Result value(ValueFailure<T> valueFailure),
    Result profileDomain(ProfileDomainFailure<T> profileDomainFailure),
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
    @required Result profileDomain(_ProfileDomain<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticationDomain(_AuthenticationDomain<T> value),
    Result authenticationData(_AuthenticationData<T> value),
    Result coreDomain(_CoreDomain<T> value),
    Result coreApplication(_CoreAppllication<T> value),
    Result coreData(_CoreData<T> value),
    Result value(_Value<T> value),
    Result profileDomain(_ProfileDomain<T> value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $FailureCopyWith<T, $Res> {
  factory $FailureCopyWith(Failure<T> value, $Res Function(Failure<T>) then) = _$FailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<T, $Res> implements $FailureCopyWith<T, $Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure<T> _value;
  // ignore: unused_field
  final $Res Function(Failure<T>) _then;
}

/// @nodoc
abstract class _$AuthenticationDomainCopyWith<T, $Res> {
  factory _$AuthenticationDomainCopyWith(_AuthenticationDomain<T> value, $Res Function(_AuthenticationDomain<T>) then) = __$AuthenticationDomainCopyWithImpl<T, $Res>;

  $Res call({AuthenticationDomainFailure<T> authenticationDomainFailure});

  $AuthenticationDomainFailureCopyWith<T, $Res> get authenticationDomainFailure;
}

/// @nodoc
class __$AuthenticationDomainCopyWithImpl<T, $Res> extends _$FailureCopyWithImpl<T, $Res> implements _$AuthenticationDomainCopyWith<T, $Res> {
  __$AuthenticationDomainCopyWithImpl(_AuthenticationDomain<T> _value, $Res Function(_AuthenticationDomain<T>) _then) : super(_value, (v) => _then(v as _AuthenticationDomain<T>));
  
  @override
  _AuthenticationDomain<T> get _value => super._value as _AuthenticationDomain<T>;
  
  @override
  $Res call({
    Object authenticationDomainFailure = freezed,
  }) {
    return _then(_AuthenticationDomain<T>(
      authenticationDomainFailure == freezed ? _value.authenticationDomainFailure : authenticationDomainFailure as AuthenticationDomainFailure<T>,
    ));
  }
  
  @override
  $AuthenticationDomainFailureCopyWith<T, $Res> get authenticationDomainFailure {
    if (_value.authenticationDomainFailure == null) {
      return null;
    }
    return $AuthenticationDomainFailureCopyWith<T, $Res>(_value.authenticationDomainFailure, (value) {
      return _then(_value.copyWith(authenticationDomainFailure: value));
    });
  }
}

/// @nodoc
class _$_AuthenticationDomain<T> implements _AuthenticationDomain<T> {
  const _$_AuthenticationDomain(this.authenticationDomainFailure) : assert(authenticationDomainFailure != null);
  
  @override
  final AuthenticationDomainFailure<T> authenticationDomainFailure;
  
  @override
  String toString() {
    return 'Failure<$T>.authenticationDomain(authenticationDomainFailure: $authenticationDomainFailure)';
  }
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _AuthenticationDomain<T> &&
        (identical(other.authenticationDomainFailure, authenticationDomainFailure) || const DeepCollectionEquality().equals(other.authenticationDomainFailure, authenticationDomainFailure)));
  }
  
  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(authenticationDomainFailure);
  
  @override
  _$AuthenticationDomainCopyWith<T, _AuthenticationDomain<T>> get copyWith => __$AuthenticationDomainCopyWithImpl<T, _AuthenticationDomain<T>>(this, _$identity);
  
  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticationDomain(AuthenticationDomainFailure<T> authenticationDomainFailure),
    @required Result authenticationData(AuthenticationDataFailure<T> authenticationDataFailure),
    @required Result coreDomain(CoreDomainFailure<T> coreDomainFailure),
    @required Result coreApplication(CoreApplicationFailure<T> coreApplicationFailure),
    @required Result coreData(CoreDataFailure<T> coreDataFailure),
    @required Result value(ValueFailure<T> valueFailure),
    @required Result profileDomain(ProfileDomainFailure<T> profileDomainFailure),
  }) {
    assert(authenticationDomain != null);
    assert(authenticationData != null);
    assert(coreDomain != null);
    assert(coreApplication != null);
    assert(coreData != null);
    assert(value != null);
    assert(profileDomain != null);
    return authenticationDomain(authenticationDomainFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticationDomain(AuthenticationDomainFailure<T> authenticationDomainFailure),
    Result authenticationData(AuthenticationDataFailure<T> authenticationDataFailure),
    Result coreDomain(CoreDomainFailure<T> coreDomainFailure),
    Result coreApplication(CoreApplicationFailure<T> coreApplicationFailure),
    Result coreData(CoreDataFailure<T> coreDataFailure),
    Result value(ValueFailure<T> valueFailure),
    Result profileDomain(ProfileDomainFailure<T> profileDomainFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticationDomain != null) {
      return authenticationDomain(authenticationDomainFailure);
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
    @required Result profileDomain(_ProfileDomain<T> value),
  }) {
    assert(authenticationDomain != null);
    assert(authenticationData != null);
    assert(coreDomain != null);
    assert(coreApplication != null);
    assert(coreData != null);
    assert(value != null);
    assert(profileDomain != null);
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
    Result profileDomain(_ProfileDomain<T> value),
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
  const factory _AuthenticationDomain(AuthenticationDomainFailure<T> authenticationDomainFailure) = _$_AuthenticationDomain<T>;
  
  AuthenticationDomainFailure<T> get authenticationDomainFailure;
  
  _$AuthenticationDomainCopyWith<T, _AuthenticationDomain<T>> get copyWith;
}

/// @nodoc
abstract class _$AuthenticationDataCopyWith<T, $Res> {
  factory _$AuthenticationDataCopyWith(_AuthenticationData<T> value, $Res Function(_AuthenticationData<T>) then) = __$AuthenticationDataCopyWithImpl<T, $Res>;
  
  $Res call({AuthenticationDataFailure<T> authenticationDataFailure});
  
  $AuthenticationDataFailureCopyWith<T, $Res> get authenticationDataFailure;
}

/// @nodoc
class __$AuthenticationDataCopyWithImpl<T, $Res> extends _$FailureCopyWithImpl<T, $Res> implements _$AuthenticationDataCopyWith<T, $Res> {
  __$AuthenticationDataCopyWithImpl(_AuthenticationData<T> _value, $Res Function(_AuthenticationData<T>) _then) : super(_value, (v) => _then(v as _AuthenticationData<T>));
  
  @override
  _AuthenticationData<T> get _value => super._value as _AuthenticationData<T>;
  
  @override
  $Res call({
    Object authenticationDataFailure = freezed,
  }) {
    return _then(_AuthenticationData<T>(
      authenticationDataFailure == freezed ? _value.authenticationDataFailure : authenticationDataFailure as AuthenticationDataFailure<T>,
    ));
  }

  @override
  $AuthenticationDataFailureCopyWith<T, $Res> get authenticationDataFailure {
    if (_value.authenticationDataFailure == null) {
      return null;
    }
    return $AuthenticationDataFailureCopyWith<T, $Res>(_value.authenticationDataFailure, (value) {
      return _then(_value.copyWith(authenticationDataFailure: value));
    });
  }
}

/// @nodoc
class _$_AuthenticationData<T> implements _AuthenticationData<T> {
  const _$_AuthenticationData(this.authenticationDataFailure) : assert(authenticationDataFailure != null);
  
  @override
  final AuthenticationDataFailure<T> authenticationDataFailure;
  
  @override
  String toString() {
    return 'Failure<$T>.authenticationData(authenticationDataFailure: $authenticationDataFailure)';
  }
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _AuthenticationData<T> &&
        (identical(other.authenticationDataFailure, authenticationDataFailure) || const DeepCollectionEquality().equals(other.authenticationDataFailure, authenticationDataFailure)));
  }
  
  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(authenticationDataFailure);
  
  @override
  _$AuthenticationDataCopyWith<T, _AuthenticationData<T>> get copyWith => __$AuthenticationDataCopyWithImpl<T, _AuthenticationData<T>>(this, _$identity);
  
  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticationDomain(AuthenticationDomainFailure<T> authenticationDomainFailure),
    @required Result authenticationData(AuthenticationDataFailure<T> authenticationDataFailure),
    @required Result coreDomain(CoreDomainFailure<T> coreDomainFailure),
    @required Result coreApplication(CoreApplicationFailure<T> coreApplicationFailure),
    @required Result coreData(CoreDataFailure<T> coreDataFailure),
    @required Result value(ValueFailure<T> valueFailure),
    @required Result profileDomain(ProfileDomainFailure<T> profileDomainFailure),
  }) {
    assert(authenticationDomain != null);
    assert(authenticationData != null);
    assert(coreDomain != null);
    assert(coreApplication != null);
    assert(coreData != null);
    assert(value != null);
    assert(profileDomain != null);
    return authenticationData(authenticationDataFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticationDomain(AuthenticationDomainFailure<T> authenticationDomainFailure),
    Result authenticationData(AuthenticationDataFailure<T> authenticationDataFailure),
    Result coreDomain(CoreDomainFailure<T> coreDomainFailure),
    Result coreApplication(CoreApplicationFailure<T> coreApplicationFailure),
    Result coreData(CoreDataFailure<T> coreDataFailure),
    Result value(ValueFailure<T> valueFailure),
    Result profileDomain(ProfileDomainFailure<T> profileDomainFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticationData != null) {
      return authenticationData(authenticationDataFailure);
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
    @required Result profileDomain(_ProfileDomain<T> value),
  }) {
    assert(authenticationDomain != null);
    assert(authenticationData != null);
    assert(coreDomain != null);
    assert(coreApplication != null);
    assert(coreData != null);
    assert(value != null);
    assert(profileDomain != null);
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
    Result profileDomain(_ProfileDomain<T> value),
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
  const factory _AuthenticationData(AuthenticationDataFailure<T> authenticationDataFailure) = _$_AuthenticationData<T>;
  
  AuthenticationDataFailure<T> get authenticationDataFailure;
  
  _$AuthenticationDataCopyWith<T, _AuthenticationData<T>> get copyWith;
}

/// @nodoc
abstract class _$CoreDomainCopyWith<T, $Res> {
  factory _$CoreDomainCopyWith(_CoreDomain<T> value, $Res Function(_CoreDomain<T>) then) = __$CoreDomainCopyWithImpl<T, $Res>;
  
  $Res call({CoreDomainFailure<T> coreDomainFailure});
  
  $CoreDomainFailureCopyWith<T, $Res> get coreDomainFailure;
}

/// @nodoc
class __$CoreDomainCopyWithImpl<T, $Res> extends _$FailureCopyWithImpl<T, $Res> implements _$CoreDomainCopyWith<T, $Res> {
  __$CoreDomainCopyWithImpl(_CoreDomain<T> _value, $Res Function(_CoreDomain<T>) _then) : super(_value, (v) => _then(v as _CoreDomain<T>));
  
  @override
  _CoreDomain<T> get _value => super._value as _CoreDomain<T>;
  
  @override
  $Res call({
    Object coreDomainFailure = freezed,
  }) {
    return _then(_CoreDomain<T>(
      coreDomainFailure == freezed ? _value.coreDomainFailure : coreDomainFailure as CoreDomainFailure<T>,
    ));
  }

  @override
  $CoreDomainFailureCopyWith<T, $Res> get coreDomainFailure {
    if (_value.coreDomainFailure == null) {
      return null;
    }
    return $CoreDomainFailureCopyWith<T, $Res>(_value.coreDomainFailure, (value) {
      return _then(_value.copyWith(coreDomainFailure: value));
    });
  }
}

/// @nodoc
class _$_CoreDomain<T> implements _CoreDomain<T> {
  const _$_CoreDomain(this.coreDomainFailure) : assert(coreDomainFailure != null);
  
  @override
  final CoreDomainFailure<T> coreDomainFailure;
  
  @override
  String toString() {
    return 'Failure<$T>.coreDomain(coreDomainFailure: $coreDomainFailure)';
  }
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _CoreDomain<T> && (identical(other.coreDomainFailure, coreDomainFailure) || const DeepCollectionEquality().equals(other.coreDomainFailure, coreDomainFailure)));
  }
  
  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(coreDomainFailure);
  
  @override
  _$CoreDomainCopyWith<T, _CoreDomain<T>> get copyWith => __$CoreDomainCopyWithImpl<T, _CoreDomain<T>>(this, _$identity);
  
  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticationDomain(AuthenticationDomainFailure<T> authenticationDomainFailure),
    @required Result authenticationData(AuthenticationDataFailure<T> authenticationDataFailure),
    @required Result coreDomain(CoreDomainFailure<T> coreDomainFailure),
    @required Result coreApplication(CoreApplicationFailure<T> coreApplicationFailure),
    @required Result coreData(CoreDataFailure<T> coreDataFailure),
    @required Result value(ValueFailure<T> valueFailure),
    @required Result profileDomain(ProfileDomainFailure<T> profileDomainFailure),
  }) {
    assert(authenticationDomain != null);
    assert(authenticationData != null);
    assert(coreDomain != null);
    assert(coreApplication != null);
    assert(coreData != null);
    assert(value != null);
    assert(profileDomain != null);
    return coreDomain(coreDomainFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticationDomain(AuthenticationDomainFailure<T> authenticationDomainFailure),
    Result authenticationData(AuthenticationDataFailure<T> authenticationDataFailure),
    Result coreDomain(CoreDomainFailure<T> coreDomainFailure),
    Result coreApplication(CoreApplicationFailure<T> coreApplicationFailure),
    Result coreData(CoreDataFailure<T> coreDataFailure),
    Result value(ValueFailure<T> valueFailure),
    Result profileDomain(ProfileDomainFailure<T> profileDomainFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (coreDomain != null) {
      return coreDomain(coreDomainFailure);
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
    @required Result profileDomain(_ProfileDomain<T> value),
  }) {
    assert(authenticationDomain != null);
    assert(authenticationData != null);
    assert(coreDomain != null);
    assert(coreApplication != null);
    assert(coreData != null);
    assert(value != null);
    assert(profileDomain != null);
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
    Result profileDomain(_ProfileDomain<T> value),
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
  const factory _CoreDomain(CoreDomainFailure<T> coreDomainFailure) = _$_CoreDomain<T>;
  
  CoreDomainFailure<T> get coreDomainFailure;
  
  _$CoreDomainCopyWith<T, _CoreDomain<T>> get copyWith;
}

/// @nodoc
abstract class _$CoreAppllicationCopyWith<T, $Res> {
  factory _$CoreAppllicationCopyWith(_CoreAppllication<T> value, $Res Function(_CoreAppllication<T>) then) = __$CoreAppllicationCopyWithImpl<T, $Res>;
  
  $Res call({CoreApplicationFailure<T> coreApplicationFailure});
  
  $CoreApplicationFailureCopyWith<T, $Res> get coreApplicationFailure;
}

/// @nodoc
class __$CoreAppllicationCopyWithImpl<T, $Res> extends _$FailureCopyWithImpl<T, $Res> implements _$CoreAppllicationCopyWith<T, $Res> {
  __$CoreAppllicationCopyWithImpl(_CoreAppllication<T> _value, $Res Function(_CoreAppllication<T>) _then) : super(_value, (v) => _then(v as _CoreAppllication<T>));
  
  @override
  _CoreAppllication<T> get _value => super._value as _CoreAppllication<T>;
  
  @override
  $Res call({
    Object coreApplicationFailure = freezed,
  }) {
    return _then(_CoreAppllication<T>(
      coreApplicationFailure == freezed ? _value.coreApplicationFailure : coreApplicationFailure as CoreApplicationFailure<T>,
    ));
  }

  @override
  $CoreApplicationFailureCopyWith<T, $Res> get coreApplicationFailure {
    if (_value.coreApplicationFailure == null) {
      return null;
    }
    return $CoreApplicationFailureCopyWith<T, $Res>(_value.coreApplicationFailure, (value) {
      return _then(_value.copyWith(coreApplicationFailure: value));
    });
  }
}

/// @nodoc
class _$_CoreAppllication<T> implements _CoreAppllication<T> {
  const _$_CoreAppllication(this.coreApplicationFailure) : assert(coreApplicationFailure != null);
  
  @override
  final CoreApplicationFailure<T> coreApplicationFailure;
  
  @override
  String toString() {
    return 'Failure<$T>.coreApplication(coreApplicationFailure: $coreApplicationFailure)';
  }
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _CoreAppllication<T> &&
        (identical(other.coreApplicationFailure, coreApplicationFailure) || const DeepCollectionEquality().equals(other.coreApplicationFailure, coreApplicationFailure)));
  }
  
  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(coreApplicationFailure);
  
  @override
  _$CoreAppllicationCopyWith<T, _CoreAppllication<T>> get copyWith => __$CoreAppllicationCopyWithImpl<T, _CoreAppllication<T>>(this, _$identity);
  
  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticationDomain(AuthenticationDomainFailure<T> authenticationDomainFailure),
    @required Result authenticationData(AuthenticationDataFailure<T> authenticationDataFailure),
    @required Result coreDomain(CoreDomainFailure<T> coreDomainFailure),
    @required Result coreApplication(CoreApplicationFailure<T> coreApplicationFailure),
    @required Result coreData(CoreDataFailure<T> coreDataFailure),
    @required Result value(ValueFailure<T> valueFailure),
    @required Result profileDomain(ProfileDomainFailure<T> profileDomainFailure),
  }) {
    assert(authenticationDomain != null);
    assert(authenticationData != null);
    assert(coreDomain != null);
    assert(coreApplication != null);
    assert(coreData != null);
    assert(value != null);
    assert(profileDomain != null);
    return coreApplication(coreApplicationFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticationDomain(AuthenticationDomainFailure<T> authenticationDomainFailure),
    Result authenticationData(AuthenticationDataFailure<T> authenticationDataFailure),
    Result coreDomain(CoreDomainFailure<T> coreDomainFailure),
    Result coreApplication(CoreApplicationFailure<T> coreApplicationFailure),
    Result coreData(CoreDataFailure<T> coreDataFailure),
    Result value(ValueFailure<T> valueFailure),
    Result profileDomain(ProfileDomainFailure<T> profileDomainFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (coreApplication != null) {
      return coreApplication(coreApplicationFailure);
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
    @required Result profileDomain(_ProfileDomain<T> value),
  }) {
    assert(authenticationDomain != null);
    assert(authenticationData != null);
    assert(coreDomain != null);
    assert(coreApplication != null);
    assert(coreData != null);
    assert(value != null);
    assert(profileDomain != null);
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
    Result profileDomain(_ProfileDomain<T> value),
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
  const factory _CoreAppllication(CoreApplicationFailure<T> coreApplicationFailure) = _$_CoreAppllication<T>;
  
  CoreApplicationFailure<T> get coreApplicationFailure;
  
  _$CoreAppllicationCopyWith<T, _CoreAppllication<T>> get copyWith;
}

/// @nodoc
abstract class _$CoreDataCopyWith<T, $Res> {
  factory _$CoreDataCopyWith(_CoreData<T> value, $Res Function(_CoreData<T>) then) = __$CoreDataCopyWithImpl<T, $Res>;
  
  $Res call({CoreDataFailure<T> coreDataFailure});
  
  $CoreDataFailureCopyWith<T, $Res> get coreDataFailure;
}

/// @nodoc
class __$CoreDataCopyWithImpl<T, $Res> extends _$FailureCopyWithImpl<T, $Res> implements _$CoreDataCopyWith<T, $Res> {
  __$CoreDataCopyWithImpl(_CoreData<T> _value, $Res Function(_CoreData<T>) _then) : super(_value, (v) => _then(v as _CoreData<T>));
  
  @override
  _CoreData<T> get _value => super._value as _CoreData<T>;
  
  @override
  $Res call({
    Object coreDataFailure = freezed,
  }) {
    return _then(_CoreData<T>(
      coreDataFailure == freezed ? _value.coreDataFailure : coreDataFailure as CoreDataFailure<T>,
    ));
  }

  @override
  $CoreDataFailureCopyWith<T, $Res> get coreDataFailure {
    if (_value.coreDataFailure == null) {
      return null;
    }
    return $CoreDataFailureCopyWith<T, $Res>(_value.coreDataFailure, (value) {
      return _then(_value.copyWith(coreDataFailure: value));
    });
  }
}

/// @nodoc
class _$_CoreData<T> implements _CoreData<T> {
  const _$_CoreData(this.coreDataFailure) : assert(coreDataFailure != null);

  @override
  final CoreDataFailure<T> coreDataFailure;

  @override
  String toString() {
    return 'Failure<$T>.coreData(coreDataFailure: $coreDataFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CoreData<T> && (identical(other.coreDataFailure, coreDataFailure) || const DeepCollectionEquality().equals(other.coreDataFailure, coreDataFailure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(coreDataFailure);

  @override
  _$CoreDataCopyWith<T, _CoreData<T>> get copyWith => __$CoreDataCopyWithImpl<T, _CoreData<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticationDomain(AuthenticationDomainFailure<T> authenticationDomainFailure),
    @required Result authenticationData(AuthenticationDataFailure<T> authenticationDataFailure),
    @required Result coreDomain(CoreDomainFailure<T> coreDomainFailure),
    @required Result coreApplication(CoreApplicationFailure<T> coreApplicationFailure),
    @required Result coreData(CoreDataFailure<T> coreDataFailure),
    @required Result value(ValueFailure<T> valueFailure),
    @required Result profileDomain(ProfileDomainFailure<T> profileDomainFailure),
  }) {
    assert(authenticationDomain != null);
    assert(authenticationData != null);
    assert(coreDomain != null);
    assert(coreApplication != null);
    assert(coreData != null);
    assert(value != null);
    assert(profileDomain != null);
    return coreData(coreDataFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticationDomain(AuthenticationDomainFailure<T> authenticationDomainFailure),
    Result authenticationData(AuthenticationDataFailure<T> authenticationDataFailure),
    Result coreDomain(CoreDomainFailure<T> coreDomainFailure),
    Result coreApplication(CoreApplicationFailure<T> coreApplicationFailure),
    Result coreData(CoreDataFailure<T> coreDataFailure),
    Result value(ValueFailure<T> valueFailure),
    Result profileDomain(ProfileDomainFailure<T> profileDomainFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (coreData != null) {
      return coreData(coreDataFailure);
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
    @required Result profileDomain(_ProfileDomain<T> value),
  }) {
    assert(authenticationDomain != null);
    assert(authenticationData != null);
    assert(coreDomain != null);
    assert(coreApplication != null);
    assert(coreData != null);
    assert(value != null);
    assert(profileDomain != null);
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
    Result profileDomain(_ProfileDomain<T> value),
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
  const factory _CoreData(CoreDataFailure<T> coreDataFailure) = _$_CoreData<T>;

  CoreDataFailure<T> get coreDataFailure;
  _$CoreDataCopyWith<T, _CoreData<T>> get copyWith;
}

/// @nodoc
abstract class _$ValueCopyWith<T, $Res> {
  factory _$ValueCopyWith(_Value<T> value, $Res Function(_Value<T>) then) = __$ValueCopyWithImpl<T, $Res>;
  
  $Res call({ValueFailure<T> valueFailure});
  
  $ValueFailureCopyWith<T, $Res> get valueFailure;
}

/// @nodoc
class __$ValueCopyWithImpl<T, $Res> extends _$FailureCopyWithImpl<T, $Res> implements _$ValueCopyWith<T, $Res> {
  __$ValueCopyWithImpl(_Value<T> _value, $Res Function(_Value<T>) _then) : super(_value, (v) => _then(v as _Value<T>));
  
  @override
  _Value<T> get _value => super._value as _Value<T>;
  
  @override
  $Res call({
    Object valueFailure = freezed,
  }) {
    return _then(_Value<T>(
      valueFailure == freezed ? _value.valueFailure : valueFailure as ValueFailure<T>,
    ));
  }

  @override
  $ValueFailureCopyWith<T, $Res> get valueFailure {
    if (_value.valueFailure == null) {
      return null;
    }
    return $ValueFailureCopyWith<T, $Res>(_value.valueFailure, (value) {
      return _then(_value.copyWith(valueFailure: value));
    });
  }
}

/// @nodoc
class _$_Value<T> implements _Value<T> {
  const _$_Value(this.valueFailure) : assert(valueFailure != null);

  @override
  final ValueFailure<T> valueFailure;

  @override
  String toString() {
    return 'Failure<$T>.value(valueFailure: $valueFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Value<T> && (identical(other.valueFailure, valueFailure) || const DeepCollectionEquality().equals(other.valueFailure, valueFailure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(valueFailure);

  @override
  _$ValueCopyWith<T, _Value<T>> get copyWith => __$ValueCopyWithImpl<T, _Value<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticationDomain(AuthenticationDomainFailure<T> authenticationDomainFailure),
    @required Result authenticationData(AuthenticationDataFailure<T> authenticationDataFailure),
    @required Result coreDomain(CoreDomainFailure<T> coreDomainFailure),
    @required Result coreApplication(CoreApplicationFailure<T> coreApplicationFailure),
    @required Result coreData(CoreDataFailure<T> coreDataFailure),
    @required Result value(ValueFailure<T> valueFailure),
    @required Result profileDomain(ProfileDomainFailure<T> profileDomainFailure),
  }) {
    assert(authenticationDomain != null);
    assert(authenticationData != null);
    assert(coreDomain != null);
    assert(coreApplication != null);
    assert(coreData != null);
    assert(value != null);
    assert(profileDomain != null);
    return value(valueFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticationDomain(AuthenticationDomainFailure<T> authenticationDomainFailure),
    Result authenticationData(AuthenticationDataFailure<T> authenticationDataFailure),
    Result coreDomain(CoreDomainFailure<T> coreDomainFailure),
    Result coreApplication(CoreApplicationFailure<T> coreApplicationFailure),
    Result coreData(CoreDataFailure<T> coreDataFailure),
    Result value(ValueFailure<T> valueFailure),
    Result profileDomain(ProfileDomainFailure<T> profileDomainFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (value != null) {
      return value(valueFailure);
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
    @required Result profileDomain(_ProfileDomain<T> value),
  }) {
    assert(authenticationDomain != null);
    assert(authenticationData != null);
    assert(coreDomain != null);
    assert(coreApplication != null);
    assert(coreData != null);
    assert(value != null);
    assert(profileDomain != null);
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
    Result profileDomain(_ProfileDomain<T> value),
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
  const factory _Value(ValueFailure<T> valueFailure) = _$_Value<T>;

  ValueFailure<T> get valueFailure;
  _$ValueCopyWith<T, _Value<T>> get copyWith;
}

/// @nodoc
abstract class _$ProfileDomainCopyWith<T, $Res> {
  factory _$ProfileDomainCopyWith(_ProfileDomain<T> value, $Res Function(_ProfileDomain<T>) then) = __$ProfileDomainCopyWithImpl<T, $Res>;
  
  $Res call({ProfileDomainFailure<T> profileDomainFailure});
  
  $ProfileDomainFailureCopyWith<T, $Res> get profileDomainFailure;
}

/// @nodoc
class __$ProfileDomainCopyWithImpl<T, $Res> extends _$FailureCopyWithImpl<T, $Res> implements _$ProfileDomainCopyWith<T, $Res> {
  __$ProfileDomainCopyWithImpl(_ProfileDomain<T> _value, $Res Function(_ProfileDomain<T>) _then) : super(_value, (v) => _then(v as _ProfileDomain<T>));
  
  @override
  _ProfileDomain<T> get _value => super._value as _ProfileDomain<T>;
  
  @override
  $Res call({
    Object profileDomainFailure = freezed,
  }) {
    return _then(_ProfileDomain<T>(
      profileDomainFailure == freezed ? _value.profileDomainFailure : profileDomainFailure as ProfileDomainFailure<T>,
    ));
  }

  @override
  $ProfileDomainFailureCopyWith<T, $Res> get profileDomainFailure {
    if (_value.profileDomainFailure == null) {
      return null;
    }
    return $ProfileDomainFailureCopyWith<T, $Res>(_value.profileDomainFailure, (value) {
      return _then(_value.copyWith(profileDomainFailure: value));
    });
  }
}

/// @nodoc
class _$_ProfileDomain<T> implements _ProfileDomain<T> {
  const _$_ProfileDomain(this.profileDomainFailure) : assert(profileDomainFailure != null);
  
  @override
  final ProfileDomainFailure<T> profileDomainFailure;
  
  @override
  String toString() {
    return 'Failure<$T>.profileDomain(profileDomainFailure: $profileDomainFailure)';
  }
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _ProfileDomain<T> && (identical(other.profileDomainFailure, profileDomainFailure) || const DeepCollectionEquality().equals(other.profileDomainFailure, profileDomainFailure)));
  }
  
  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(profileDomainFailure);
  
  @override
  _$ProfileDomainCopyWith<T, _ProfileDomain<T>> get copyWith => __$ProfileDomainCopyWithImpl<T, _ProfileDomain<T>>(this, _$identity);
  
  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticationDomain(AuthenticationDomainFailure<T> authenticationDomainFailure),
    @required Result authenticationData(AuthenticationDataFailure<T> authenticationDataFailure),
    @required Result coreDomain(CoreDomainFailure<T> coreDomainFailure),
    @required Result coreApplication(CoreApplicationFailure<T> coreApplicationFailure),
    @required Result coreData(CoreDataFailure<T> coreDataFailure),
    @required Result value(ValueFailure<T> valueFailure),
    @required Result profileDomain(ProfileDomainFailure<T> profileDomainFailure),
  }) {
    assert(authenticationDomain != null);
    assert(authenticationData != null);
    assert(coreDomain != null);
    assert(coreApplication != null);
    assert(coreData != null);
    assert(value != null);
    assert(profileDomain != null);
    return profileDomain(profileDomainFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticationDomain(AuthenticationDomainFailure<T> authenticationDomainFailure),
    Result authenticationData(AuthenticationDataFailure<T> authenticationDataFailure),
    Result coreDomain(CoreDomainFailure<T> coreDomainFailure),
    Result coreApplication(CoreApplicationFailure<T> coreApplicationFailure),
    Result coreData(CoreDataFailure<T> coreDataFailure),
    Result value(ValueFailure<T> valueFailure),
    Result profileDomain(ProfileDomainFailure<T> profileDomainFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (profileDomain != null) {
      return profileDomain(profileDomainFailure);
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
    @required Result profileDomain(_ProfileDomain<T> value),
  }) {
    assert(authenticationDomain != null);
    assert(authenticationData != null);
    assert(coreDomain != null);
    assert(coreApplication != null);
    assert(coreData != null);
    assert(value != null);
    assert(profileDomain != null);
    return profileDomain(this);
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
    Result profileDomain(_ProfileDomain<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (profileDomain != null) {
      return profileDomain(this);
    }
    return orElse();
  }
}

abstract class _ProfileDomain<T> implements Failure<T> {
  const factory _ProfileDomain(ProfileDomainFailure<T> profileDomainFailure) = _$_ProfileDomain<T>;
  
  ProfileDomainFailure<T> get profileDomainFailure;
  
  _$ProfileDomainCopyWith<T, _ProfileDomain<T>> get copyWith;
}
