// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profile_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProfileWatcherEventTearOff {
  const _$ProfileWatcherEventTearOff();

// ignore: unused_element
  _InitializedForeignOrOwn initializedForeignOrOwn(Option<User> userOption) {
    return _InitializedForeignOrOwn(
      userOption,
    );
  }
}

// ignore: unused_element
const $ProfileWatcherEvent = _$ProfileWatcherEventTearOff();

mixin _$ProfileWatcherEvent {
  Option<User> get userOption;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializedForeignOrOwn(Option<User> userOption),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializedForeignOrOwn(Option<User> userOption),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializedForeignOrOwn(_InitializedForeignOrOwn value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializedForeignOrOwn(_InitializedForeignOrOwn value),
    @required Result orElse(),
  });

  $ProfileWatcherEventCopyWith<ProfileWatcherEvent> get copyWith;
}

abstract class $ProfileWatcherEventCopyWith<$Res> {
  factory $ProfileWatcherEventCopyWith(ProfileWatcherEvent value, $Res Function(ProfileWatcherEvent) then) = _$ProfileWatcherEventCopyWithImpl<$Res>;
  $Res call({Option<User> userOption});
}

class _$ProfileWatcherEventCopyWithImpl<$Res>
  implements $ProfileWatcherEventCopyWith<$Res> {
  _$ProfileWatcherEventCopyWithImpl(this._value, this._then);

  final ProfileWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileWatcherEvent) _then;

  @override
  $Res call({
    Object userOption = freezed,
  }) {
    return _then(_value.copyWith(
      userOption: userOption == freezed
        ? _value.userOption
        : userOption as Option<User>,
    ));
  }
}

abstract class _$InitializedForeignOrOwnCopyWith<$Res>
  implements $ProfileWatcherEventCopyWith<$Res> {
  factory _$InitializedForeignOrOwnCopyWith(_InitializedForeignOrOwn value,
    $Res Function(_InitializedForeignOrOwn) then) =
  __$InitializedForeignOrOwnCopyWithImpl<$Res>;
  @override
  $Res call({Option<User> userOption});
}

class __$InitializedForeignOrOwnCopyWithImpl<$Res> extends _$ProfileWatcherEventCopyWithImpl<$Res>
  implements _$InitializedForeignOrOwnCopyWith<$Res> {
  __$InitializedForeignOrOwnCopyWithImpl(_InitializedForeignOrOwn _value,
    $Res Function(_InitializedForeignOrOwn) _then)
    : super(_value, (v) => _then(v as _InitializedForeignOrOwn));

  @override
  _InitializedForeignOrOwn get _value =>
    super._value as _InitializedForeignOrOwn;

  @override
  $Res call({
    Object userOption = freezed,
  }) {
    return _then(_InitializedForeignOrOwn(
      userOption == freezed ? _value.userOption : userOption as Option<User>,
    ));
  }
}

class _$_InitializedForeignOrOwn implements _InitializedForeignOrOwn {
  const _$_InitializedForeignOrOwn(this.userOption)
    : assert(userOption != null);

  @override
  final Option<User> userOption;

  @override
  String toString() {
    return 'ProfileWatcherEvent.initializedForeignOrOwn(userOption: $userOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _InitializedForeignOrOwn &&
        (identical(other.userOption, userOption) ||
          const DeepCollectionEquality()
            .equals(other.userOption, userOption)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(userOption);

  @override
  _$InitializedForeignOrOwnCopyWith<_InitializedForeignOrOwn> get copyWith =>
    __$InitializedForeignOrOwnCopyWithImpl<_InitializedForeignOrOwn>(
      this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializedForeignOrOwn(Option<User> userOption),
  }) {
    assert(initializedForeignOrOwn != null);
    return initializedForeignOrOwn(userOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializedForeignOrOwn(Option<User> userOption),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initializedForeignOrOwn != null) {
      return initializedForeignOrOwn(userOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializedForeignOrOwn(_InitializedForeignOrOwn value),
  }) {
    assert(initializedForeignOrOwn != null);
    return initializedForeignOrOwn(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializedForeignOrOwn(_InitializedForeignOrOwn value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initializedForeignOrOwn != null) {
      return initializedForeignOrOwn(this);
    }
    return orElse();
  }
}

abstract class _InitializedForeignOrOwn implements ProfileWatcherEvent {
  const factory _InitializedForeignOrOwn(Option<User> userOption) =
  _$_InitializedForeignOrOwn;

  @override
  Option<User> get userOption;
  @override
  _$InitializedForeignOrOwnCopyWith<_InitializedForeignOrOwn> get copyWith;
}

class _$ProfileWatcherStateTearOff {
  const _$ProfileWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _Own own(User user) {
    return _Own(
      user,
    );
  }

// ignore: unused_element
  _Foreign foreign(User user) {
    return _Foreign(
      user,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure() {
    return const _LoadFailure();
  }
}

// ignore: unused_element
const $ProfileWatcherState = _$ProfileWatcherStateTearOff();

mixin _$ProfileWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result own(User user),
    @required Result foreign(User user),
    @required Result loadFailure(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result own(User user),
    Result foreign(User user),
    Result loadFailure(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result own(_Own value),
    @required Result foreign(_Foreign value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result own(_Own value),
    Result foreign(_Foreign value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $ProfileWatcherStateCopyWith<$Res> {
  factory $ProfileWatcherStateCopyWith(ProfileWatcherState value, $Res Function(ProfileWatcherState) then) =
  _$ProfileWatcherStateCopyWithImpl<$Res>;
}

class _$ProfileWatcherStateCopyWithImpl<$Res>
  implements $ProfileWatcherStateCopyWith<$Res> {
  _$ProfileWatcherStateCopyWithImpl(this._value, this._then);

  final ProfileWatcherState _value;
  // ignore: unused_field
  final $Res Function(ProfileWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
  __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$ProfileWatcherStateCopyWithImpl<$Res>
  implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
    : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result own(User user),
    @required Result foreign(User user),
    @required Result loadFailure(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(own != null);
    assert(foreign != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result own(User user),
    Result foreign(User user),
    Result loadFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result own(_Own value),
    @required Result foreign(_Foreign value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(own != null);
    assert(foreign != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result own(_Own value),
    Result foreign(_Foreign value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfileWatcherState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(_LoadInProgress value, $Res Function(_LoadInProgress) then) =
  __$LoadInProgressCopyWithImpl<$Res>;
}

class __$LoadInProgressCopyWithImpl<$Res> extends _$ProfileWatcherStateCopyWithImpl<$Res>
  implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(_LoadInProgress _value, $Res Function(_LoadInProgress) _then)
    : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result own(User user),
    @required Result foreign(User user),
    @required Result loadFailure(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(own != null);
    assert(foreign != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result own(User user),
    Result foreign(User user),
    Result loadFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result own(_Own value),
    @required Result foreign(_Foreign value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(own != null);
    assert(foreign != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result own(_Own value),
    Result foreign(_Foreign value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ProfileWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

abstract class _$OwnCopyWith<$Res> {
  factory _$OwnCopyWith(_Own value, $Res Function(_Own) then) =
  __$OwnCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class __$OwnCopyWithImpl<$Res> extends _$ProfileWatcherStateCopyWithImpl<$Res>
  implements _$OwnCopyWith<$Res> {
  __$OwnCopyWithImpl(_Own _value, $Res Function(_Own) _then)
    : super(_value, (v) => _then(v as _Own));

  @override
  _Own get _value => super._value as _Own;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_Own(
      user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

class _$_Own implements _Own {
  const _$_Own(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'ProfileWatcherState.own(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _Own &&
        (identical(other.user, user) ||
          const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$OwnCopyWith<_Own> get copyWith =>
    __$OwnCopyWithImpl<_Own>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result own(User user),
    @required Result foreign(User user),
    @required Result loadFailure(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(own != null);
    assert(foreign != null);
    assert(loadFailure != null);
    return own(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result own(User user),
    Result foreign(User user),
    Result loadFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (own != null) {
      return own(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result own(_Own value),
    @required Result foreign(_Foreign value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(own != null);
    assert(foreign != null);
    assert(loadFailure != null);
    return own(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result own(_Own value),
    Result foreign(_Foreign value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (own != null) {
      return own(this);
    }
    return orElse();
  }
}

abstract class _Own implements ProfileWatcherState {
  const factory _Own(User user) = _$_Own;

  User get user;
  _$OwnCopyWith<_Own> get copyWith;
}

abstract class _$ForeignCopyWith<$Res> {
  factory _$ForeignCopyWith(_Foreign value, $Res Function(_Foreign) then) =
  __$ForeignCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class __$ForeignCopyWithImpl<$Res> extends _$ProfileWatcherStateCopyWithImpl<$Res>
  implements _$ForeignCopyWith<$Res> {
  __$ForeignCopyWithImpl(_Foreign _value, $Res Function(_Foreign) _then)
    : super(_value, (v) => _then(v as _Foreign));

  @override
  _Foreign get _value => super._value as _Foreign;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_Foreign(
      user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

class _$_Foreign implements _Foreign {
  const _$_Foreign(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'ProfileWatcherState.foreign(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _Foreign &&
        (identical(other.user, user) ||
          const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$ForeignCopyWith<_Foreign> get copyWith =>
    __$ForeignCopyWithImpl<_Foreign>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result own(User user),
    @required Result foreign(User user),
    @required Result loadFailure(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(own != null);
    assert(foreign != null);
    assert(loadFailure != null);
    return foreign(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result own(User user),
    Result foreign(User user),
    Result loadFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (foreign != null) {
      return foreign(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result own(_Own value),
    @required Result foreign(_Foreign value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(own != null);
    assert(foreign != null);
    assert(loadFailure != null);
    return foreign(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result own(_Own value),
    Result foreign(_Foreign value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (foreign != null) {
      return foreign(this);
    }
    return orElse();
  }
}

abstract class _Foreign implements ProfileWatcherState {
  const factory _Foreign(User user) = _$_Foreign;

  User get user;
  _$ForeignCopyWith<_Foreign> get copyWith;
}

abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(_LoadFailure value, $Res Function(_LoadFailure) then) =
  __$LoadFailureCopyWithImpl<$Res>;
}

class __$LoadFailureCopyWithImpl<$Res> extends _$ProfileWatcherStateCopyWithImpl<$Res>
  implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(_LoadFailure _value, $Res Function(_LoadFailure) _then)
    : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result own(User user),
    @required Result foreign(User user),
    @required Result loadFailure(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(own != null);
    assert(foreign != null);
    assert(loadFailure != null);
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result own(User user),
    Result foreign(User user),
    Result loadFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result own(_Own value),
    @required Result foreign(_Foreign value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(own != null);
    assert(foreign != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result own(_Own value),
    Result foreign(_Foreign value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ProfileWatcherState {
  const factory _LoadFailure() = _$_LoadFailure;
}
