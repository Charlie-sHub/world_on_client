// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'store_data_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StoreDataFailureTearOff {
  const _$StoreDataFailureTearOff();

// ignore: unused_element
  NotEnoughCoins<T> notEnoughCoins<T>() {
    return NotEnoughCoins<T>();
  }

// ignore: unused_element
  Cancelled<T> cancelled<T>() {
    return Cancelled<T>();
  }
}

/// @nodoc
// ignore: unused_element
const $StoreDataFailure = _$StoreDataFailureTearOff();

/// @nodoc
mixin _$StoreDataFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult notEnoughCoins(),
    @required TResult cancelled(),
  });

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult notEnoughCoins(),
    TResult cancelled(),
    @required TResult orElse(),
  });

  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult notEnoughCoins(NotEnoughCoins<T> value),
    @required TResult cancelled(Cancelled<T> value),
  });

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult notEnoughCoins(NotEnoughCoins<T> value),
    TResult cancelled(Cancelled<T> value),
    @required TResult orElse(),
  });
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
  TResult when<TResult extends Object>({
    @required TResult notEnoughCoins(),
    @required TResult cancelled(),
  }) {
    assert(notEnoughCoins != null);
    assert(cancelled != null);
    return notEnoughCoins();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult notEnoughCoins(),
    TResult cancelled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notEnoughCoins != null) {
      return notEnoughCoins();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult notEnoughCoins(NotEnoughCoins<T> value),
    @required TResult cancelled(Cancelled<T> value),
  }) {
    assert(notEnoughCoins != null);
    assert(cancelled != null);
    return notEnoughCoins(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult notEnoughCoins(NotEnoughCoins<T> value),
    TResult cancelled(Cancelled<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
  TResult when<TResult extends Object>({
    @required TResult notEnoughCoins(),
    @required TResult cancelled(),
  }) {
    assert(notEnoughCoins != null);
    assert(cancelled != null);
    return cancelled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult notEnoughCoins(),
    TResult cancelled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cancelled != null) {
      return cancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult notEnoughCoins(NotEnoughCoins<T> value),
    @required TResult cancelled(Cancelled<T> value),
  }) {
    assert(notEnoughCoins != null);
    assert(cancelled != null);
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult notEnoughCoins(NotEnoughCoins<T> value),
    TResult cancelled(Cancelled<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class Cancelled<T> implements StoreDataFailure<T> {
  const factory Cancelled() = _$Cancelled<T>;
}
