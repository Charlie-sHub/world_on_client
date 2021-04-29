// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'watch_purchasable_items_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WatchPurchasableItemsEventTearOff {
  const _$WatchPurchasableItemsEventTearOff();

  _WatchPurchasableItemsStarted watchPurchasableItemsStarted() {
    return const _WatchPurchasableItemsStarted();
  }

  _ResultsReceived resultsReceived(Either<Failure, KtList<Item>> failureOrItems) {
    return _ResultsReceived(
      failureOrItems,
    );
  }
}

/// @nodoc
const $WatchPurchasableItemsEvent = _$WatchPurchasableItemsEventTearOff();

/// @nodoc
mixin _$WatchPurchasableItemsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchPurchasableItemsStarted,
    required TResult Function(Either<Failure, KtList<Item>> failureOrItems) resultsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchPurchasableItemsStarted,
    TResult Function(Either<Failure, KtList<Item>> failureOrItems)? resultsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchPurchasableItemsStarted value) watchPurchasableItemsStarted,
    required TResult Function(_ResultsReceived value) resultsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchPurchasableItemsStarted value)? watchPurchasableItemsStarted,
    TResult Function(_ResultsReceived value)? resultsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchPurchasableItemsEventCopyWith<$Res> {
  factory $WatchPurchasableItemsEventCopyWith(WatchPurchasableItemsEvent value, $Res Function(WatchPurchasableItemsEvent) then) = _$WatchPurchasableItemsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchPurchasableItemsEventCopyWithImpl<$Res> implements $WatchPurchasableItemsEventCopyWith<$Res> {
  _$WatchPurchasableItemsEventCopyWithImpl(this._value, this._then);

  final WatchPurchasableItemsEvent _value;

  // ignore: unused_field
  final $Res Function(WatchPurchasableItemsEvent) _then;
}

/// @nodoc
abstract class _$WatchPurchasableItemsStartedCopyWith<$Res> {
  factory _$WatchPurchasableItemsStartedCopyWith(_WatchPurchasableItemsStarted value, $Res Function(_WatchPurchasableItemsStarted) then) = __$WatchPurchasableItemsStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchPurchasableItemsStartedCopyWithImpl<$Res> extends _$WatchPurchasableItemsEventCopyWithImpl<$Res> implements _$WatchPurchasableItemsStartedCopyWith<$Res> {
  __$WatchPurchasableItemsStartedCopyWithImpl(_WatchPurchasableItemsStarted _value, $Res Function(_WatchPurchasableItemsStarted) _then)
      : super(_value, (v) => _then(v as _WatchPurchasableItemsStarted));

  @override
  _WatchPurchasableItemsStarted get _value => super._value as _WatchPurchasableItemsStarted;
}

/// @nodoc

class _$_WatchPurchasableItemsStarted implements _WatchPurchasableItemsStarted {
  const _$_WatchPurchasableItemsStarted();

  @override
  String toString() {
    return 'WatchPurchasableItemsEvent.watchPurchasableItemsStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchPurchasableItemsStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchPurchasableItemsStarted,
    required TResult Function(Either<Failure, KtList<Item>> failureOrItems) resultsReceived,
  }) {
    return watchPurchasableItemsStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchPurchasableItemsStarted,
    TResult Function(Either<Failure, KtList<Item>> failureOrItems)? resultsReceived,
    required TResult orElse(),
  }) {
    if (watchPurchasableItemsStarted != null) {
      return watchPurchasableItemsStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchPurchasableItemsStarted value) watchPurchasableItemsStarted,
    required TResult Function(_ResultsReceived value) resultsReceived,
  }) {
    return watchPurchasableItemsStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchPurchasableItemsStarted value)? watchPurchasableItemsStarted,
    TResult Function(_ResultsReceived value)? resultsReceived,
    required TResult orElse(),
  }) {
    if (watchPurchasableItemsStarted != null) {
      return watchPurchasableItemsStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchPurchasableItemsStarted implements WatchPurchasableItemsEvent {
  const factory _WatchPurchasableItemsStarted() = _$_WatchPurchasableItemsStarted;
}

/// @nodoc
abstract class _$ResultsReceivedCopyWith<$Res> {
  factory _$ResultsReceivedCopyWith(_ResultsReceived value, $Res Function(_ResultsReceived) then) = __$ResultsReceivedCopyWithImpl<$Res>;

  $Res call({Either<Failure, KtList<Item>> failureOrItems});
}

/// @nodoc
class __$ResultsReceivedCopyWithImpl<$Res> extends _$WatchPurchasableItemsEventCopyWithImpl<$Res> implements _$ResultsReceivedCopyWith<$Res> {
  __$ResultsReceivedCopyWithImpl(_ResultsReceived _value, $Res Function(_ResultsReceived) _then) : super(_value, (v) => _then(v as _ResultsReceived));

  @override
  _ResultsReceived get _value => super._value as _ResultsReceived;

  @override
  $Res call({
    Object? failureOrItems = freezed,
  }) {
    return _then(_ResultsReceived(
      failureOrItems == freezed
          ? _value.failureOrItems
          : failureOrItems // ignore: cast_nullable_to_non_nullable
              as Either<Failure, KtList<Item>>,
    ));
  }
}

/// @nodoc

class _$_ResultsReceived implements _ResultsReceived {
  const _$_ResultsReceived(this.failureOrItems);

  @override
  final Either<Failure, KtList<Item>> failureOrItems;

  @override
  String toString() {
    return 'WatchPurchasableItemsEvent.resultsReceived(failureOrItems: $failureOrItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ResultsReceived && (identical(other.failureOrItems, failureOrItems) || const DeepCollectionEquality().equals(other.failureOrItems, failureOrItems)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrItems);

  @JsonKey(ignore: true)
  @override
  _$ResultsReceivedCopyWith<_ResultsReceived> get copyWith => __$ResultsReceivedCopyWithImpl<_ResultsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchPurchasableItemsStarted,
    required TResult Function(Either<Failure, KtList<Item>> failureOrItems) resultsReceived,
  }) {
    return resultsReceived(failureOrItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchPurchasableItemsStarted,
    TResult Function(Either<Failure, KtList<Item>> failureOrItems)? resultsReceived,
    required TResult orElse(),
  }) {
    if (resultsReceived != null) {
      return resultsReceived(failureOrItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchPurchasableItemsStarted value) watchPurchasableItemsStarted,
    required TResult Function(_ResultsReceived value) resultsReceived,
  }) {
    return resultsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchPurchasableItemsStarted value)? watchPurchasableItemsStarted,
    TResult Function(_ResultsReceived value)? resultsReceived,
    required TResult orElse(),
  }) {
    if (resultsReceived != null) {
      return resultsReceived(this);
    }
    return orElse();
  }
}

abstract class _ResultsReceived implements WatchPurchasableItemsEvent {
  const factory _ResultsReceived(Either<Failure, KtList<Item>> failureOrItems) = _$_ResultsReceived;

  Either<Failure, KtList<Item>> get failureOrItems => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$ResultsReceivedCopyWith<_ResultsReceived> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$WatchPurchasableItemsStateTearOff {
  const _$WatchPurchasableItemsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(KtList<Item> items) {
    return _LoadSuccess(
      items,
    );
  }

  _LoadFailure loadFailure(Failure<dynamic> failure) {
    return _LoadFailure(
      failure,
    );
  }
}

/// @nodoc
const $WatchPurchasableItemsState = _$WatchPurchasableItemsStateTearOff();

/// @nodoc
mixin _$WatchPurchasableItemsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Item> items) loadSuccess,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Item> items)? loadSuccess,
    TResult Function(Failure<dynamic> failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchPurchasableItemsStateCopyWith<$Res> {
  factory $WatchPurchasableItemsStateCopyWith(WatchPurchasableItemsState value, $Res Function(WatchPurchasableItemsState) then) = _$WatchPurchasableItemsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchPurchasableItemsStateCopyWithImpl<$Res> implements $WatchPurchasableItemsStateCopyWith<$Res> {
  _$WatchPurchasableItemsStateCopyWithImpl(this._value, this._then);

  final WatchPurchasableItemsState _value;

  // ignore: unused_field
  final $Res Function(WatchPurchasableItemsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$WatchPurchasableItemsStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'WatchPurchasableItemsState.initial()';
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
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Item> items) loadSuccess,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Item> items)? loadSuccess,
    TResult Function(Failure<dynamic> failure)? loadFailure,
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
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WatchPurchasableItemsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(_LoadInProgress value, $Res Function(_LoadInProgress) then) = __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res> extends _$WatchPurchasableItemsStateCopyWithImpl<$Res> implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(_LoadInProgress _value, $Res Function(_LoadInProgress) _then) : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'WatchPurchasableItemsState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Item> items) loadSuccess,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Item> items)? loadSuccess,
    TResult Function(Failure<dynamic> failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements WatchPurchasableItemsState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(_LoadSuccess value, $Res Function(_LoadSuccess) then) = __$LoadSuccessCopyWithImpl<$Res>;

  $Res call({KtList<Item> items});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$WatchPurchasableItemsStateCopyWithImpl<$Res> implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(_LoadSuccess _value, $Res Function(_LoadSuccess) _then) : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_LoadSuccess(
      items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as KtList<Item>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.items);

  @override
  final KtList<Item> items;

  @override
  String toString() {
    return 'WatchPurchasableItemsState.loadSuccess(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadSuccess && (identical(other.items, items) || const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith => __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Item> items) loadSuccess,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) {
    return loadSuccess(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Item> items)? loadSuccess,
    TResult Function(Failure<dynamic> failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements WatchPurchasableItemsState {
  const factory _LoadSuccess(KtList<Item> items) = _$_LoadSuccess;

  KtList<Item> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(_LoadFailure value, $Res Function(_LoadFailure) then) = __$LoadFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$WatchPurchasableItemsStateCopyWithImpl<$Res> implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(_LoadFailure _value, $Res Function(_LoadFailure) _then) : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_LoadFailure(
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

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'WatchPurchasableItemsState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadFailure && (identical(other.failure, failure) || const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith => __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Item> items) loadSuccess,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Item> items)? loadSuccess,
    TResult Function(Failure<dynamic> failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements WatchPurchasableItemsState {
  const factory _LoadFailure(Failure<dynamic> failure) = _$_LoadFailure;

  Failure<dynamic> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith => throw _privateConstructorUsedError;
}
