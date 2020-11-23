// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'authentication_domain_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthenticationDomainFailureTearOff {
  const _$AuthenticationDomainFailureTearOff();

// ignore: unused_element
  CancelledByUser<T> cancelledByUser<T>() {
    return CancelledByUser<T>();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthenticationDomainFailure = _$AuthenticationDomainFailureTearOff();

/// @nodoc
mixin _$AuthenticationDomainFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult cancelledByUser(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cancelledByUser(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult cancelledByUser(CancelledByUser<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cancelledByUser(CancelledByUser<T> value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthenticationDomainFailureCopyWith<T, $Res> {
  factory $AuthenticationDomainFailureCopyWith(AuthenticationDomainFailure<T> value, $Res Function(AuthenticationDomainFailure<T>) then) = _$AuthenticationDomainFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$AuthenticationDomainFailureCopyWithImpl<T, $Res> implements $AuthenticationDomainFailureCopyWith<T, $Res> {
  _$AuthenticationDomainFailureCopyWithImpl(this._value, this._then);

  final AuthenticationDomainFailure<T> _value;

  // ignore: unused_field
  final $Res Function(AuthenticationDomainFailure<T>) _then;
}

/// @nodoc
abstract class $CancelledByUserCopyWith<T, $Res> {
  factory $CancelledByUserCopyWith(CancelledByUser<T> value, $Res Function(CancelledByUser<T>) then) = _$CancelledByUserCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$CancelledByUserCopyWithImpl<T, $Res> extends _$AuthenticationDomainFailureCopyWithImpl<T, $Res> implements $CancelledByUserCopyWith<T, $Res> {
  _$CancelledByUserCopyWithImpl(CancelledByUser<T> _value, $Res Function(CancelledByUser<T>) _then) : super(_value, (v) => _then(v as CancelledByUser<T>));

  @override
  CancelledByUser<T> get _value => super._value as CancelledByUser<T>;
}

/// @nodoc
class _$CancelledByUser<T> with DiagnosticableTreeMixin implements CancelledByUser<T> {
  const _$CancelledByUser();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationDomainFailure<$T>.cancelledByUser()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthenticationDomainFailure<$T>.cancelledByUser'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelledByUser<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult cancelledByUser(),
  }) {
    assert(cancelledByUser != null);
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cancelledByUser(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult cancelledByUser(CancelledByUser<T> value),
  }) {
    assert(cancelledByUser != null);
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cancelledByUser(CancelledByUser<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser<T> implements AuthenticationDomainFailure<T> {
  const factory CancelledByUser() = _$CancelledByUser<T>;
}
