// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'new_notifications_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NewNotificationsWatcherEventTearOff {
  const _$NewNotificationsWatcherEventTearOff();

  _WatchNewNotificationsStarted watchNewNotificationsStarted() {
    return const _WatchNewNotificationsStarted();
  }

  _ResultsReceived resultsReceived(Either<Failure, bool> failureOrBool) {
    return _ResultsReceived(
      failureOrBool,
    );
  }
}

/// @nodoc
const $NewNotificationsWatcherEvent = _$NewNotificationsWatcherEventTearOff();

/// @nodoc
mixin _$NewNotificationsWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchNewNotificationsStarted,
    required TResult Function(Either<Failure, bool> failureOrBool) resultsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchNewNotificationsStarted,
    TResult Function(Either<Failure, bool> failureOrBool)? resultsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchNewNotificationsStarted value) watchNewNotificationsStarted,
    required TResult Function(_ResultsReceived value) resultsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchNewNotificationsStarted value)? watchNewNotificationsStarted,
    TResult Function(_ResultsReceived value)? resultsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewNotificationsWatcherEventCopyWith<$Res> {
  factory $NewNotificationsWatcherEventCopyWith(
          NewNotificationsWatcherEvent value, $Res Function(NewNotificationsWatcherEvent) then) =
      _$NewNotificationsWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewNotificationsWatcherEventCopyWithImpl<$Res>
    implements $NewNotificationsWatcherEventCopyWith<$Res> {
  _$NewNotificationsWatcherEventCopyWithImpl(this._value, this._then);

  final NewNotificationsWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(NewNotificationsWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchNewNotificationsStartedCopyWith<$Res> {
  factory _$WatchNewNotificationsStartedCopyWith(
          _WatchNewNotificationsStarted value, $Res Function(_WatchNewNotificationsStarted) then) =
      __$WatchNewNotificationsStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchNewNotificationsStartedCopyWithImpl<$Res>
    extends _$NewNotificationsWatcherEventCopyWithImpl<$Res>
    implements _$WatchNewNotificationsStartedCopyWith<$Res> {
  __$WatchNewNotificationsStartedCopyWithImpl(
      _WatchNewNotificationsStarted _value, $Res Function(_WatchNewNotificationsStarted) _then)
      : super(_value, (v) => _then(v as _WatchNewNotificationsStarted));

  @override
  _WatchNewNotificationsStarted get _value => super._value as _WatchNewNotificationsStarted;
}

/// @nodoc

class _$_WatchNewNotificationsStarted implements _WatchNewNotificationsStarted {
  const _$_WatchNewNotificationsStarted();

  @override
  String toString() {
    return 'NewNotificationsWatcherEvent.watchNewNotificationsStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchNewNotificationsStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchNewNotificationsStarted,
    required TResult Function(Either<Failure, bool> failureOrBool) resultsReceived,
  }) {
    return watchNewNotificationsStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchNewNotificationsStarted,
    TResult Function(Either<Failure, bool> failureOrBool)? resultsReceived,
    required TResult orElse(),
  }) {
    if (watchNewNotificationsStarted != null) {
      return watchNewNotificationsStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchNewNotificationsStarted value) watchNewNotificationsStarted,
    required TResult Function(_ResultsReceived value) resultsReceived,
  }) {
    return watchNewNotificationsStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchNewNotificationsStarted value)? watchNewNotificationsStarted,
    TResult Function(_ResultsReceived value)? resultsReceived,
    required TResult orElse(),
  }) {
    if (watchNewNotificationsStarted != null) {
      return watchNewNotificationsStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchNewNotificationsStarted implements NewNotificationsWatcherEvent {
  const factory _WatchNewNotificationsStarted() = _$_WatchNewNotificationsStarted;
}

/// @nodoc
abstract class _$ResultsReceivedCopyWith<$Res> {
  factory _$ResultsReceivedCopyWith(_ResultsReceived value, $Res Function(_ResultsReceived) then) =
      __$ResultsReceivedCopyWithImpl<$Res>;

  $Res call({Either<Failure, bool> failureOrBool});
}

/// @nodoc
class __$ResultsReceivedCopyWithImpl<$Res> extends _$NewNotificationsWatcherEventCopyWithImpl<$Res>
    implements _$ResultsReceivedCopyWith<$Res> {
  __$ResultsReceivedCopyWithImpl(_ResultsReceived _value, $Res Function(_ResultsReceived) _then)
      : super(_value, (v) => _then(v as _ResultsReceived));

  @override
  _ResultsReceived get _value => super._value as _ResultsReceived;

  @override
  $Res call({
    Object? failureOrBool = freezed,
  }) {
    return _then(_ResultsReceived(
      failureOrBool == freezed
          ? _value.failureOrBool
          : failureOrBool // ignore: cast_nullable_to_non_nullable
              as Either<Failure, bool>,
    ));
  }
}

/// @nodoc

class _$_ResultsReceived implements _ResultsReceived {
  const _$_ResultsReceived(this.failureOrBool);

  @override
  final Either<Failure, bool> failureOrBool;

  @override
  String toString() {
    return 'NewNotificationsWatcherEvent.resultsReceived(failureOrBool: $failureOrBool)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResultsReceived &&
            (identical(other.failureOrBool, failureOrBool) ||
                const DeepCollectionEquality().equals(other.failureOrBool, failureOrBool)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrBool);

  @JsonKey(ignore: true)
  @override
  _$ResultsReceivedCopyWith<_ResultsReceived> get copyWith =>
      __$ResultsReceivedCopyWithImpl<_ResultsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchNewNotificationsStarted,
    required TResult Function(Either<Failure, bool> failureOrBool) resultsReceived,
  }) {
    return resultsReceived(failureOrBool);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchNewNotificationsStarted,
    TResult Function(Either<Failure, bool> failureOrBool)? resultsReceived,
    required TResult orElse(),
  }) {
    if (resultsReceived != null) {
      return resultsReceived(failureOrBool);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchNewNotificationsStarted value) watchNewNotificationsStarted,
    required TResult Function(_ResultsReceived value) resultsReceived,
  }) {
    return resultsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchNewNotificationsStarted value)? watchNewNotificationsStarted,
    TResult Function(_ResultsReceived value)? resultsReceived,
    required TResult orElse(),
  }) {
    if (resultsReceived != null) {
      return resultsReceived(this);
    }
    return orElse();
  }
}

abstract class _ResultsReceived implements NewNotificationsWatcherEvent {
  const factory _ResultsReceived(Either<Failure, bool> failureOrBool) = _$_ResultsReceived;

  Either<Failure, bool> get failureOrBool => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$ResultsReceivedCopyWith<_ResultsReceived> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$NewNotificationsWatcherStateTearOff {
  const _$NewNotificationsWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _NewNotifications newNotifications() {
    return const _NewNotifications();
  }

  _NoNewNotifications noNewNotifications() {
    return const _NoNewNotifications();
  }

  _Failure failure() {
    return const _Failure();
  }
}

/// @nodoc
const $NewNotificationsWatcherState = _$NewNotificationsWatcherStateTearOff();

/// @nodoc
mixin _$NewNotificationsWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() newNotifications,
    required TResult Function() noNewNotifications,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? newNotifications,
    TResult Function()? noNewNotifications,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NewNotifications value) newNotifications,
    required TResult Function(_NoNewNotifications value) noNewNotifications,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NewNotifications value)? newNotifications,
    TResult Function(_NoNewNotifications value)? noNewNotifications,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewNotificationsWatcherStateCopyWith<$Res> {
  factory $NewNotificationsWatcherStateCopyWith(
          NewNotificationsWatcherState value, $Res Function(NewNotificationsWatcherState) then) =
      _$NewNotificationsWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewNotificationsWatcherStateCopyWithImpl<$Res>
    implements $NewNotificationsWatcherStateCopyWith<$Res> {
  _$NewNotificationsWatcherStateCopyWithImpl(this._value, this._then);

  final NewNotificationsWatcherState _value;
  // ignore: unused_field
  final $Res Function(NewNotificationsWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$NewNotificationsWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NewNotificationsWatcherState.initial()';
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
    required TResult Function() newNotifications,
    required TResult Function() noNewNotifications,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? newNotifications,
    TResult Function()? noNewNotifications,
    TResult Function()? failure,
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
    required TResult Function(_NewNotifications value) newNotifications,
    required TResult Function(_NoNewNotifications value) noNewNotifications,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NewNotifications value)? newNotifications,
    TResult Function(_NoNewNotifications value)? noNewNotifications,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NewNotificationsWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$NewNotificationsCopyWith<$Res> {
  factory _$NewNotificationsCopyWith(_NewNotifications value, $Res Function(_NewNotifications) then) =
      __$NewNotificationsCopyWithImpl<$Res>;
}

/// @nodoc
class __$NewNotificationsCopyWithImpl<$Res> extends _$NewNotificationsWatcherStateCopyWithImpl<$Res>
    implements _$NewNotificationsCopyWith<$Res> {
  __$NewNotificationsCopyWithImpl(_NewNotifications _value, $Res Function(_NewNotifications) _then)
      : super(_value, (v) => _then(v as _NewNotifications));

  @override
  _NewNotifications get _value => super._value as _NewNotifications;
}

/// @nodoc

class _$_NewNotifications implements _NewNotifications {
  const _$_NewNotifications();

  @override
  String toString() {
    return 'NewNotificationsWatcherState.newNotifications()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NewNotifications);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() newNotifications,
    required TResult Function() noNewNotifications,
    required TResult Function() failure,
  }) {
    return newNotifications();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? newNotifications,
    TResult Function()? noNewNotifications,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (newNotifications != null) {
      return newNotifications();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NewNotifications value) newNotifications,
    required TResult Function(_NoNewNotifications value) noNewNotifications,
    required TResult Function(_Failure value) failure,
  }) {
    return newNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NewNotifications value)? newNotifications,
    TResult Function(_NoNewNotifications value)? noNewNotifications,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (newNotifications != null) {
      return newNotifications(this);
    }
    return orElse();
  }
}

abstract class _NewNotifications implements NewNotificationsWatcherState {
  const factory _NewNotifications() = _$_NewNotifications;
}

/// @nodoc
abstract class _$NoNewNotificationsCopyWith<$Res> {
  factory _$NoNewNotificationsCopyWith(_NoNewNotifications value, $Res Function(_NoNewNotifications) then) =
      __$NoNewNotificationsCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoNewNotificationsCopyWithImpl<$Res> extends _$NewNotificationsWatcherStateCopyWithImpl<$Res>
    implements _$NoNewNotificationsCopyWith<$Res> {
  __$NoNewNotificationsCopyWithImpl(_NoNewNotifications _value, $Res Function(_NoNewNotifications) _then)
      : super(_value, (v) => _then(v as _NoNewNotifications));

  @override
  _NoNewNotifications get _value => super._value as _NoNewNotifications;
}

/// @nodoc

class _$_NoNewNotifications implements _NoNewNotifications {
  const _$_NoNewNotifications();

  @override
  String toString() {
    return 'NewNotificationsWatcherState.noNewNotifications()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoNewNotifications);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() newNotifications,
    required TResult Function() noNewNotifications,
    required TResult Function() failure,
  }) {
    return noNewNotifications();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? newNotifications,
    TResult Function()? noNewNotifications,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (noNewNotifications != null) {
      return noNewNotifications();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NewNotifications value) newNotifications,
    required TResult Function(_NoNewNotifications value) noNewNotifications,
    required TResult Function(_Failure value) failure,
  }) {
    return noNewNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NewNotifications value)? newNotifications,
    TResult Function(_NoNewNotifications value)? noNewNotifications,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (noNewNotifications != null) {
      return noNewNotifications(this);
    }
    return orElse();
  }
}

abstract class _NoNewNotifications implements NewNotificationsWatcherState {
  const factory _NoNewNotifications() = _$_NoNewNotifications;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) = __$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$NewNotificationsWatcherStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure();

  @override
  String toString() {
    return 'NewNotificationsWatcherState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() newNotifications,
    required TResult Function() noNewNotifications,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? newNotifications,
    TResult Function()? noNewNotifications,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NewNotifications value) newNotifications,
    required TResult Function(_NoNewNotifications value) noNewNotifications,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NewNotifications value)? newNotifications,
    TResult Function(_NoNewNotifications value)? noNewNotifications,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements NewNotificationsWatcherState {
  const factory _Failure() = _$_Failure;
}
