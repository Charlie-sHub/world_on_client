// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_domain_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenticationDomainFailureTearOff {
  const _$AuthenticationDomainFailureTearOff();

  CancelledByUser<T> cancelledByUser<T>() {
    return CancelledByUser<T>();
  }
}

/// @nodoc
const $AuthenticationDomainFailure = _$AuthenticationDomainFailureTearOff();

/// @nodoc
mixin _$AuthenticationDomainFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cancelledByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationDomainFailureCopyWith<T, $Res> {
  factory $AuthenticationDomainFailureCopyWith(
          AuthenticationDomainFailure<T> value,
          $Res Function(AuthenticationDomainFailure<T>) then) =
      _$AuthenticationDomainFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$AuthenticationDomainFailureCopyWithImpl<T, $Res>
    implements $AuthenticationDomainFailureCopyWith<T, $Res> {
  _$AuthenticationDomainFailureCopyWithImpl(this._value, this._then);

  final AuthenticationDomainFailure<T> _value;
  // ignore: unused_field
  final $Res Function(AuthenticationDomainFailure<T>) _then;
}

/// @nodoc
abstract class $CancelledByUserCopyWith<T, $Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser<T> value, $Res Function(CancelledByUser<T>) then) =
      _$CancelledByUserCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$CancelledByUserCopyWithImpl<T, $Res>
    extends _$AuthenticationDomainFailureCopyWithImpl<T, $Res>
    implements $CancelledByUserCopyWith<T, $Res> {
  _$CancelledByUserCopyWithImpl(
      CancelledByUser<T> _value, $Res Function(CancelledByUser<T>) _then)
      : super(_value, (v) => _then(v as CancelledByUser<T>));

  @override
  CancelledByUser<T> get _value => super._value as CancelledByUser<T>;
}

/// @nodoc

class _$CancelledByUser<T>
    with DiagnosticableTreeMixin
    implements CancelledByUser<T> {
  const _$CancelledByUser();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationDomainFailure<$T>.cancelledByUser()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AuthenticationDomainFailure<$T>.cancelledByUser'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CancelledByUser<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cancelledByUser,
  }) {
    return cancelledByUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
  }) {
    return cancelledByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser<T> implements AuthenticationDomainFailure<T> {
  const factory CancelledByUser() = _$CancelledByUser<T>;
}
