// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'core_application_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoreApplicationFailureTearOff {
  const _$CoreApplicationFailureTearOff();

  UnknownApplicationLayerError<T> unknownApplicationLayerError<T>(
      {required String errorString}) {
    return UnknownApplicationLayerError<T>(
      errorString: errorString,
    );
  }

  EmptyFields<T> emptyFields<T>() {
    return EmptyFields<T>();
  }
}

/// @nodoc
const $CoreApplicationFailure = _$CoreApplicationFailureTearOff();

/// @nodoc
mixin _$CoreApplicationFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorString) unknownApplicationLayerError,
    required TResult Function() emptyFields,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorString)? unknownApplicationLayerError,
    TResult Function()? emptyFields,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownApplicationLayerError<T> value)
        unknownApplicationLayerError,
    required TResult Function(EmptyFields<T> value) emptyFields,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownApplicationLayerError<T> value)?
        unknownApplicationLayerError,
    TResult Function(EmptyFields<T> value)? emptyFields,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreApplicationFailureCopyWith<T, $Res> {
  factory $CoreApplicationFailureCopyWith(CoreApplicationFailure<T> value,
          $Res Function(CoreApplicationFailure<T>) then) =
      _$CoreApplicationFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$CoreApplicationFailureCopyWithImpl<T, $Res>
    implements $CoreApplicationFailureCopyWith<T, $Res> {
  _$CoreApplicationFailureCopyWithImpl(this._value, this._then);

  final CoreApplicationFailure<T> _value;
  // ignore: unused_field
  final $Res Function(CoreApplicationFailure<T>) _then;
}

/// @nodoc
abstract class $UnknownApplicationLayerErrorCopyWith<T, $Res> {
  factory $UnknownApplicationLayerErrorCopyWith(
          UnknownApplicationLayerError<T> value,
          $Res Function(UnknownApplicationLayerError<T>) then) =
      _$UnknownApplicationLayerErrorCopyWithImpl<T, $Res>;
  $Res call({String errorString});
}

/// @nodoc
class _$UnknownApplicationLayerErrorCopyWithImpl<T, $Res>
    extends _$CoreApplicationFailureCopyWithImpl<T, $Res>
    implements $UnknownApplicationLayerErrorCopyWith<T, $Res> {
  _$UnknownApplicationLayerErrorCopyWithImpl(
      UnknownApplicationLayerError<T> _value,
      $Res Function(UnknownApplicationLayerError<T>) _then)
      : super(_value, (v) => _then(v as UnknownApplicationLayerError<T>));

  @override
  UnknownApplicationLayerError<T> get _value =>
      super._value as UnknownApplicationLayerError<T>;

  @override
  $Res call({
    Object? errorString = freezed,
  }) {
    return _then(UnknownApplicationLayerError<T>(
      errorString: errorString == freezed
          ? _value.errorString
          : errorString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnknownApplicationLayerError<T>
    implements UnknownApplicationLayerError<T> {
  const _$UnknownApplicationLayerError({required this.errorString});

  @override
  final String errorString;

  @override
  String toString() {
    return 'CoreApplicationFailure<$T>.unknownApplicationLayerError(errorString: $errorString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnknownApplicationLayerError<T> &&
            (identical(other.errorString, errorString) ||
                const DeepCollectionEquality()
                    .equals(other.errorString, errorString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorString);

  @JsonKey(ignore: true)
  @override
  $UnknownApplicationLayerErrorCopyWith<T, UnknownApplicationLayerError<T>>
      get copyWith => _$UnknownApplicationLayerErrorCopyWithImpl<T,
          UnknownApplicationLayerError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorString) unknownApplicationLayerError,
    required TResult Function() emptyFields,
  }) {
    return unknownApplicationLayerError(errorString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorString)? unknownApplicationLayerError,
    TResult Function()? emptyFields,
    required TResult orElse(),
  }) {
    if (unknownApplicationLayerError != null) {
      return unknownApplicationLayerError(errorString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownApplicationLayerError<T> value)
        unknownApplicationLayerError,
    required TResult Function(EmptyFields<T> value) emptyFields,
  }) {
    return unknownApplicationLayerError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownApplicationLayerError<T> value)?
        unknownApplicationLayerError,
    TResult Function(EmptyFields<T> value)? emptyFields,
    required TResult orElse(),
  }) {
    if (unknownApplicationLayerError != null) {
      return unknownApplicationLayerError(this);
    }
    return orElse();
  }
}

abstract class UnknownApplicationLayerError<T>
    implements CoreApplicationFailure<T> {
  const factory UnknownApplicationLayerError({required String errorString}) =
      _$UnknownApplicationLayerError<T>;

  String get errorString => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnknownApplicationLayerErrorCopyWith<T, UnknownApplicationLayerError<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyFieldsCopyWith<T, $Res> {
  factory $EmptyFieldsCopyWith(
          EmptyFields<T> value, $Res Function(EmptyFields<T>) then) =
      _$EmptyFieldsCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$EmptyFieldsCopyWithImpl<T, $Res>
    extends _$CoreApplicationFailureCopyWithImpl<T, $Res>
    implements $EmptyFieldsCopyWith<T, $Res> {
  _$EmptyFieldsCopyWithImpl(
      EmptyFields<T> _value, $Res Function(EmptyFields<T>) _then)
      : super(_value, (v) => _then(v as EmptyFields<T>));

  @override
  EmptyFields<T> get _value => super._value as EmptyFields<T>;
}

/// @nodoc

class _$EmptyFields<T> implements EmptyFields<T> {
  const _$EmptyFields();

  @override
  String toString() {
    return 'CoreApplicationFailure<$T>.emptyFields()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyFields<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorString) unknownApplicationLayerError,
    required TResult Function() emptyFields,
  }) {
    return emptyFields();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorString)? unknownApplicationLayerError,
    TResult Function()? emptyFields,
    required TResult orElse(),
  }) {
    if (emptyFields != null) {
      return emptyFields();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownApplicationLayerError<T> value)
        unknownApplicationLayerError,
    required TResult Function(EmptyFields<T> value) emptyFields,
  }) {
    return emptyFields(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownApplicationLayerError<T> value)?
        unknownApplicationLayerError,
    TResult Function(EmptyFields<T> value)? emptyFields,
    required TResult orElse(),
  }) {
    if (emptyFields != null) {
      return emptyFields(this);
    }
    return orElse();
  }
}

abstract class EmptyFields<T> implements CoreApplicationFailure<T> {
  const factory EmptyFields() = _$EmptyFields<T>;
}
