// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'authentication_domain_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthenticationDomainFailureTearOff {
  const _$AuthenticationDomainFailureTearOff();

  CancelledByUser cancelledByUser() {
    return const CancelledByUser();
  }
}

// ignore: unused_element
const $AuthenticationDomainFailure = _$AuthenticationDomainFailureTearOff();

mixin _$AuthenticationDomainFailure {}

abstract class $AuthenticationDomainFailureCopyWith<$Res> {
  factory $AuthenticationDomainFailureCopyWith(AuthenticationDomainFailure value, $Res Function(AuthenticationDomainFailure) then) = _$AuthenticationDomainFailureCopyWithImpl<$Res>;
}

class _$AuthenticationDomainFailureCopyWithImpl<$Res> implements $AuthenticationDomainFailureCopyWith<$Res> {
  _$AuthenticationDomainFailureCopyWithImpl(this._value, this._then);

  final AuthenticationDomainFailure _value;

  // ignore: unused_field
  final $Res Function(AuthenticationDomainFailure) _then;
}

abstract class $CancelledByUserCopyWith<$Res> {
  factory $CancelledByUserCopyWith(CancelledByUser value, $Res Function(CancelledByUser) then) = _$CancelledByUserCopyWithImpl<$Res>;
}

class _$CancelledByUserCopyWithImpl<$Res> extends _$AuthenticationDomainFailureCopyWithImpl<$Res> implements $CancelledByUserCopyWith<$Res> {
  _$CancelledByUserCopyWithImpl(CancelledByUser _value, $Res Function(CancelledByUser) _then) : super(_value, (v) => _then(v as CancelledByUser));

  @override
  CancelledByUser get _value => super._value as CancelledByUser;
}

class _$CancelledByUser with DiagnosticableTreeMixin implements CancelledByUser {
  const _$CancelledByUser();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationDomainFailure.cancelledByUser()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthenticationDomainFailure.cancelledByUser'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class CancelledByUser implements AuthenticationDomainFailure {
  const factory CancelledByUser() = _$CancelledByUser;
}
