// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'buy_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BuyItemEventTearOff {
  const _$BuyItemEventTearOff();

  _Initialized initialized(Item item) {
    return _Initialized(
      item,
    );
  }

  _BoughtItem boughtItem(Item item) {
    return _BoughtItem(
      item,
    );
  }
}

/// @nodoc
const $BuyItemEvent = _$BuyItemEventTearOff();

/// @nodoc
mixin _$BuyItemEvent {
  Item get item => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Item item) initialized,
    required TResult Function(Item item) boughtItem,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Item item)? initialized,
    TResult Function(Item item)? boughtItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BoughtItem value) boughtItem,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BoughtItem value)? boughtItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BuyItemEventCopyWith<BuyItemEvent> get copyWith => throw _privateConstructorUsedError;
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
    Object? item = freezed,
  }) {
    return _then(_value.copyWith(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
    ));
  }

  @override
  $ItemCopyWith<$Res> get item {
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
    Object? item = freezed,
  }) {
    return _then(_Initialized(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.item);

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
  TResult when<TResult extends Object?>({
    required TResult Function(Item item) initialized,
    required TResult Function(Item item) boughtItem,
  }) {
    return initialized(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Item item)? initialized,
    TResult Function(Item item)? boughtItem,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BoughtItem value) boughtItem,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BoughtItem value)? boughtItem,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements BuyItemEvent {
  const factory _Initialized(Item item) = _$_Initialized;

  @override
  Item get item => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith => throw _privateConstructorUsedError;
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
    Object? item = freezed,
  }) {
    return _then(_BoughtItem(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
    ));
  }
}

/// @nodoc
class _$_BoughtItem implements _BoughtItem {
  const _$_BoughtItem(this.item);

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
  TResult when<TResult extends Object?>({
    required TResult Function(Item item) initialized,
    required TResult Function(Item item) boughtItem,
  }) {
    return boughtItem(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Item item)? initialized,
    TResult Function(Item item)? boughtItem,
    required TResult orElse(),
  }) {
    if (boughtItem != null) {
      return boughtItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BoughtItem value) boughtItem,
  }) {
    return boughtItem(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BoughtItem value)? boughtItem,
    required TResult orElse(),
  }) {
    if (boughtItem != null) {
      return boughtItem(this);
    }
    return orElse();
  }
}

abstract class _BoughtItem implements BuyItemEvent {
  const factory _BoughtItem(Item item) = _$_BoughtItem;

  @override
  Item get item => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$BoughtItemCopyWith<_BoughtItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$BuyItemStateTearOff {
  const _$BuyItemStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _Owns owns() {
    return const _Owns();
  }

  _DoesNotOwn doesNotOwn() {
    return const _DoesNotOwn();
  }

  _PurchaseSuccess purchaseSuccess() {
    return const _PurchaseSuccess();
  }

  _PurchaseFailure purchaseFailure(Failure<dynamic> failure) {
    return _PurchaseFailure(
      failure,
    );
  }
}

/// @nodoc
const $BuyItemState = _$BuyItemStateTearOff();

/// @nodoc
mixin _$BuyItemState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() owns,
    required TResult Function() doesNotOwn,
    required TResult Function() purchaseSuccess,
    required TResult Function(Failure<dynamic> failure) purchaseFailure,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? owns,
    TResult Function()? doesNotOwn,
    TResult Function()? purchaseSuccess,
    TResult Function(Failure<dynamic> failure)? purchaseFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Owns value) owns,
    required TResult Function(_DoesNotOwn value) doesNotOwn,
    required TResult Function(_PurchaseSuccess value) purchaseSuccess,
    required TResult Function(_PurchaseFailure value) purchaseFailure,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Owns value)? owns,
    TResult Function(_DoesNotOwn value)? doesNotOwn,
    TResult Function(_PurchaseSuccess value)? purchaseSuccess,
    TResult Function(_PurchaseFailure value)? purchaseFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() owns,
    required TResult Function() doesNotOwn,
    required TResult Function() purchaseSuccess,
    required TResult Function(Failure<dynamic> failure) purchaseFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? owns,
    TResult Function()? doesNotOwn,
    TResult Function()? purchaseSuccess,
    TResult Function(Failure<dynamic> failure)? purchaseFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Owns value) owns,
    required TResult Function(_DoesNotOwn value) doesNotOwn,
    required TResult Function(_PurchaseSuccess value) purchaseSuccess,
    required TResult Function(_PurchaseFailure value) purchaseFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Owns value)? owns,
    TResult Function(_DoesNotOwn value)? doesNotOwn,
    TResult Function(_PurchaseSuccess value)? purchaseSuccess,
    TResult Function(_PurchaseFailure value)? purchaseFailure,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() owns,
    required TResult Function() doesNotOwn,
    required TResult Function() purchaseSuccess,
    required TResult Function(Failure<dynamic> failure) purchaseFailure,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? owns,
    TResult Function()? doesNotOwn,
    TResult Function()? purchaseSuccess,
    TResult Function(Failure<dynamic> failure)? purchaseFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Owns value) owns,
    required TResult Function(_DoesNotOwn value) doesNotOwn,
    required TResult Function(_PurchaseSuccess value) purchaseSuccess,
    required TResult Function(_PurchaseFailure value) purchaseFailure,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Owns value)? owns,
    TResult Function(_DoesNotOwn value)? doesNotOwn,
    TResult Function(_PurchaseSuccess value)? purchaseSuccess,
    TResult Function(_PurchaseFailure value)? purchaseFailure,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() owns,
    required TResult Function() doesNotOwn,
    required TResult Function() purchaseSuccess,
    required TResult Function(Failure<dynamic> failure) purchaseFailure,
  }) {
    return owns();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? owns,
    TResult Function()? doesNotOwn,
    TResult Function()? purchaseSuccess,
    TResult Function(Failure<dynamic> failure)? purchaseFailure,
    required TResult orElse(),
  }) {
    if (owns != null) {
      return owns();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Owns value) owns,
    required TResult Function(_DoesNotOwn value) doesNotOwn,
    required TResult Function(_PurchaseSuccess value) purchaseSuccess,
    required TResult Function(_PurchaseFailure value) purchaseFailure,
  }) {
    return owns(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Owns value)? owns,
    TResult Function(_DoesNotOwn value)? doesNotOwn,
    TResult Function(_PurchaseSuccess value)? purchaseSuccess,
    TResult Function(_PurchaseFailure value)? purchaseFailure,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() owns,
    required TResult Function() doesNotOwn,
    required TResult Function() purchaseSuccess,
    required TResult Function(Failure<dynamic> failure) purchaseFailure,
  }) {
    return doesNotOwn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? owns,
    TResult Function()? doesNotOwn,
    TResult Function()? purchaseSuccess,
    TResult Function(Failure<dynamic> failure)? purchaseFailure,
    required TResult orElse(),
  }) {
    if (doesNotOwn != null) {
      return doesNotOwn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Owns value) owns,
    required TResult Function(_DoesNotOwn value) doesNotOwn,
    required TResult Function(_PurchaseSuccess value) purchaseSuccess,
    required TResult Function(_PurchaseFailure value) purchaseFailure,
  }) {
    return doesNotOwn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Owns value)? owns,
    TResult Function(_DoesNotOwn value)? doesNotOwn,
    TResult Function(_PurchaseSuccess value)? purchaseSuccess,
    TResult Function(_PurchaseFailure value)? purchaseFailure,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() owns,
    required TResult Function() doesNotOwn,
    required TResult Function() purchaseSuccess,
    required TResult Function(Failure<dynamic> failure) purchaseFailure,
  }) {
    return purchaseSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? owns,
    TResult Function()? doesNotOwn,
    TResult Function()? purchaseSuccess,
    TResult Function(Failure<dynamic> failure)? purchaseFailure,
    required TResult orElse(),
  }) {
    if (purchaseSuccess != null) {
      return purchaseSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Owns value) owns,
    required TResult Function(_DoesNotOwn value) doesNotOwn,
    required TResult Function(_PurchaseSuccess value) purchaseSuccess,
    required TResult Function(_PurchaseFailure value) purchaseFailure,
  }) {
    return purchaseSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Owns value)? owns,
    TResult Function(_DoesNotOwn value)? doesNotOwn,
    TResult Function(_PurchaseSuccess value)? purchaseSuccess,
    TResult Function(_PurchaseFailure value)? purchaseFailure,
    required TResult orElse(),
  }) {
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
    Object? failure = freezed,
  }) {
    return _then(_PurchaseFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure<dynamic>,
    ));
  }

  @override
  $FailureCopyWith<dynamic, $Res> get failure {
    return $FailureCopyWith<dynamic, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_PurchaseFailure implements _PurchaseFailure {
  const _$_PurchaseFailure(this.failure);

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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() owns,
    required TResult Function() doesNotOwn,
    required TResult Function() purchaseSuccess,
    required TResult Function(Failure<dynamic> failure) purchaseFailure,
  }) {
    return purchaseFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? owns,
    TResult Function()? doesNotOwn,
    TResult Function()? purchaseSuccess,
    TResult Function(Failure<dynamic> failure)? purchaseFailure,
    required TResult orElse(),
  }) {
    if (purchaseFailure != null) {
      return purchaseFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Owns value) owns,
    required TResult Function(_DoesNotOwn value) doesNotOwn,
    required TResult Function(_PurchaseSuccess value) purchaseSuccess,
    required TResult Function(_PurchaseFailure value) purchaseFailure,
  }) {
    return purchaseFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Owns value)? owns,
    TResult Function(_DoesNotOwn value)? doesNotOwn,
    TResult Function(_PurchaseSuccess value)? purchaseSuccess,
    TResult Function(_PurchaseFailure value)? purchaseFailure,
    required TResult orElse(),
  }) {
    if (purchaseFailure != null) {
      return purchaseFailure(this);
    }
    return orElse();
  }
}

abstract class _PurchaseFailure implements BuyItemState {
  const factory _PurchaseFailure(Failure<dynamic> failure) = _$_PurchaseFailure;

  Failure<dynamic> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$PurchaseFailureCopyWith<_PurchaseFailure> get copyWith => throw _privateConstructorUsedError;
}
