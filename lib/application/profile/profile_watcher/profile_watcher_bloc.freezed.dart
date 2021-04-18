// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileWatcherEventTearOff {
  const _$ProfileWatcherEventTearOff();

  _InitializedForeignOrOwn initializedForeignOrOwn(Option<User> userOption) {
    return _InitializedForeignOrOwn(
      userOption,
    );
  }
}

/// @nodoc
const $ProfileWatcherEvent = _$ProfileWatcherEventTearOff();

/// @nodoc
mixin _$ProfileWatcherEvent {
  Option<User> get userOption => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<User> userOption) initializedForeignOrOwn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<User> userOption)? initializedForeignOrOwn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedForeignOrOwn value) initializedForeignOrOwn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedForeignOrOwn value)? initializedForeignOrOwn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileWatcherEventCopyWith<ProfileWatcherEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileWatcherEventCopyWith<$Res> {
  factory $ProfileWatcherEventCopyWith(ProfileWatcherEvent value, $Res Function(ProfileWatcherEvent) then) = _$ProfileWatcherEventCopyWithImpl<$Res>;

  $Res call({Option<User> userOption});
}

/// @nodoc
class _$ProfileWatcherEventCopyWithImpl<$Res> implements $ProfileWatcherEventCopyWith<$Res> {
  _$ProfileWatcherEventCopyWithImpl(this._value, this._then);

  final ProfileWatcherEvent _value;

  // ignore: unused_field
  final $Res Function(ProfileWatcherEvent) _then;

  @override
  $Res call({
    Object? userOption = freezed,
  }) {
    return _then(_value.copyWith(
      userOption: userOption == freezed
          ? _value.userOption
          : userOption // ignore: cast_nullable_to_non_nullable
              as Option<User>,
    ));
  }
}

/// @nodoc
abstract class _$InitializedForeignOrOwnCopyWith<$Res> implements $ProfileWatcherEventCopyWith<$Res> {
  factory _$InitializedForeignOrOwnCopyWith(_InitializedForeignOrOwn value, $Res Function(_InitializedForeignOrOwn) then) = __$InitializedForeignOrOwnCopyWithImpl<$Res>;

  @override
  $Res call({Option<User> userOption});
}

/// @nodoc
class __$InitializedForeignOrOwnCopyWithImpl<$Res> extends _$ProfileWatcherEventCopyWithImpl<$Res> implements _$InitializedForeignOrOwnCopyWith<$Res> {
  __$InitializedForeignOrOwnCopyWithImpl(_InitializedForeignOrOwn _value, $Res Function(_InitializedForeignOrOwn) _then) : super(_value, (v) => _then(v as _InitializedForeignOrOwn));

  @override
  _InitializedForeignOrOwn get _value => super._value as _InitializedForeignOrOwn;

  @override
  $Res call({
    Object? userOption = freezed,
  }) {
    return _then(_InitializedForeignOrOwn(
      userOption == freezed
          ? _value.userOption
          : userOption // ignore: cast_nullable_to_non_nullable
              as Option<User>,
    ));
  }
}

/// @nodoc
class _$_InitializedForeignOrOwn implements _InitializedForeignOrOwn {
  const _$_InitializedForeignOrOwn(this.userOption);

  @override
  final Option<User> userOption;

  @override
  String toString() {
    return 'ProfileWatcherEvent.initializedForeignOrOwn(userOption: $userOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitializedForeignOrOwn && (identical(other.userOption, userOption) || const DeepCollectionEquality().equals(other.userOption, userOption)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(userOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedForeignOrOwnCopyWith<_InitializedForeignOrOwn> get copyWith => __$InitializedForeignOrOwnCopyWithImpl<_InitializedForeignOrOwn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<User> userOption) initializedForeignOrOwn,
  }) {
    return initializedForeignOrOwn(userOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<User> userOption)? initializedForeignOrOwn,
    required TResult orElse(),
  }) {
    if (initializedForeignOrOwn != null) {
      return initializedForeignOrOwn(userOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedForeignOrOwn value) initializedForeignOrOwn,
  }) {
    return initializedForeignOrOwn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedForeignOrOwn value)? initializedForeignOrOwn,
    required TResult orElse(),
  }) {
    if (initializedForeignOrOwn != null) {
      return initializedForeignOrOwn(this);
    }
    return orElse();
  }
}

abstract class _InitializedForeignOrOwn implements ProfileWatcherEvent {
  const factory _InitializedForeignOrOwn(Option<User> userOption) = _$_InitializedForeignOrOwn;

  @override
  Option<User> get userOption => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$InitializedForeignOrOwnCopyWith<_InitializedForeignOrOwn> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProfileWatcherStateTearOff {
  const _$ProfileWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _Own own(User user) {
    return _Own(
      user,
    );
  }

  _Foreign foreign(User user) {
    return _Foreign(
      user,
    );
  }

  _LoadFailure loadFailure() {
    return const _LoadFailure();
  }
}

/// @nodoc
const $ProfileWatcherState = _$ProfileWatcherStateTearOff();

/// @nodoc
mixin _$ProfileWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(User user) own,
    required TResult Function(User user) foreign,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(User user)? own,
    TResult Function(User user)? foreign,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Own value) own,
    required TResult Function(_Foreign value) foreign,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Own value)? own,
    TResult Function(_Foreign value)? foreign,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileWatcherStateCopyWith<$Res> {
  factory $ProfileWatcherStateCopyWith(ProfileWatcherState value, $Res Function(ProfileWatcherState) then) = _$ProfileWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileWatcherStateCopyWithImpl<$Res> implements $ProfileWatcherStateCopyWith<$Res> {
  _$ProfileWatcherStateCopyWithImpl(this._value, this._then);

  final ProfileWatcherState _value;

  // ignore: unused_field
  final $Res Function(ProfileWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ProfileWatcherStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ProfileWatcherState.initial()';
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
    required TResult Function(User user) own,
    required TResult Function(User user) foreign,
    required TResult Function() loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(User user)? own,
    TResult Function(User user)? foreign,
    TResult Function()? loadFailure,
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
    required TResult Function(_Own value) own,
    required TResult Function(_Foreign value) foreign,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Own value)? own,
    TResult Function(_Foreign value)? foreign,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfileWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(_LoadInProgress value, $Res Function(_LoadInProgress) then) = __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res> extends _$ProfileWatcherStateCopyWithImpl<$Res> implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(_LoadInProgress _value, $Res Function(_LoadInProgress) _then) : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'ProfileWatcherState.loadInProgress()';
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
    required TResult Function(User user) own,
    required TResult Function(User user) foreign,
    required TResult Function() loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(User user)? own,
    TResult Function(User user)? foreign,
    TResult Function()? loadFailure,
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
    required TResult Function(_Own value) own,
    required TResult Function(_Foreign value) foreign,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Own value)? own,
    TResult Function(_Foreign value)? foreign,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ProfileWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$OwnCopyWith<$Res> {
  factory _$OwnCopyWith(_Own value, $Res Function(_Own) then) = __$OwnCopyWithImpl<$Res>;

  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$OwnCopyWithImpl<$Res> extends _$ProfileWatcherStateCopyWithImpl<$Res> implements _$OwnCopyWith<$Res> {
  __$OwnCopyWithImpl(_Own _value, $Res Function(_Own) _then) : super(_value, (v) => _then(v as _Own));

  @override
  _Own get _value => super._value as _Own;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_Own(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$_Own implements _Own {
  const _$_Own(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'ProfileWatcherState.own(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Own && (identical(other.user, user) || const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$OwnCopyWith<_Own> get copyWith => __$OwnCopyWithImpl<_Own>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(User user) own,
    required TResult Function(User user) foreign,
    required TResult Function() loadFailure,
  }) {
    return own(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(User user)? own,
    TResult Function(User user)? foreign,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (own != null) {
      return own(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Own value) own,
    required TResult Function(_Foreign value) foreign,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return own(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Own value)? own,
    TResult Function(_Foreign value)? foreign,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (own != null) {
      return own(this);
    }
    return orElse();
  }
}

abstract class _Own implements ProfileWatcherState {
  const factory _Own(User user) = _$_Own;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OwnCopyWith<_Own> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ForeignCopyWith<$Res> {
  factory _$ForeignCopyWith(_Foreign value, $Res Function(_Foreign) then) = __$ForeignCopyWithImpl<$Res>;

  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$ForeignCopyWithImpl<$Res> extends _$ProfileWatcherStateCopyWithImpl<$Res> implements _$ForeignCopyWith<$Res> {
  __$ForeignCopyWithImpl(_Foreign _value, $Res Function(_Foreign) _then) : super(_value, (v) => _then(v as _Foreign));

  @override
  _Foreign get _value => super._value as _Foreign;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_Foreign(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$_Foreign implements _Foreign {
  const _$_Foreign(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'ProfileWatcherState.foreign(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Foreign && (identical(other.user, user) || const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$ForeignCopyWith<_Foreign> get copyWith => __$ForeignCopyWithImpl<_Foreign>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(User user) own,
    required TResult Function(User user) foreign,
    required TResult Function() loadFailure,
  }) {
    return foreign(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(User user)? own,
    TResult Function(User user)? foreign,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (foreign != null) {
      return foreign(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Own value) own,
    required TResult Function(_Foreign value) foreign,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return foreign(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Own value)? own,
    TResult Function(_Foreign value)? foreign,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (foreign != null) {
      return foreign(this);
    }
    return orElse();
  }
}

abstract class _Foreign implements ProfileWatcherState {
  const factory _Foreign(User user) = _$_Foreign;

  User get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$ForeignCopyWith<_Foreign> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(_LoadFailure value, $Res Function(_LoadFailure) then) = __$LoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$ProfileWatcherStateCopyWithImpl<$Res> implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(_LoadFailure _value, $Res Function(_LoadFailure) _then) : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure();

  @override
  String toString() {
    return 'ProfileWatcherState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(User user) own,
    required TResult Function(User user) foreign,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(User user)? own,
    TResult Function(User user)? foreign,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Own value) own,
    required TResult Function(_Foreign value) foreign,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Own value)? own,
    TResult Function(_Foreign value)? foreign,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ProfileWatcherState {
  const factory _LoadFailure() = _$_LoadFailure;
}
