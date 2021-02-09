// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'buy_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BuyItemEventTearOff {
  const _$BuyItemEventTearOff();

// ignore: unused_element
  _Initialized initialized(Item item) {
    return _Initialized(
      item,
    );
  }

// ignore: unused_element
  _BoughtItem boughtItem(Item item) {
    return _BoughtItem(
      item,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BuyItemEvent = _$BuyItemEventTearOff();

/// @nodoc
mixin _$BuyItemEvent {
  Item get item;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Item item),
    @required TResult boughtItem(Item item),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Item item),
    TResult boughtItem(Item item),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult boughtItem(_BoughtItem value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult boughtItem(_BoughtItem value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $BuyItemEventCopyWith<BuyItemEvent> get copyWith;
}

/// @nodoc
abstract class $BuyItemEventCopyWith<$Res> {
  factory $BuyItemEventCopyWith(BuyItemEvent value, $Res Function(BuyItemEvent) then) = _$BuyItemEventCopyWithImpl<$Res>;

  $Res call({Item item});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class _$BuyItemEventCopyWithImpl<$Res> implements $BuyItemEventCopyWith<$Res> {
  _$BuyItemEventCopyWithImpl(this._value, this._then);

  final BuyItemEvent _value;
  // ignore: unused_field
  final $Res Function(BuyItemEvent) _then;

  @override
  $Res call({
    Object item = freezed,
  }) {
    return _then(_value.copyWith(
      item: item == freezed ? _value.item : item as Item,
    ));
  }

  @override
  $ItemCopyWith<$Res> get item {
    if (_value.item == null) {
      return null;
    }
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> implements $BuyItemEventCopyWith<$Res> {
  factory _$InitializedCopyWith(_Initialized value, $Res Function(_Initialized) then) = __$InitializedCopyWithImpl<$Res>;

  @override
  $Res call({Item item});

  @override
  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$BuyItemEventCopyWithImpl<$Res> implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(_Initialized _value, $Res Function(_Initialized) _then) : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object item = freezed,
  }) {
    return _then(_Initialized(
      item == freezed ? _value.item : item as Item,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.item) : assert(item != null);

  @override
  final Item item;

  @override
  String toString() {
    return 'BuyItemEvent.initialized(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialized && (identical(other.item, item) || const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(item);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith => __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Item item),
    @required TResult boughtItem(Item item),
  }) {
    assert(initialized != null);
    assert(boughtItem != null);
    return initialized(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Item item),
    TResult boughtItem(Item item),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult boughtItem(_BoughtItem value),
  }) {
    assert(initialized != null);
    assert(boughtItem != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult boughtItem(_BoughtItem value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements BuyItemEvent {
  const factory _Initialized(Item item) = _$_Initialized;

  @override
  Item get item;
  @override
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$BoughtItemCopyWith<$Res> implements $BuyItemEventCopyWith<$Res> {
  factory _$BoughtItemCopyWith(_BoughtItem value, $Res Function(_BoughtItem) then) = __$BoughtItemCopyWithImpl<$Res>;

  @override
  $Res call({Item item});

  @override
  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$BoughtItemCopyWithImpl<$Res> extends _$BuyItemEventCopyWithImpl<$Res> implements _$BoughtItemCopyWith<$Res> {
  __$BoughtItemCopyWithImpl(_BoughtItem _value, $Res Function(_BoughtItem) _then) : super(_value, (v) => _then(v as _BoughtItem));

  @override
  _BoughtItem get _value => super._value as _BoughtItem;

  @override
  $Res call({
    Object item = freezed,
  }) {
    return _then(_BoughtItem(
      item == freezed ? _value.item : item as Item,
    ));
  }
}

/// @nodoc
class _$_BoughtItem implements _BoughtItem {
  const _$_BoughtItem(this.item) : assert(item != null);

  @override
  final Item item;

  @override
  String toString() {
    return 'BuyItemEvent.boughtItem(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BoughtItem && (identical(other.item, item) || const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(item);

  @JsonKey(ignore: true)
  @override
  _$BoughtItemCopyWith<_BoughtItem> get copyWith => __$BoughtItemCopyWithImpl<_BoughtItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Item item),
    @required TResult boughtItem(Item item),
  }) {
    assert(initialized != null);
    assert(boughtItem != null);
    return boughtItem(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Item item),
    TResult boughtItem(Item item),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (boughtItem != null) {
      return boughtItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult boughtItem(_BoughtItem value),
  }) {
    assert(initialized != null);
    assert(boughtItem != null);
    return boughtItem(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult boughtItem(_BoughtItem value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (boughtItem != null) {
      return boughtItem(this);
    }
    return orElse();
  }
}

abstract class _BoughtItem implements BuyItemEvent {
  const factory _BoughtItem(Item item) = _$_BoughtItem;

  @override
  Item get item;
  @override
  @JsonKey(ignore: true)
  _$BoughtItemCopyWith<_BoughtItem> get copyWith;
}

/// @nodoc
class _$BuyItemStateTearOff {
  const _$BuyItemStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _Owns owns() {
    return const _Owns();
  }

// ignore: unused_element
  _DoesNotOwn doesNotOwn() {
    return const _DoesNotOwn();
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
const $BuyItemState = _$BuyItemStateTearOff();

/// @nodoc
mixin _$BuyItemState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult owns(),
    @required TResult doesNotOwn(),
    @required TResult purchaseSuccess(),
    @required TResult purchaseFailure(Failure<dynamic> failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult owns(),
    TResult doesNotOwn(),
    TResult purchaseSuccess(),
    TResult purchaseFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult owns(_Owns value),
    @required TResult doesNotOwn(_DoesNotOwn value),
    @required TResult purchaseSuccess(_PurchaseSuccess value),
    @required TResult purchaseFailure(_PurchaseFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult owns(_Owns value),
    TResult doesNotOwn(_DoesNotOwn value),
    TResult purchaseSuccess(_PurchaseSuccess value),
    TResult purchaseFailure(_PurchaseFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BuyItemStateCopyWith<$Res> {
  factory $BuyItemStateCopyWith(BuyItemState value, $Res Function(BuyItemState) then) = _$BuyItemStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BuyItemStateCopyWithImpl<$Res> implements $BuyItemStateCopyWith<$Res> {
  _$BuyItemStateCopyWithImpl(this._value, this._then);

  final BuyItemState _value;
  // ignore: unused_field
  final $Res Function(BuyItemState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$BuyItemStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'BuyItemState.initial()';
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
    @required TResult owns(),
    @required TResult doesNotOwn(),
    @required TResult purchaseSuccess(),
    @required TResult purchaseFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(owns != null);
    assert(doesNotOwn != null);
    assert(purchaseSuccess != null);
    assert(purchaseFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult owns(),
    TResult doesNotOwn(),
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
    @required TResult owns(_Owns value),
    @required TResult doesNotOwn(_DoesNotOwn value),
    @required TResult purchaseSuccess(_PurchaseSuccess value),
    @required TResult purchaseFailure(_PurchaseFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(owns != null);
    assert(doesNotOwn != null);
    assert(purchaseSuccess != null);
    assert(purchaseFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult owns(_Owns value),
    TResult doesNotOwn(_DoesNotOwn value),
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

abstract class _Initial implements BuyItemState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(_ActionInProgress value, $Res Function(_ActionInProgress) then) = __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res> extends _$BuyItemStateCopyWithImpl<$Res> implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(_ActionInProgress _value, $Res Function(_ActionInProgress) _then) : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc
class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'BuyItemState.actionInProgress()';
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
    @required TResult owns(),
    @required TResult doesNotOwn(),
    @required TResult purchaseSuccess(),
    @required TResult purchaseFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(owns != null);
    assert(doesNotOwn != null);
    assert(purchaseSuccess != null);
    assert(purchaseFailure != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult owns(),
    TResult doesNotOwn(),
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
    @required TResult owns(_Owns value),
    @required TResult doesNotOwn(_DoesNotOwn value),
    @required TResult purchaseSuccess(_PurchaseSuccess value),
    @required TResult purchaseFailure(_PurchaseFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(owns != null);
    assert(doesNotOwn != null);
    assert(purchaseSuccess != null);
    assert(purchaseFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult owns(_Owns value),
    TResult doesNotOwn(_DoesNotOwn value),
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

abstract class _ActionInProgress implements BuyItemState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$OwnsCopyWith<$Res> {
  factory _$OwnsCopyWith(_Owns value, $Res Function(_Owns) then) = __$OwnsCopyWithImpl<$Res>;
}

/// @nodoc
class __$OwnsCopyWithImpl<$Res> extends _$BuyItemStateCopyWithImpl<$Res> implements _$OwnsCopyWith<$Res> {
  __$OwnsCopyWithImpl(_Owns _value, $Res Function(_Owns) _then) : super(_value, (v) => _then(v as _Owns));

  @override
  _Owns get _value => super._value as _Owns;
}

/// @nodoc
class _$_Owns implements _Owns {
  const _$_Owns();

  @override
  String toString() {
    return 'BuyItemState.owns()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Owns);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult owns(),
    @required TResult doesNotOwn(),
    @required TResult purchaseSuccess(),
    @required TResult purchaseFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(owns != null);
    assert(doesNotOwn != null);
    assert(purchaseSuccess != null);
    assert(purchaseFailure != null);
    return owns();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult owns(),
    TResult doesNotOwn(),
    TResult purchaseSuccess(),
    TResult purchaseFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (owns != null) {
      return owns();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult owns(_Owns value),
    @required TResult doesNotOwn(_DoesNotOwn value),
    @required TResult purchaseSuccess(_PurchaseSuccess value),
    @required TResult purchaseFailure(_PurchaseFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(owns != null);
    assert(doesNotOwn != null);
    assert(purchaseSuccess != null);
    assert(purchaseFailure != null);
    return owns(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult owns(_Owns value),
    TResult doesNotOwn(_DoesNotOwn value),
    TResult purchaseSuccess(_PurchaseSuccess value),
    TResult purchaseFailure(_PurchaseFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (owns != null) {
      return owns(this);
    }
    return orElse();
  }
}

abstract class _Owns implements BuyItemState {
  const factory _Owns() = _$_Owns;
}

/// @nodoc
abstract class _$DoesNotOwnCopyWith<$Res> {
  factory _$DoesNotOwnCopyWith(_DoesNotOwn value, $Res Function(_DoesNotOwn) then) = __$DoesNotOwnCopyWithImpl<$Res>;
}

/// @nodoc
class __$DoesNotOwnCopyWithImpl<$Res> extends _$BuyItemStateCopyWithImpl<$Res> implements _$DoesNotOwnCopyWith<$Res> {
  __$DoesNotOwnCopyWithImpl(_DoesNotOwn _value, $Res Function(_DoesNotOwn) _then) : super(_value, (v) => _then(v as _DoesNotOwn));

  @override
  _DoesNotOwn get _value => super._value as _DoesNotOwn;
}

/// @nodoc
class _$_DoesNotOwn implements _DoesNotOwn {
  const _$_DoesNotOwn();

  @override
  String toString() {
    return 'BuyItemState.doesNotOwn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DoesNotOwn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult owns(),
    @required TResult doesNotOwn(),
    @required TResult purchaseSuccess(),
    @required TResult purchaseFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(owns != null);
    assert(doesNotOwn != null);
    assert(purchaseSuccess != null);
    assert(purchaseFailure != null);
    return doesNotOwn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult owns(),
    TResult doesNotOwn(),
    TResult purchaseSuccess(),
    TResult purchaseFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (doesNotOwn != null) {
      return doesNotOwn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult owns(_Owns value),
    @required TResult doesNotOwn(_DoesNotOwn value),
    @required TResult purchaseSuccess(_PurchaseSuccess value),
    @required TResult purchaseFailure(_PurchaseFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(owns != null);
    assert(doesNotOwn != null);
    assert(purchaseSuccess != null);
    assert(purchaseFailure != null);
    return doesNotOwn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult owns(_Owns value),
    TResult doesNotOwn(_DoesNotOwn value),
    TResult purchaseSuccess(_PurchaseSuccess value),
    TResult purchaseFailure(_PurchaseFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (doesNotOwn != null) {
      return doesNotOwn(this);
    }
    return orElse();
  }
}

abstract class _DoesNotOwn implements BuyItemState {
  const factory _DoesNotOwn() = _$_DoesNotOwn;
}

/// @nodoc
abstract class _$PurchaseSuccessCopyWith<$Res> {
  factory _$PurchaseSuccessCopyWith(_PurchaseSuccess value, $Res Function(_PurchaseSuccess) then) = __$PurchaseSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$PurchaseSuccessCopyWithImpl<$Res> extends _$BuyItemStateCopyWithImpl<$Res> implements _$PurchaseSuccessCopyWith<$Res> {
  __$PurchaseSuccessCopyWithImpl(_PurchaseSuccess _value, $Res Function(_PurchaseSuccess) _then) : super(_value, (v) => _then(v as _PurchaseSuccess));

  @override
  _PurchaseSuccess get _value => super._value as _PurchaseSuccess;
}

/// @nodoc
class _$_PurchaseSuccess implements _PurchaseSuccess {
  const _$_PurchaseSuccess();

  @override
  String toString() {
    return 'BuyItemState.purchaseSuccess()';
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
    @required TResult owns(),
    @required TResult doesNotOwn(),
    @required TResult purchaseSuccess(),
    @required TResult purchaseFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(owns != null);
    assert(doesNotOwn != null);
    assert(purchaseSuccess != null);
    assert(purchaseFailure != null);
    return purchaseSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult owns(),
    TResult doesNotOwn(),
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
    @required TResult owns(_Owns value),
    @required TResult doesNotOwn(_DoesNotOwn value),
    @required TResult purchaseSuccess(_PurchaseSuccess value),
    @required TResult purchaseFailure(_PurchaseFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(owns != null);
    assert(doesNotOwn != null);
    assert(purchaseSuccess != null);
    assert(purchaseFailure != null);
    return purchaseSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult owns(_Owns value),
    TResult doesNotOwn(_DoesNotOwn value),
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

abstract class _PurchaseSuccess implements BuyItemState {
  const factory _PurchaseSuccess() = _$_PurchaseSuccess;
}

/// @nodoc
abstract class _$PurchaseFailureCopyWith<$Res> {
  factory _$PurchaseFailureCopyWith(_PurchaseFailure value, $Res Function(_PurchaseFailure) then) = __$PurchaseFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$PurchaseFailureCopyWithImpl<$Res> extends _$BuyItemStateCopyWithImpl<$Res> implements _$PurchaseFailureCopyWith<$Res> {
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
    return 'BuyItemState.purchaseFailure(failure: $failure)';
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
    @required TResult owns(),
    @required TResult doesNotOwn(),
    @required TResult purchaseSuccess(),
    @required TResult purchaseFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(owns != null);
    assert(doesNotOwn != null);
    assert(purchaseSuccess != null);
    assert(purchaseFailure != null);
    return purchaseFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult owns(),
    TResult doesNotOwn(),
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
    @required TResult owns(_Owns value),
    @required TResult doesNotOwn(_DoesNotOwn value),
    @required TResult purchaseSuccess(_PurchaseSuccess value),
    @required TResult purchaseFailure(_PurchaseFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(owns != null);
    assert(doesNotOwn != null);
    assert(purchaseSuccess != null);
    assert(purchaseFailure != null);
    return purchaseFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult owns(_Owns value),
    TResult doesNotOwn(_DoesNotOwn value),
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

abstract class _PurchaseFailure implements BuyItemState {
  const factory _PurchaseFailure(Failure<dynamic> failure) = _$_PurchaseFailure;

  Failure<dynamic> get failure;
  @JsonKey(ignore: true)
  _$PurchaseFailureCopyWith<_PurchaseFailure> get copyWith;
}
