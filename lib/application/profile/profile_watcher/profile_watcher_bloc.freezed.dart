// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'profile_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProfileWatcherEventTearOff {
  const _$ProfileWatcherEventTearOff();

  _InitializeForeignOrOwn initializeForeignOrOwn(Option<User> userOption) {
    return _InitializeForeignOrOwn(
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
    @required Result initializeForeignOrOwn(Option<User> userOption),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeForeignOrOwn(Option<User> userOption),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeForeignOrOwn(_InitializeForeignOrOwn value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeForeignOrOwn(_InitializeForeignOrOwn value),
    @required Result orElse(),
  });

  $ProfileWatcherEventCopyWith<ProfileWatcherEvent> get copyWith;
}

abstract class $ProfileWatcherEventCopyWith<$Res> {
  factory $ProfileWatcherEventCopyWith(ProfileWatcherEvent value, $Res Function(ProfileWatcherEvent) then) = _$ProfileWatcherEventCopyWithImpl<$Res>;

  $Res call({Option<User> userOption});
}

class _$ProfileWatcherEventCopyWithImpl<$Res> implements $ProfileWatcherEventCopyWith<$Res> {
  _$ProfileWatcherEventCopyWithImpl(this._value, this._then);

  final ProfileWatcherEvent _value;

  // ignore: unused_field
  final $Res Function(ProfileWatcherEvent) _then;

  @override
  $Res call({
    Object userOption = freezed,
  }) {
    return _then(_value.copyWith(
      userOption: userOption == freezed ? _value.userOption : userOption as Option<User>,
    ));
  }
}

abstract class _$InitializeForeignOrOwnCopyWith<$Res> implements $ProfileWatcherEventCopyWith<$Res> {
  factory _$InitializeForeignOrOwnCopyWith(_InitializeForeignOrOwn value, $Res Function(_InitializeForeignOrOwn) then) = __$InitializeForeignOrOwnCopyWithImpl<$Res>;

  @override
  $Res call({Option<User> userOption});
}

class __$InitializeForeignOrOwnCopyWithImpl<$Res> extends _$ProfileWatcherEventCopyWithImpl<$Res> implements _$InitializeForeignOrOwnCopyWith<$Res> {
  __$InitializeForeignOrOwnCopyWithImpl(_InitializeForeignOrOwn _value, $Res Function(_InitializeForeignOrOwn) _then) : super(_value, (v) => _then(v as _InitializeForeignOrOwn));

  @override
  _InitializeForeignOrOwn get _value => super._value as _InitializeForeignOrOwn;

  @override
  $Res call({
    Object userOption = freezed,
  }) {
    return _then(_InitializeForeignOrOwn(
      userOption == freezed ? _value.userOption : userOption as Option<User>,
    ));
  }
}

class _$_InitializeForeignOrOwn implements _InitializeForeignOrOwn {
  const _$_InitializeForeignOrOwn(this.userOption) : assert(userOption != null);

  @override
  final Option<User> userOption;

  @override
  String toString() {
    return 'ProfileWatcherEvent.initializeForeignOrOwn(userOption: $userOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitializeForeignOrOwn && (identical(other.userOption, userOption) || const DeepCollectionEquality().equals(other.userOption, userOption)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(userOption);

  @override
  _$InitializeForeignOrOwnCopyWith<_InitializeForeignOrOwn> get copyWith => __$InitializeForeignOrOwnCopyWithImpl<_InitializeForeignOrOwn>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeForeignOrOwn(Option<User> userOption),
  }) {
    assert(initializeForeignOrOwn != null);
    return initializeForeignOrOwn(userOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeForeignOrOwn(Option<User> userOption),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initializeForeignOrOwn != null) {
      return initializeForeignOrOwn(userOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeForeignOrOwn(_InitializeForeignOrOwn value),
  }) {
    assert(initializeForeignOrOwn != null);
    return initializeForeignOrOwn(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeForeignOrOwn(_InitializeForeignOrOwn value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initializeForeignOrOwn != null) {
      return initializeForeignOrOwn(this);
    }
    return orElse();
  }
}

abstract class _InitializeForeignOrOwn implements ProfileWatcherEvent {
  const factory _InitializeForeignOrOwn(Option<User> userOption) = _$_InitializeForeignOrOwn;

  @override
  Option<User> get userOption;

  @override
  _$InitializeForeignOrOwnCopyWith<_InitializeForeignOrOwn> get copyWith;
}

class _$ProfileWatcherStateTearOff {
  const _$ProfileWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Own own() {
    return const _Own();
  }

  _Foreign foreign() {
    return const _Foreign();
  }

  _LoadFailure loadFailure(Failure<dynamic> failure) {
    return _LoadFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $ProfileWatcherState = _$ProfileWatcherStateTearOff();

mixin _$ProfileWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result own(),
    @required Result foreign(),
    @required Result loadFailure(Failure<dynamic> failure),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result own(),
    Result foreign(),
    Result loadFailure(Failure<dynamic> failure),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result own(_Own value),
    @required Result foreign(_Foreign value),
    @required Result loadFailure(_LoadFailure value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result own(_Own value),
    Result foreign(_Foreign value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $ProfileWatcherStateCopyWith<$Res> {
  factory $ProfileWatcherStateCopyWith(ProfileWatcherState value, $Res Function(ProfileWatcherState) then) = _$ProfileWatcherStateCopyWithImpl<$Res>;
}

class _$ProfileWatcherStateCopyWithImpl<$Res> implements $ProfileWatcherStateCopyWith<$Res> {
  _$ProfileWatcherStateCopyWithImpl(this._value, this._then);

  final ProfileWatcherState _value;

  // ignore: unused_field
  final $Res Function(ProfileWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$ProfileWatcherStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));

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
    @required Result loading(),
    @required Result own(),
    @required Result foreign(),
    @required Result loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(own != null);
    assert(foreign != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result own(),
    Result foreign(),
    Result loadFailure(Failure<dynamic> failure),
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
    @required Result loading(_Loading value),
    @required Result own(_Own value),
    @required Result foreign(_Foreign value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(own != null);
    assert(foreign != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
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

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) = __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res> extends _$ProfileWatcherStateCopyWithImpl<$Res> implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then) : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ProfileWatcherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result own(),
    @required Result foreign(),
    @required Result loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(own != null);
    assert(foreign != null);
    assert(loadFailure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result own(),
    Result foreign(),
    Result loadFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result own(_Own value),
    @required Result foreign(_Foreign value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(own != null);
    assert(foreign != null);
    assert(loadFailure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result own(_Own value),
    Result foreign(_Foreign value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ProfileWatcherState {
  const factory _Loading() = _$_Loading;
}

abstract class _$OwnCopyWith<$Res> {
  factory _$OwnCopyWith(_Own value, $Res Function(_Own) then) = __$OwnCopyWithImpl<$Res>;
}

class __$OwnCopyWithImpl<$Res> extends _$ProfileWatcherStateCopyWithImpl<$Res> implements _$OwnCopyWith<$Res> {
  __$OwnCopyWithImpl(_Own _value, $Res Function(_Own) _then) : super(_value, (v) => _then(v as _Own));

  @override
  _Own get _value => super._value as _Own;
}

class _$_Own implements _Own {
  const _$_Own();

  @override
  String toString() {
    return 'ProfileWatcherState.own()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Own);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result own(),
    @required Result foreign(),
    @required Result loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(own != null);
    assert(foreign != null);
    assert(loadFailure != null);
    return own();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result own(),
    Result foreign(),
    Result loadFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (own != null) {
      return own();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result own(_Own value),
    @required Result foreign(_Foreign value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(own != null);
    assert(foreign != null);
    assert(loadFailure != null);
    return own(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
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
  const factory _Own() = _$_Own;
}

abstract class _$ForeignCopyWith<$Res> {
  factory _$ForeignCopyWith(_Foreign value, $Res Function(_Foreign) then) = __$ForeignCopyWithImpl<$Res>;
}

class __$ForeignCopyWithImpl<$Res> extends _$ProfileWatcherStateCopyWithImpl<$Res> implements _$ForeignCopyWith<$Res> {
  __$ForeignCopyWithImpl(_Foreign _value, $Res Function(_Foreign) _then) : super(_value, (v) => _then(v as _Foreign));

  @override
  _Foreign get _value => super._value as _Foreign;
}

class _$_Foreign implements _Foreign {
  const _$_Foreign();

  @override
  String toString() {
    return 'ProfileWatcherState.foreign()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Foreign);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result own(),
    @required Result foreign(),
    @required Result loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(own != null);
    assert(foreign != null);
    assert(loadFailure != null);
    return foreign();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result own(),
    Result foreign(),
    Result loadFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (foreign != null) {
      return foreign();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result own(_Own value),
    @required Result foreign(_Foreign value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(own != null);
    assert(foreign != null);
    assert(loadFailure != null);
    return foreign(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
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
  const factory _Foreign() = _$_Foreign;
}

abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(_LoadFailure value, $Res Function(_LoadFailure) then) = __$LoadFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

class __$LoadFailureCopyWithImpl<$Res> extends _$ProfileWatcherStateCopyWithImpl<$Res> implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(_LoadFailure _value, $Res Function(_LoadFailure) _then) : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_LoadFailure(
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

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'ProfileWatcherState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadFailure && (identical(other.failure, failure) || const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith => __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result own(),
    @required Result foreign(),
    @required Result loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(own != null);
    assert(foreign != null);
    assert(loadFailure != null);
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result own(),
    Result foreign(),
    Result loadFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result own(_Own value),
    @required Result foreign(_Foreign value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(own != null);
    assert(foreign != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
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
  const factory _LoadFailure(Failure<dynamic> failure) = _$_LoadFailure;

  Failure<dynamic> get failure;

  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
