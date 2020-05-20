// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'core_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CoreFailureTearOff {
  const _$CoreFailureTearOff();

  UnknownDomainLayerError unknownDomainLayerError() {
    return const UnknownDomainLayerError();
  }

  ServerError serverError() {
    return const ServerError();
  }

  NotFoundError notFoundError() {
    return const NotFoundError();
  }

  CacheError cacheError() {
    return const CacheError();
  }
}

// ignore: unused_element
const $CoreFailure = _$CoreFailureTearOff();

mixin _$CoreFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unknownDomainLayerError(),
    @required Result serverError(),
    @required Result notFoundError(),
    @required Result cacheError(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknownDomainLayerError(),
    Result serverError(),
    Result notFoundError(),
    Result cacheError(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknownDomainLayerError(UnknownDomainLayerError value),
    @required Result serverError(ServerError value),
    @required Result notFoundError(NotFoundError value),
    @required Result cacheError(CacheError value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknownDomainLayerError(UnknownDomainLayerError value),
    Result serverError(ServerError value),
    Result notFoundError(NotFoundError value),
    Result cacheError(CacheError value),
    @required Result orElse(),
  });
}

abstract class $CoreFailureCopyWith<$Res> {
  factory $CoreFailureCopyWith(CoreFailure value, $Res Function(CoreFailure) then) = _$CoreFailureCopyWithImpl<$Res>;
}

class _$CoreFailureCopyWithImpl<$Res> implements $CoreFailureCopyWith<$Res> {
  _$CoreFailureCopyWithImpl(this._value, this._then);

  final CoreFailure _value;

  // ignore: unused_field
  final $Res Function(CoreFailure) _then;
}

abstract class $UnknownDomainLayerErrorCopyWith<$Res> {
  factory $UnknownDomainLayerErrorCopyWith(UnknownDomainLayerError value, $Res Function(UnknownDomainLayerError) then) = _$UnknownDomainLayerErrorCopyWithImpl<$Res>;
}

class _$UnknownDomainLayerErrorCopyWithImpl<$Res> extends _$CoreFailureCopyWithImpl<$Res> implements $UnknownDomainLayerErrorCopyWith<$Res> {
  _$UnknownDomainLayerErrorCopyWithImpl(UnknownDomainLayerError _value, $Res Function(UnknownDomainLayerError) _then) : super(_value, (v) => _then(v as UnknownDomainLayerError));

  @override
  UnknownDomainLayerError get _value => super._value as UnknownDomainLayerError;
}

class _$UnknownDomainLayerError with DiagnosticableTreeMixin implements UnknownDomainLayerError {
  const _$UnknownDomainLayerError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CoreFailure.unknownDomainLayerError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CoreFailure.unknownDomainLayerError'));
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
    @required Result serverError(),
    @required Result notFoundError(),
    @required Result cacheError(),
  }) {
    assert(unknownDomainLayerError != null);
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    return unknownDomainLayerError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknownDomainLayerError(),
    Result serverError(),
    Result notFoundError(),
    Result cacheError(),
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
    @required Result serverError(ServerError value),
    @required Result notFoundError(NotFoundError value),
    @required Result cacheError(CacheError value),
  }) {
    assert(unknownDomainLayerError != null);
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    return unknownDomainLayerError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknownDomainLayerError(UnknownDomainLayerError value),
    Result serverError(ServerError value),
    Result notFoundError(NotFoundError value),
    Result cacheError(CacheError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknownDomainLayerError != null) {
      return unknownDomainLayerError(this);
    }
    return orElse();
  }
}

abstract class UnknownDomainLayerError implements CoreFailure {
  const factory UnknownDomainLayerError() = _$UnknownDomainLayerError;
}

abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(ServerError value, $Res Function(ServerError) then) = _$ServerErrorCopyWithImpl<$Res>;
}

class _$ServerErrorCopyWithImpl<$Res> extends _$CoreFailureCopyWithImpl<$Res> implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(ServerError _value, $Res Function(ServerError) _then) : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

class _$ServerError with DiagnosticableTreeMixin implements ServerError {
  const _$ServerError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CoreFailure.serverError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CoreFailure.serverError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unknownDomainLayerError(),
    @required Result serverError(),
    @required Result notFoundError(),
    @required Result cacheError(),
  }) {
    assert(unknownDomainLayerError != null);
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknownDomainLayerError(),
    Result serverError(),
    Result notFoundError(),
    Result cacheError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknownDomainLayerError(UnknownDomainLayerError value),
    @required Result serverError(ServerError value),
    @required Result notFoundError(NotFoundError value),
    @required Result cacheError(CacheError value),
  }) {
    assert(unknownDomainLayerError != null);
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknownDomainLayerError(UnknownDomainLayerError value),
    Result serverError(ServerError value),
    Result notFoundError(NotFoundError value),
    Result cacheError(CacheError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements CoreFailure {
  const factory ServerError() = _$ServerError;
}

abstract class $NotFoundErrorCopyWith<$Res> {
  factory $NotFoundErrorCopyWith(NotFoundError value, $Res Function(NotFoundError) then) = _$NotFoundErrorCopyWithImpl<$Res>;
}

class _$NotFoundErrorCopyWithImpl<$Res> extends _$CoreFailureCopyWithImpl<$Res> implements $NotFoundErrorCopyWith<$Res> {
  _$NotFoundErrorCopyWithImpl(NotFoundError _value, $Res Function(NotFoundError) _then) : super(_value, (v) => _then(v as NotFoundError));

  @override
  NotFoundError get _value => super._value as NotFoundError;
}

class _$NotFoundError with DiagnosticableTreeMixin implements NotFoundError {
  const _$NotFoundError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CoreFailure.notFoundError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CoreFailure.notFoundError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotFoundError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unknownDomainLayerError(),
    @required Result serverError(),
    @required Result notFoundError(),
    @required Result cacheError(),
  }) {
    assert(unknownDomainLayerError != null);
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    return notFoundError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknownDomainLayerError(),
    Result serverError(),
    Result notFoundError(),
    Result cacheError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFoundError != null) {
      return notFoundError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknownDomainLayerError(UnknownDomainLayerError value),
    @required Result serverError(ServerError value),
    @required Result notFoundError(NotFoundError value),
    @required Result cacheError(CacheError value),
  }) {
    assert(unknownDomainLayerError != null);
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    return notFoundError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknownDomainLayerError(UnknownDomainLayerError value),
    Result serverError(ServerError value),
    Result notFoundError(NotFoundError value),
    Result cacheError(CacheError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFoundError != null) {
      return notFoundError(this);
    }
    return orElse();
  }
}

abstract class NotFoundError implements CoreFailure {
  const factory NotFoundError() = _$NotFoundError;
}

abstract class $CacheErrorCopyWith<$Res> {
  factory $CacheErrorCopyWith(CacheError value, $Res Function(CacheError) then) = _$CacheErrorCopyWithImpl<$Res>;
}

class _$CacheErrorCopyWithImpl<$Res> extends _$CoreFailureCopyWithImpl<$Res> implements $CacheErrorCopyWith<$Res> {
  _$CacheErrorCopyWithImpl(CacheError _value, $Res Function(CacheError) _then) : super(_value, (v) => _then(v as CacheError));

  @override
  CacheError get _value => super._value as CacheError;
}

class _$CacheError with DiagnosticableTreeMixin implements CacheError {
  const _$CacheError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CoreFailure.cacheError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CoreFailure.cacheError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CacheError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unknownDomainLayerError(),
    @required Result serverError(),
    @required Result notFoundError(),
    @required Result cacheError(),
  }) {
    assert(unknownDomainLayerError != null);
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    return cacheError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknownDomainLayerError(),
    Result serverError(),
    Result notFoundError(),
    Result cacheError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cacheError != null) {
      return cacheError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknownDomainLayerError(UnknownDomainLayerError value),
    @required Result serverError(ServerError value),
    @required Result notFoundError(NotFoundError value),
    @required Result cacheError(CacheError value),
  }) {
    assert(unknownDomainLayerError != null);
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    return cacheError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknownDomainLayerError(UnknownDomainLayerError value),
    Result serverError(ServerError value),
    Result notFoundError(NotFoundError value),
    Result cacheError(CacheError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cacheError != null) {
      return cacheError(this);
    }
    return orElse();
  }
}

abstract class CacheError implements CoreFailure {
  const factory CacheError() = _$CacheError;
}
