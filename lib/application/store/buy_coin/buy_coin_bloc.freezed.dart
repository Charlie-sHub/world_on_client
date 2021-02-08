// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'buy_coin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BuyCoinEventTearOff {
  const _$BuyCoinEventTearOff();

// ignore: unused_element
  _BoughtCoin boughtCoin() {
    return const _BoughtCoin();
  }
}

/// @nodoc
// ignore: unused_element
const $BuyCoinEvent = _$BuyCoinEventTearOff();

/// @nodoc
mixin _$BuyCoinEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult boughtCoin(),
  });

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult boughtCoin(),
    @required TResult orElse(),
  });

  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult boughtCoin(_BoughtCoin value),
  });

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult boughtCoin(_BoughtCoin value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BuyCoinEventCopyWith<$Res> {
  factory $BuyCoinEventCopyWith(BuyCoinEvent value, $Res Function(BuyCoinEvent) then) = _$BuyCoinEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BuyCoinEventCopyWithImpl<$Res> implements $BuyCoinEventCopyWith<$Res> {
  _$BuyCoinEventCopyWithImpl(this._value, this._then);

  final BuyCoinEvent _value;

  // ignore: unused_field
  final $Res Function(BuyCoinEvent) _then;
}

/// @nodoc
abstract class _$BoughtCoinCopyWith<$Res> {
  factory _$BoughtCoinCopyWith(_BoughtCoin value, $Res Function(_BoughtCoin) then) = __$BoughtCoinCopyWithImpl<$Res>;
}

/// @nodoc
class __$BoughtCoinCopyWithImpl<$Res> extends _$BuyCoinEventCopyWithImpl<$Res> implements _$BoughtCoinCopyWith<$Res> {
  __$BoughtCoinCopyWithImpl(_BoughtCoin _value, $Res Function(_BoughtCoin) _then) : super(_value, (v) => _then(v as _BoughtCoin));

  @override
  _BoughtCoin get _value => super._value as _BoughtCoin;
}

/// @nodoc
class _$_BoughtCoin implements _BoughtCoin {
  const _$_BoughtCoin();

  @override
  String toString() {
    return 'BuyCoinEvent.boughtCoin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BoughtCoin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult boughtCoin(),
  }) {
    assert(boughtCoin != null);
    return boughtCoin();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult boughtCoin(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (boughtCoin != null) {
      return boughtCoin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult boughtCoin(_BoughtCoin value),
  }) {
    assert(boughtCoin != null);
    return boughtCoin(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult boughtCoin(_BoughtCoin value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (boughtCoin != null) {
      return boughtCoin(this);
    }
    return orElse();
  }
}

abstract class _BoughtCoin implements BuyCoinEvent {
  const factory _BoughtCoin() = _$_BoughtCoin;
}

/// @nodoc
class _$BuyCoinStateTearOff {
  const _$BuyCoinStateTearOff();

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
const $BuyCoinState = _$BuyCoinStateTearOff();

/// @nodoc
mixin _$BuyCoinState {
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
abstract class $BuyCoinStateCopyWith<$Res> {
  factory $BuyCoinStateCopyWith(BuyCoinState value, $Res Function(BuyCoinState) then) = _$BuyCoinStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BuyCoinStateCopyWithImpl<$Res> implements $BuyCoinStateCopyWith<$Res> {
  _$BuyCoinStateCopyWithImpl(this._value, this._then);

  final BuyCoinState _value;

  // ignore: unused_field
  final $Res Function(BuyCoinState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$BuyCoinStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'BuyCoinState.initial()';
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

abstract class _Initial implements BuyCoinState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(_ActionInProgress value, $Res Function(_ActionInProgress) then) = __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res> extends _$BuyCoinStateCopyWithImpl<$Res> implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(_ActionInProgress _value, $Res Function(_ActionInProgress) _then) : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc
class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'BuyCoinState.actionInProgress()';
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

abstract class _ActionInProgress implements BuyCoinState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$PurchaseSuccessCopyWith<$Res> {
  factory _$PurchaseSuccessCopyWith(_PurchaseSuccess value, $Res Function(_PurchaseSuccess) then) = __$PurchaseSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$PurchaseSuccessCopyWithImpl<$Res> extends _$BuyCoinStateCopyWithImpl<$Res> implements _$PurchaseSuccessCopyWith<$Res> {
  __$PurchaseSuccessCopyWithImpl(_PurchaseSuccess _value, $Res Function(_PurchaseSuccess) _then) : super(_value, (v) => _then(v as _PurchaseSuccess));

  @override
  _PurchaseSuccess get _value => super._value as _PurchaseSuccess;
}

/// @nodoc
class _$_PurchaseSuccess implements _PurchaseSuccess {
  const _$_PurchaseSuccess();

  @override
  String toString() {
    return 'BuyCoinState.purchaseSuccess()';
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

abstract class _PurchaseSuccess implements BuyCoinState {
  const factory _PurchaseSuccess() = _$_PurchaseSuccess;
}

/// @nodoc
abstract class _$PurchaseFailureCopyWith<$Res> {
  factory _$PurchaseFailureCopyWith(_PurchaseFailure value, $Res Function(_PurchaseFailure) then) = __$PurchaseFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$PurchaseFailureCopyWithImpl<$Res> extends _$BuyCoinStateCopyWithImpl<$Res> implements _$PurchaseFailureCopyWith<$Res> {
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
    return 'BuyCoinState.purchaseFailure(failure: $failure)';
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

abstract class _PurchaseFailure implements BuyCoinState {
  const factory _PurchaseFailure(Failure<dynamic> failure) = _$_PurchaseFailure;

  Failure<dynamic> get failure;

  @JsonKey(ignore: true)
  _$PurchaseFailureCopyWith<_PurchaseFailure> get copyWith;
}
