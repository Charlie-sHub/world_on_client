// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'buy_coins_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BuyCoinsEventTearOff {
  const _$BuyCoinsEventTearOff();

// ignore: unused_element
  _BoughtCoins boughtCoins(int amount) {
    return _BoughtCoins(
      amount,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BuyCoinsEvent = _$BuyCoinsEventTearOff();

/// @nodoc
mixin _$BuyCoinsEvent {
  int get amount;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult boughtCoins(int amount),
  });

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult boughtCoins(int amount),
    @required TResult orElse(),
  });

  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult boughtCoins(_BoughtCoins value),
  });

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult boughtCoins(_BoughtCoins value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $BuyCoinsEventCopyWith<BuyCoinsEvent> get copyWith;
}

/// @nodoc
abstract class $BuyCoinsEventCopyWith<$Res> {
  factory $BuyCoinsEventCopyWith(BuyCoinsEvent value, $Res Function(BuyCoinsEvent) then) = _$BuyCoinsEventCopyWithImpl<$Res>;

  $Res call({int amount});
}

/// @nodoc
class _$BuyCoinsEventCopyWithImpl<$Res> implements $BuyCoinsEventCopyWith<$Res> {
  _$BuyCoinsEventCopyWithImpl(this._value, this._then);

  final BuyCoinsEvent _value;

  // ignore: unused_field
  final $Res Function(BuyCoinsEvent) _then;

  @override
  $Res call({
    Object amount = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed ? _value.amount : amount as int,
    ));
  }
}

/// @nodoc
abstract class _$BoughtCoinsCopyWith<$Res> implements $BuyCoinsEventCopyWith<$Res> {
  factory _$BoughtCoinsCopyWith(_BoughtCoins value, $Res Function(_BoughtCoins) then) = __$BoughtCoinsCopyWithImpl<$Res>;

  @override
  $Res call({int amount});
}

/// @nodoc
class __$BoughtCoinsCopyWithImpl<$Res> extends _$BuyCoinsEventCopyWithImpl<$Res> implements _$BoughtCoinsCopyWith<$Res> {
  __$BoughtCoinsCopyWithImpl(_BoughtCoins _value, $Res Function(_BoughtCoins) _then) : super(_value, (v) => _then(v as _BoughtCoins));

  @override
  _BoughtCoins get _value => super._value as _BoughtCoins;

  @override
  $Res call({
    Object amount = freezed,
  }) {
    return _then(_BoughtCoins(
      amount == freezed ? _value.amount : amount as int,
    ));
  }
}

/// @nodoc
class _$_BoughtCoins implements _BoughtCoins {
  const _$_BoughtCoins(this.amount) : assert(amount != null);

  @override
  final int amount;

  @override
  String toString() {
    return 'BuyCoinsEvent.boughtCoins(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BoughtCoins && (identical(other.amount, amount) || const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  _$BoughtCoinsCopyWith<_BoughtCoins> get copyWith => __$BoughtCoinsCopyWithImpl<_BoughtCoins>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult boughtCoins(int amount),
  }) {
    assert(boughtCoins != null);
    return boughtCoins(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult boughtCoins(int amount),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (boughtCoins != null) {
      return boughtCoins(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult boughtCoins(_BoughtCoins value),
  }) {
    assert(boughtCoins != null);
    return boughtCoins(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult boughtCoins(_BoughtCoins value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (boughtCoins != null) {
      return boughtCoins(this);
    }
    return orElse();
  }
}

abstract class _BoughtCoins implements BuyCoinsEvent {
  const factory _BoughtCoins(int amount) = _$_BoughtCoins;

  @override
  int get amount;

  @override
  @JsonKey(ignore: true)
  _$BoughtCoinsCopyWith<_BoughtCoins> get copyWith;
}

/// @nodoc
class _$BuyCoinsStateTearOff {
  const _$BuyCoinsStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _PurchaseSuccess purchaseSuccess() {
    return const _PurchaseSuccess();
  }

// ignore: unused_element
  _PurchaseFailure purchaseFailure(Failure<dynamic> failure) {
    return _PurchaseFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BuyCoinsState = _$BuyCoinsStateTearOff();

/// @nodoc
mixin _$BuyCoinsState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult purchaseSuccess(),
    @required TResult purchaseFailure(Failure<dynamic> failure),
  });

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult purchaseSuccess(),
    TResult purchaseFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult purchaseSuccess(_PurchaseSuccess value),
    @required TResult purchaseFailure(_PurchaseFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult purchaseSuccess(_PurchaseSuccess value),
    TResult purchaseFailure(_PurchaseFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BuyCoinsStateCopyWith<$Res> {
  factory $BuyCoinsStateCopyWith(BuyCoinsState value, $Res Function(BuyCoinsState) then) = _$BuyCoinsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BuyCoinsStateCopyWithImpl<$Res> implements $BuyCoinsStateCopyWith<$Res> {
  _$BuyCoinsStateCopyWithImpl(this._value, this._then);

  final BuyCoinsState _value;

  // ignore: unused_field
  final $Res Function(BuyCoinsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$BuyCoinsStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'BuyCoinsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult purchaseSuccess(),
    @required TResult purchaseFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(purchaseSuccess != null);
    assert(purchaseFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult purchaseSuccess(),
    TResult purchaseFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult purchaseSuccess(_PurchaseSuccess value),
    @required TResult purchaseFailure(_PurchaseFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(purchaseSuccess != null);
    assert(purchaseFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult purchaseSuccess(_PurchaseSuccess value),
    TResult purchaseFailure(_PurchaseFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BuyCoinsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(_ActionInProgress value, $Res Function(_ActionInProgress) then) = __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res> extends _$BuyCoinsStateCopyWithImpl<$Res> implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(_ActionInProgress _value, $Res Function(_ActionInProgress) _then) : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc
class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'BuyCoinsState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult purchaseSuccess(),
    @required TResult purchaseFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(purchaseSuccess != null);
    assert(purchaseFailure != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult purchaseSuccess(),
    TResult purchaseFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult purchaseSuccess(_PurchaseSuccess value),
    @required TResult purchaseFailure(_PurchaseFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(purchaseSuccess != null);
    assert(purchaseFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult purchaseSuccess(_PurchaseSuccess value),
    TResult purchaseFailure(_PurchaseFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements BuyCoinsState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$PurchaseSuccessCopyWith<$Res> {
  factory _$PurchaseSuccessCopyWith(_PurchaseSuccess value, $Res Function(_PurchaseSuccess) then) = __$PurchaseSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$PurchaseSuccessCopyWithImpl<$Res> extends _$BuyCoinsStateCopyWithImpl<$Res> implements _$PurchaseSuccessCopyWith<$Res> {
  __$PurchaseSuccessCopyWithImpl(_PurchaseSuccess _value, $Res Function(_PurchaseSuccess) _then) : super(_value, (v) => _then(v as _PurchaseSuccess));

  @override
  _PurchaseSuccess get _value => super._value as _PurchaseSuccess;
}

/// @nodoc
class _$_PurchaseSuccess implements _PurchaseSuccess {
  const _$_PurchaseSuccess();

  @override
  String toString() {
    return 'BuyCoinsState.purchaseSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PurchaseSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult purchaseSuccess(),
    @required TResult purchaseFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(purchaseSuccess != null);
    assert(purchaseFailure != null);
    return purchaseSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult purchaseSuccess(),
    TResult purchaseFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (purchaseSuccess != null) {
      return purchaseSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult purchaseSuccess(_PurchaseSuccess value),
    @required TResult purchaseFailure(_PurchaseFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(purchaseSuccess != null);
    assert(purchaseFailure != null);
    return purchaseSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult purchaseSuccess(_PurchaseSuccess value),
    TResult purchaseFailure(_PurchaseFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (purchaseSuccess != null) {
      return purchaseSuccess(this);
    }
    return orElse();
  }
}

abstract class _PurchaseSuccess implements BuyCoinsState {
  const factory _PurchaseSuccess() = _$_PurchaseSuccess;
}

/// @nodoc
abstract class _$PurchaseFailureCopyWith<$Res> {
  factory _$PurchaseFailureCopyWith(_PurchaseFailure value, $Res Function(_PurchaseFailure) then) = __$PurchaseFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$PurchaseFailureCopyWithImpl<$Res> extends _$BuyCoinsStateCopyWithImpl<$Res> implements _$PurchaseFailureCopyWith<$Res> {
  __$PurchaseFailureCopyWithImpl(_PurchaseFailure _value, $Res Function(_PurchaseFailure) _then) : super(_value, (v) => _then(v as _PurchaseFailure));

  @override
  _PurchaseFailure get _value => super._value as _PurchaseFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_PurchaseFailure(
      failure == freezed ? _value.failure : failure as Failure<dynamic>,
    ));
  }

  @override
  $FailureCopyWith<dynamic, $Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $FailureCopyWith<dynamic, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_PurchaseFailure implements _PurchaseFailure {
  const _$_PurchaseFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'BuyCoinsState.purchaseFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PurchaseFailure && (identical(other.failure, failure) || const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$PurchaseFailureCopyWith<_PurchaseFailure> get copyWith => __$PurchaseFailureCopyWithImpl<_PurchaseFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult purchaseSuccess(),
    @required TResult purchaseFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(purchaseSuccess != null);
    assert(purchaseFailure != null);
    return purchaseFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult purchaseSuccess(),
    TResult purchaseFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (purchaseFailure != null) {
      return purchaseFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult purchaseSuccess(_PurchaseSuccess value),
    @required TResult purchaseFailure(_PurchaseFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(purchaseSuccess != null);
    assert(purchaseFailure != null);
    return purchaseFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult purchaseSuccess(_PurchaseSuccess value),
    TResult purchaseFailure(_PurchaseFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (purchaseFailure != null) {
      return purchaseFailure(this);
    }
    return orElse();
  }
}

abstract class _PurchaseFailure implements BuyCoinsState {
  const factory _PurchaseFailure(Failure<dynamic> failure) = _$_PurchaseFailure;

  Failure<dynamic> get failure;

  @JsonKey(ignore: true)
  _$PurchaseFailureCopyWith<_PurchaseFailure> get copyWith;
}
