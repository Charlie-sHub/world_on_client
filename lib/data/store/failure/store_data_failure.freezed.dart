// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'store_data_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StoreDataFailureTearOff {
  const _$StoreDataFailureTearOff();

  NotEnoughCoins<T> notEnoughCoins<T>() {
    return NotEnoughCoins<T>();
  }

  Cancelled<T> cancelled<T>() {
    return Cancelled<T>();
  }
}

/// @nodoc
const $StoreDataFailure = _$StoreDataFailureTearOff();

/// @nodoc
mixin _$StoreDataFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notEnoughCoins,
    required TResult Function() cancelled,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notEnoughCoins,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotEnoughCoins<T> value) notEnoughCoins,
    required TResult Function(Cancelled<T> value) cancelled,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotEnoughCoins<T> value)? notEnoughCoins,
    TResult Function(Cancelled<T> value)? cancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDataFailureCopyWith<T, $Res> {
  factory $StoreDataFailureCopyWith(StoreDataFailure<T> value, $Res Function(StoreDataFailure<T>) then) = _$StoreDataFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$StoreDataFailureCopyWithImpl<T, $Res> implements $StoreDataFailureCopyWith<T, $Res> {
  _$StoreDataFailureCopyWithImpl(this._value, this._then);

  final StoreDataFailure<T> _value;

  // ignore: unused_field
  final $Res Function(StoreDataFailure<T>) _then;
}

/// @nodoc
abstract class $NotEnoughCoinsCopyWith<T, $Res> {
  factory $NotEnoughCoinsCopyWith(NotEnoughCoins<T> value, $Res Function(NotEnoughCoins<T>) then) = _$NotEnoughCoinsCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$NotEnoughCoinsCopyWithImpl<T, $Res> extends _$StoreDataFailureCopyWithImpl<T, $Res> implements $NotEnoughCoinsCopyWith<T, $Res> {
  _$NotEnoughCoinsCopyWithImpl(NotEnoughCoins<T> _value, $Res Function(NotEnoughCoins<T>) _then) : super(_value, (v) => _then(v as NotEnoughCoins<T>));

  @override
  NotEnoughCoins<T> get _value => super._value as NotEnoughCoins<T>;
}

/// @nodoc
class _$NotEnoughCoins<T> implements NotEnoughCoins<T> {
  const _$NotEnoughCoins();

  @override
  String toString() {
    return 'StoreDataFailure<$T>.notEnoughCoins()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotEnoughCoins<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notEnoughCoins,
    required TResult Function() cancelled,
  }) {
    return notEnoughCoins();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notEnoughCoins,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (notEnoughCoins != null) {
      return notEnoughCoins();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotEnoughCoins<T> value) notEnoughCoins,
    required TResult Function(Cancelled<T> value) cancelled,
  }) {
    return notEnoughCoins(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotEnoughCoins<T> value)? notEnoughCoins,
    TResult Function(Cancelled<T> value)? cancelled,
    required TResult orElse(),
  }) {
    if (notEnoughCoins != null) {
      return notEnoughCoins(this);
    }
    return orElse();
  }
}

abstract class NotEnoughCoins<T> implements StoreDataFailure<T> {
  const factory NotEnoughCoins() = _$NotEnoughCoins<T>;
}

/// @nodoc
abstract class $CancelledCopyWith<T, $Res> {
  factory $CancelledCopyWith(Cancelled<T> value, $Res Function(Cancelled<T>) then) = _$CancelledCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$CancelledCopyWithImpl<T, $Res> extends _$StoreDataFailureCopyWithImpl<T, $Res> implements $CancelledCopyWith<T, $Res> {
  _$CancelledCopyWithImpl(Cancelled<T> _value, $Res Function(Cancelled<T>) _then) : super(_value, (v) => _then(v as Cancelled<T>));

  @override
  Cancelled<T> get _value => super._value as Cancelled<T>;
}

/// @nodoc
class _$Cancelled<T> implements Cancelled<T> {
  const _$Cancelled();

  @override
  String toString() {
    return 'StoreDataFailure<$T>.cancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Cancelled<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notEnoughCoins,
    required TResult Function() cancelled,
  }) {
    return cancelled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notEnoughCoins,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotEnoughCoins<T> value) notEnoughCoins,
    required TResult Function(Cancelled<T> value) cancelled,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotEnoughCoins<T> value)? notEnoughCoins,
    TResult Function(Cancelled<T> value)? cancelled,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class Cancelled<T> implements StoreDataFailure<T> {
  const factory Cancelled() = _$Cancelled<T>;
}
