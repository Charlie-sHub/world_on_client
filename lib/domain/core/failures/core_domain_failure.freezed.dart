// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'core_domain_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CoreDomainFailureTearOff {
  const _$CoreDomainFailureTearOff();

  UnknownDomainLayerError unknownDomainLayerError() {
    return const UnknownDomainLayerError();
  }

  UnAuthorizedError unAuthorizedError() {
    return const UnAuthorizedError();
  }
}

// ignore: unused_element
const $CoreDomainFailure = _$CoreDomainFailureTearOff();

mixin _$CoreDomainFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unknownDomainLayerError(),
    @required Result unAuthorizedError(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknownDomainLayerError(),
    Result unAuthorizedError(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknownDomainLayerError(UnknownDomainLayerError value),
    @required Result unAuthorizedError(UnAuthorizedError value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknownDomainLayerError(UnknownDomainLayerError value),
    Result unAuthorizedError(UnAuthorizedError value),
    @required Result orElse(),
  });
}

abstract class $CoreDomainFailureCopyWith<$Res> {
  factory $CoreDomainFailureCopyWith(CoreDomainFailure value, $Res Function(CoreDomainFailure) then) = _$CoreDomainFailureCopyWithImpl<$Res>;
}

class _$CoreDomainFailureCopyWithImpl<$Res> implements $CoreDomainFailureCopyWith<$Res> {
  _$CoreDomainFailureCopyWithImpl(this._value, this._then);

  final CoreDomainFailure _value;

  // ignore: unused_field
  final $Res Function(CoreDomainFailure) _then;
}

abstract class $UnknownDomainLayerErrorCopyWith<$Res> {
  factory $UnknownDomainLayerErrorCopyWith(UnknownDomainLayerError value, $Res Function(UnknownDomainLayerError) then) = _$UnknownDomainLayerErrorCopyWithImpl<$Res>;
}

class _$UnknownDomainLayerErrorCopyWithImpl<$Res> extends _$CoreDomainFailureCopyWithImpl<$Res> implements $UnknownDomainLayerErrorCopyWith<$Res> {
  _$UnknownDomainLayerErrorCopyWithImpl(UnknownDomainLayerError _value, $Res Function(UnknownDomainLayerError) _then) : super(_value, (v) => _then(v as UnknownDomainLayerError));

  @override
  UnknownDomainLayerError get _value => super._value as UnknownDomainLayerError;
}

class _$UnknownDomainLayerError implements UnknownDomainLayerError {
  const _$UnknownDomainLayerError();

  @override
  String toString() {
    return 'CoreDomainFailure.unknownDomainLayerError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnknownDomainLayerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unknownDomainLayerError(),
    @required Result unAuthorizedError(),
  }) {
    assert(unknownDomainLayerError != null);
    assert(unAuthorizedError != null);
    return unknownDomainLayerError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknownDomainLayerError(),
    Result unAuthorizedError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknownDomainLayerError != null) {
      return unknownDomainLayerError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknownDomainLayerError(UnknownDomainLayerError value),
    @required Result unAuthorizedError(UnAuthorizedError value),
  }) {
    assert(unknownDomainLayerError != null);
    assert(unAuthorizedError != null);
    return unknownDomainLayerError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknownDomainLayerError(UnknownDomainLayerError value),
    Result unAuthorizedError(UnAuthorizedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknownDomainLayerError != null) {
      return unknownDomainLayerError(this);
    }
    return orElse();
  }
}

abstract class UnknownDomainLayerError implements CoreDomainFailure {
  const factory UnknownDomainLayerError() = _$UnknownDomainLayerError;
}

abstract class $UnAuthorizedErrorCopyWith<$Res> {
  factory $UnAuthorizedErrorCopyWith(UnAuthorizedError value, $Res Function(UnAuthorizedError) then) = _$UnAuthorizedErrorCopyWithImpl<$Res>;
}

class _$UnAuthorizedErrorCopyWithImpl<$Res> extends _$CoreDomainFailureCopyWithImpl<$Res> implements $UnAuthorizedErrorCopyWith<$Res> {
  _$UnAuthorizedErrorCopyWithImpl(UnAuthorizedError _value, $Res Function(UnAuthorizedError) _then) : super(_value, (v) => _then(v as UnAuthorizedError));

  @override
  UnAuthorizedError get _value => super._value as UnAuthorizedError;
}

class _$UnAuthorizedError implements UnAuthorizedError {
  const _$UnAuthorizedError();

  @override
  String toString() {
    return 'CoreDomainFailure.unAuthorizedError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnAuthorizedError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unknownDomainLayerError(),
    @required Result unAuthorizedError(),
  }) {
    assert(unknownDomainLayerError != null);
    assert(unAuthorizedError != null);
    return unAuthorizedError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknownDomainLayerError(),
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
    @required Result unknownDomainLayerError(UnknownDomainLayerError value),
    @required Result unAuthorizedError(UnAuthorizedError value),
  }) {
    assert(unknownDomainLayerError != null);
    assert(unAuthorizedError != null);
    return unAuthorizedError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknownDomainLayerError(UnknownDomainLayerError value),
    Result unAuthorizedError(UnAuthorizedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unAuthorizedError != null) {
      return unAuthorizedError(this);
    }
    return orElse();
  }
}

abstract class UnAuthorizedError implements CoreDomainFailure {
  const factory UnAuthorizedError() = _$UnAuthorizedError;
}
