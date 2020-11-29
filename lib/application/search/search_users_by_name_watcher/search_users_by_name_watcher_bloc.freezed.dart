// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_users_by_name_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SearchUsersByNameWatcherEventTearOff {
  const _$SearchUsersByNameWatcherEventTearOff();

// ignore: unused_element
  _WatchUsersFoundByNameStarted watchUsersFoundByNameStarted(SearchTerm name) {
    return _WatchUsersFoundByNameStarted(
      name,
    );
  }

// ignore: unused_element
  _WatchUsersFoundByUsernameStarted watchUsersFoundByUsernameStarted(SearchTerm username) {
    return _WatchUsersFoundByUsernameStarted(
      username,
    );
  }

// ignore: unused_element
  _SearchResultsReceived searchResultsReceived(Either<Failure, KtList<User>> failureOrUsers) {
    return _SearchResultsReceived(
      failureOrUsers,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchUsersByNameWatcherEvent = _$SearchUsersByNameWatcherEventTearOff();

/// @nodoc
mixin _$SearchUsersByNameWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchUsersFoundByNameStarted(SearchTerm name),
    @required TResult watchUsersFoundByUsernameStarted(SearchTerm username),
    @required TResult searchResultsReceived(Either<Failure, KtList<User>> failureOrUsers),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchUsersFoundByNameStarted(SearchTerm name),
    TResult watchUsersFoundByUsernameStarted(SearchTerm username),
    TResult searchResultsReceived(Either<Failure, KtList<User>> failureOrUsers),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchUsersFoundByNameStarted(_WatchUsersFoundByNameStarted value),
    @required TResult watchUsersFoundByUsernameStarted(_WatchUsersFoundByUsernameStarted value),
    @required TResult searchResultsReceived(_SearchResultsReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchUsersFoundByNameStarted(_WatchUsersFoundByNameStarted value),
    TResult watchUsersFoundByUsernameStarted(_WatchUsersFoundByUsernameStarted value),
    TResult searchResultsReceived(_SearchResultsReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SearchUsersByNameWatcherEventCopyWith<$Res> {
  factory $SearchUsersByNameWatcherEventCopyWith(SearchUsersByNameWatcherEvent value, $Res Function(SearchUsersByNameWatcherEvent) then) = _$SearchUsersByNameWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchUsersByNameWatcherEventCopyWithImpl<$Res>
  implements $SearchUsersByNameWatcherEventCopyWith<$Res> {
  _$SearchUsersByNameWatcherEventCopyWithImpl(this._value, this._then);
  
  final SearchUsersByNameWatcherEvent _value;
  
  // ignore: unused_field
  final $Res Function(SearchUsersByNameWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchUsersFoundByNameStartedCopyWith<$Res> {
  factory _$WatchUsersFoundByNameStartedCopyWith(_WatchUsersFoundByNameStarted value,
    $Res Function(_WatchUsersFoundByNameStarted) then) =
  __$WatchUsersFoundByNameStartedCopyWithImpl<$Res>;
  
  $Res call({SearchTerm name});
}

/// @nodoc
class __$WatchUsersFoundByNameStartedCopyWithImpl<$Res> extends _$SearchUsersByNameWatcherEventCopyWithImpl<$Res>
  implements _$WatchUsersFoundByNameStartedCopyWith<$Res> {
  __$WatchUsersFoundByNameStartedCopyWithImpl(_WatchUsersFoundByNameStarted _value,
    $Res Function(_WatchUsersFoundByNameStarted) _then)
    : super(_value, (v) => _then(v as _WatchUsersFoundByNameStarted));
  
  @override
  _WatchUsersFoundByNameStarted get _value =>
    super._value as _WatchUsersFoundByNameStarted;
  
  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_WatchUsersFoundByNameStarted(
      name == freezed ? _value.name : name as SearchTerm,
    ));
  }
}

/// @nodoc
class _$_WatchUsersFoundByNameStarted implements _WatchUsersFoundByNameStarted {
  const _$_WatchUsersFoundByNameStarted(this.name) : assert(name != null);

  @override
  final SearchTerm name;

  @override
  String toString() {
    return 'SearchUsersByNameWatcherEvent.watchUsersFoundByNameStarted(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _WatchUsersFoundByNameStarted &&
        (identical(other.name, name) ||
          const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$WatchUsersFoundByNameStartedCopyWith<_WatchUsersFoundByNameStarted>
  get copyWith =>
    __$WatchUsersFoundByNameStartedCopyWithImpl<
      _WatchUsersFoundByNameStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchUsersFoundByNameStarted(SearchTerm name),
    @required TResult watchUsersFoundByUsernameStarted(SearchTerm username),
    @required TResult searchResultsReceived(Either<Failure, KtList<User>> failureOrUsers),
  }) {
    assert(watchUsersFoundByNameStarted != null);
    assert(watchUsersFoundByUsernameStarted != null);
    assert(searchResultsReceived != null);
    return watchUsersFoundByNameStarted(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchUsersFoundByNameStarted(SearchTerm name),
    TResult watchUsersFoundByUsernameStarted(SearchTerm username),
    TResult searchResultsReceived(Either<Failure, KtList<User>> failureOrUsers),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchUsersFoundByNameStarted != null) {
      return watchUsersFoundByNameStarted(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchUsersFoundByNameStarted(_WatchUsersFoundByNameStarted value),
    @required TResult watchUsersFoundByUsernameStarted(_WatchUsersFoundByUsernameStarted value),
    @required TResult searchResultsReceived(_SearchResultsReceived value),
  }) {
    assert(watchUsersFoundByNameStarted != null);
    assert(watchUsersFoundByUsernameStarted != null);
    assert(searchResultsReceived != null);
    return watchUsersFoundByNameStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchUsersFoundByNameStarted(_WatchUsersFoundByNameStarted value),
    TResult watchUsersFoundByUsernameStarted(_WatchUsersFoundByUsernameStarted value),
    TResult searchResultsReceived(_SearchResultsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchUsersFoundByNameStarted != null) {
      return watchUsersFoundByNameStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchUsersFoundByNameStarted
  implements SearchUsersByNameWatcherEvent {
  const factory _WatchUsersFoundByNameStarted(SearchTerm name) =
  _$_WatchUsersFoundByNameStarted;
  
  SearchTerm get name;
  
  _$WatchUsersFoundByNameStartedCopyWith<_WatchUsersFoundByNameStarted>
  get copyWith;
}

/// @nodoc
abstract class _$WatchUsersFoundByUsernameStartedCopyWith<$Res> {
  factory _$WatchUsersFoundByUsernameStartedCopyWith(_WatchUsersFoundByUsernameStarted value,
    $Res Function(_WatchUsersFoundByUsernameStarted) then) =
  __$WatchUsersFoundByUsernameStartedCopyWithImpl<$Res>;
  
  $Res call({SearchTerm username});
}

/// @nodoc
class __$WatchUsersFoundByUsernameStartedCopyWithImpl<$Res> extends _$SearchUsersByNameWatcherEventCopyWithImpl<$Res>
  implements _$WatchUsersFoundByUsernameStartedCopyWith<$Res> {
  __$WatchUsersFoundByUsernameStartedCopyWithImpl(_WatchUsersFoundByUsernameStarted _value,
    $Res Function(_WatchUsersFoundByUsernameStarted) _then)
    : super(_value, (v) => _then(v as _WatchUsersFoundByUsernameStarted));
  
  @override
  _WatchUsersFoundByUsernameStarted get _value =>
    super._value as _WatchUsersFoundByUsernameStarted;
  
  @override
  $Res call({
    Object username = freezed,
  }) {
    return _then(_WatchUsersFoundByUsernameStarted(
      username == freezed ? _value.username : username as SearchTerm,
    ));
  }
}

/// @nodoc
class _$_WatchUsersFoundByUsernameStarted
  implements _WatchUsersFoundByUsernameStarted {
  const _$_WatchUsersFoundByUsernameStarted(this.username)
    : assert(username != null);
  
  @override
  final SearchTerm username;
  
  @override
  String toString() {
    return 'SearchUsersByNameWatcherEvent.watchUsersFoundByUsernameStarted(username: $username)';
  }
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _WatchUsersFoundByUsernameStarted &&
        (identical(other.username, username) ||
          const DeepCollectionEquality()
            .equals(other.username, username)));
  }
  
  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);
  
  @override
  _$WatchUsersFoundByUsernameStartedCopyWith<_WatchUsersFoundByUsernameStarted>
  get copyWith =>
    __$WatchUsersFoundByUsernameStartedCopyWithImpl<
      _WatchUsersFoundByUsernameStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchUsersFoundByNameStarted(SearchTerm name),
    @required TResult watchUsersFoundByUsernameStarted(SearchTerm username),
    @required TResult searchResultsReceived(Either<Failure, KtList<User>> failureOrUsers),
  }) {
    assert(watchUsersFoundByNameStarted != null);
    assert(watchUsersFoundByUsernameStarted != null);
    assert(searchResultsReceived != null);
    return watchUsersFoundByUsernameStarted(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchUsersFoundByNameStarted(SearchTerm name),
    TResult watchUsersFoundByUsernameStarted(SearchTerm username),
    TResult searchResultsReceived(Either<Failure, KtList<User>> failureOrUsers),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchUsersFoundByUsernameStarted != null) {
      return watchUsersFoundByUsernameStarted(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchUsersFoundByNameStarted(_WatchUsersFoundByNameStarted value),
    @required TResult watchUsersFoundByUsernameStarted(_WatchUsersFoundByUsernameStarted value),
    @required TResult searchResultsReceived(_SearchResultsReceived value),
  }) {
    assert(watchUsersFoundByNameStarted != null);
    assert(watchUsersFoundByUsernameStarted != null);
    assert(searchResultsReceived != null);
    return watchUsersFoundByUsernameStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchUsersFoundByNameStarted(_WatchUsersFoundByNameStarted value),
    TResult watchUsersFoundByUsernameStarted(_WatchUsersFoundByUsernameStarted value),
    TResult searchResultsReceived(_SearchResultsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchUsersFoundByUsernameStarted != null) {
      return watchUsersFoundByUsernameStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchUsersFoundByUsernameStarted
  implements SearchUsersByNameWatcherEvent {
  const factory _WatchUsersFoundByUsernameStarted(SearchTerm username) =
  _$_WatchUsersFoundByUsernameStarted;
  
  SearchTerm get username;
  
  _$WatchUsersFoundByUsernameStartedCopyWith<_WatchUsersFoundByUsernameStarted>
  get copyWith;
}

/// @nodoc
abstract class _$SearchResultsReceivedCopyWith<$Res> {
  factory _$SearchResultsReceivedCopyWith(_SearchResultsReceived value,
    $Res Function(_SearchResultsReceived) then) =
  __$SearchResultsReceivedCopyWithImpl<$Res>;
  
  $Res call({Either<Failure, KtList<User>> failureOrUsers});
}

/// @nodoc
class __$SearchResultsReceivedCopyWithImpl<$Res> extends _$SearchUsersByNameWatcherEventCopyWithImpl<$Res>
  implements _$SearchResultsReceivedCopyWith<$Res> {
  __$SearchResultsReceivedCopyWithImpl(_SearchResultsReceived _value,
    $Res Function(_SearchResultsReceived) _then)
    : super(_value, (v) => _then(v as _SearchResultsReceived));
  
  @override
  _SearchResultsReceived get _value => super._value as _SearchResultsReceived;
  
  @override
  $Res call({
    Object failureOrUsers = freezed,
  }) {
    return _then(_SearchResultsReceived(
      failureOrUsers == freezed
        ? _value.failureOrUsers
        : failureOrUsers as Either<Failure, KtList<User>>,
    ));
  }
}

/// @nodoc
class _$_SearchResultsReceived implements _SearchResultsReceived {
  const _$_SearchResultsReceived(this.failureOrUsers)
    : assert(failureOrUsers != null);
  
  @override
  final Either<Failure, KtList<User>> failureOrUsers;
  
  @override
  String toString() {
    return 'SearchUsersByNameWatcherEvent.searchResultsReceived(failureOrUsers: $failureOrUsers)';
  }
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _SearchResultsReceived &&
        (identical(other.failureOrUsers, failureOrUsers) ||
          const DeepCollectionEquality()
            .equals(other.failureOrUsers, failureOrUsers)));
  }
  
  @override
  int get hashCode =>
    runtimeType.hashCode ^
    const DeepCollectionEquality().hash(failureOrUsers);
  
  @override
  _$SearchResultsReceivedCopyWith<_SearchResultsReceived> get copyWith =>
    __$SearchResultsReceivedCopyWithImpl<_SearchResultsReceived>(
      this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchUsersFoundByNameStarted(SearchTerm name),
    @required TResult watchUsersFoundByUsernameStarted(SearchTerm username),
    @required TResult searchResultsReceived(Either<Failure, KtList<User>> failureOrUsers),
  }) {
    assert(watchUsersFoundByNameStarted != null);
    assert(watchUsersFoundByUsernameStarted != null);
    assert(searchResultsReceived != null);
    return searchResultsReceived(failureOrUsers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchUsersFoundByNameStarted(SearchTerm name),
    TResult watchUsersFoundByUsernameStarted(SearchTerm username),
    TResult searchResultsReceived(Either<Failure, KtList<User>> failureOrUsers),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchResultsReceived != null) {
      return searchResultsReceived(failureOrUsers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchUsersFoundByNameStarted(_WatchUsersFoundByNameStarted value),
    @required TResult watchUsersFoundByUsernameStarted(_WatchUsersFoundByUsernameStarted value),
    @required TResult searchResultsReceived(_SearchResultsReceived value),
  }) {
    assert(watchUsersFoundByNameStarted != null);
    assert(watchUsersFoundByUsernameStarted != null);
    assert(searchResultsReceived != null);
    return searchResultsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchUsersFoundByNameStarted(_WatchUsersFoundByNameStarted value),
    TResult watchUsersFoundByUsernameStarted(_WatchUsersFoundByUsernameStarted value),
    TResult searchResultsReceived(_SearchResultsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchResultsReceived != null) {
      return searchResultsReceived(this);
    }
    return orElse();
  }
}

abstract class _SearchResultsReceived implements SearchUsersByNameWatcherEvent {
  const factory _SearchResultsReceived(Either<Failure, KtList<User>> failureOrUsers) = _$_SearchResultsReceived;
  
  Either<Failure, KtList<User>> get failureOrUsers;
  
  _$SearchResultsReceivedCopyWith<_SearchResultsReceived> get copyWith;
}

/// @nodoc
class _$SearchUsersByNameWatcherStateTearOff {
  const _$SearchUsersByNameWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _SearchInPorgress searchInProgress() {
    return const _SearchInPorgress();
  }

// ignore: unused_element
  _SearchSuccess searchSuccess(KtList<User> usersFound) {
    return _SearchSuccess(
      usersFound,
    );
  }

// ignore: unused_element
  _SearchFailure searchFailure(Failure<dynamic> failure) {
    return _SearchFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchUsersByNameWatcherState = _$SearchUsersByNameWatcherStateTearOff();

/// @nodoc
mixin _$SearchUsersByNameWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult searchInProgress(),
    @required TResult searchSuccess(KtList<User> usersFound),
    @required TResult searchFailure(Failure<dynamic> failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult searchInProgress(),
    TResult searchSuccess(KtList<User> usersFound),
    TResult searchFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult searchInProgress(_SearchInPorgress value),
    @required TResult searchSuccess(_SearchSuccess value),
    @required TResult searchFailure(_SearchFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult searchInProgress(_SearchInPorgress value),
    TResult searchSuccess(_SearchSuccess value),
    TResult searchFailure(_SearchFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SearchUsersByNameWatcherStateCopyWith<$Res> {
  factory $SearchUsersByNameWatcherStateCopyWith(SearchUsersByNameWatcherState value,
    $Res Function(SearchUsersByNameWatcherState) then) =
  _$SearchUsersByNameWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchUsersByNameWatcherStateCopyWithImpl<$Res>
  implements $SearchUsersByNameWatcherStateCopyWith<$Res> {
  _$SearchUsersByNameWatcherStateCopyWithImpl(this._value, this._then);
  
  final SearchUsersByNameWatcherState _value;
  
  // ignore: unused_field
  final $Res Function(SearchUsersByNameWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
  __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SearchUsersByNameWatcherStateCopyWithImpl<$Res>
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
    return 'SearchUsersByNameWatcherState.initial()';
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
    @required TResult searchInProgress(),
    @required TResult searchSuccess(KtList<User> usersFound),
    @required TResult searchFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult searchInProgress(),
    TResult searchSuccess(KtList<User> usersFound),
    TResult searchFailure(Failure<dynamic> failure),
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
    @required TResult searchInProgress(_SearchInPorgress value),
    @required TResult searchSuccess(_SearchSuccess value),
    @required TResult searchFailure(_SearchFailure value),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult searchInProgress(_SearchInPorgress value),
    TResult searchSuccess(_SearchSuccess value),
    TResult searchFailure(_SearchFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchUsersByNameWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$SearchInPorgressCopyWith<$Res> {
  factory _$SearchInPorgressCopyWith(_SearchInPorgress value, $Res Function(_SearchInPorgress) then) =
  __$SearchInPorgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchInPorgressCopyWithImpl<$Res> extends _$SearchUsersByNameWatcherStateCopyWithImpl<$Res>
  implements _$SearchInPorgressCopyWith<$Res> {
  __$SearchInPorgressCopyWithImpl(_SearchInPorgress _value, $Res Function(_SearchInPorgress) _then)
    : super(_value, (v) => _then(v as _SearchInPorgress));
  
  @override
  _SearchInPorgress get _value => super._value as _SearchInPorgress;
}

/// @nodoc
class _$_SearchInPorgress implements _SearchInPorgress {
  const _$_SearchInPorgress();

  @override
  String toString() {
    return 'SearchUsersByNameWatcherState.searchInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SearchInPorgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult searchInProgress(),
    @required TResult searchSuccess(KtList<User> usersFound),
    @required TResult searchFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return searchInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult searchInProgress(),
    TResult searchSuccess(KtList<User> usersFound),
    TResult searchFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchInProgress != null) {
      return searchInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult searchInProgress(_SearchInPorgress value),
    @required TResult searchSuccess(_SearchSuccess value),
    @required TResult searchFailure(_SearchFailure value),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return searchInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult searchInProgress(_SearchInPorgress value),
    TResult searchSuccess(_SearchSuccess value),
    TResult searchFailure(_SearchFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchInProgress != null) {
      return searchInProgress(this);
    }
    return orElse();
  }
}

abstract class _SearchInPorgress implements SearchUsersByNameWatcherState {
  const factory _SearchInPorgress() = _$_SearchInPorgress;
}

/// @nodoc
abstract class _$SearchSuccessCopyWith<$Res> {
  factory _$SearchSuccessCopyWith(_SearchSuccess value, $Res Function(_SearchSuccess) then) =
  __$SearchSuccessCopyWithImpl<$Res>;
  
  $Res call({KtList<User> usersFound});
}

/// @nodoc
class __$SearchSuccessCopyWithImpl<$Res> extends _$SearchUsersByNameWatcherStateCopyWithImpl<$Res>
  implements _$SearchSuccessCopyWith<$Res> {
  __$SearchSuccessCopyWithImpl(_SearchSuccess _value, $Res Function(_SearchSuccess) _then)
    : super(_value, (v) => _then(v as _SearchSuccess));
  
  @override
  _SearchSuccess get _value => super._value as _SearchSuccess;
  
  @override
  $Res call({
    Object usersFound = freezed,
  }) {
    return _then(_SearchSuccess(
      usersFound == freezed ? _value.usersFound : usersFound as KtList<User>,
    ));
  }
}

/// @nodoc
class _$_SearchSuccess implements _SearchSuccess {
  const _$_SearchSuccess(this.usersFound) : assert(usersFound != null);

  @override
  final KtList<User> usersFound;

  @override
  String toString() {
    return 'SearchUsersByNameWatcherState.searchSuccess(usersFound: $usersFound)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _SearchSuccess &&
        (identical(other.usersFound, usersFound) ||
          const DeepCollectionEquality()
            .equals(other.usersFound, usersFound)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(usersFound);

  @override
  _$SearchSuccessCopyWith<_SearchSuccess> get copyWith =>
    __$SearchSuccessCopyWithImpl<_SearchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult searchInProgress(),
    @required TResult searchSuccess(KtList<User> usersFound),
    @required TResult searchFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return searchSuccess(usersFound);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult searchInProgress(),
    TResult searchSuccess(KtList<User> usersFound),
    TResult searchFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchSuccess != null) {
      return searchSuccess(usersFound);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult searchInProgress(_SearchInPorgress value),
    @required TResult searchSuccess(_SearchSuccess value),
    @required TResult searchFailure(_SearchFailure value),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return searchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult searchInProgress(_SearchInPorgress value),
    TResult searchSuccess(_SearchSuccess value),
    TResult searchFailure(_SearchFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchSuccess != null) {
      return searchSuccess(this);
    }
    return orElse();
  }
}

abstract class _SearchSuccess implements SearchUsersByNameWatcherState {
  const factory _SearchSuccess(KtList<User> usersFound) = _$_SearchSuccess;

  KtList<User> get usersFound;
  _$SearchSuccessCopyWith<_SearchSuccess> get copyWith;
}

/// @nodoc
abstract class _$SearchFailureCopyWith<$Res> {
  factory _$SearchFailureCopyWith(_SearchFailure value, $Res Function(_SearchFailure) then) =
  __$SearchFailureCopyWithImpl<$Res>;
  
  $Res call({Failure<dynamic> failure});
  
  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$SearchFailureCopyWithImpl<$Res> extends _$SearchUsersByNameWatcherStateCopyWithImpl<$Res>
  implements _$SearchFailureCopyWith<$Res> {
  __$SearchFailureCopyWithImpl(_SearchFailure _value, $Res Function(_SearchFailure) _then)
    : super(_value, (v) => _then(v as _SearchFailure));
  
  @override
  _SearchFailure get _value => super._value as _SearchFailure;
  
  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_SearchFailure(
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
class _$_SearchFailure implements _SearchFailure {
  const _$_SearchFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'SearchUsersByNameWatcherState.searchFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _SearchFailure &&
        (identical(other.failure, failure) ||
          const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$SearchFailureCopyWith<_SearchFailure> get copyWith =>
    __$SearchFailureCopyWithImpl<_SearchFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult searchInProgress(),
    @required TResult searchSuccess(KtList<User> usersFound),
    @required TResult searchFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return searchFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult searchInProgress(),
    TResult searchSuccess(KtList<User> usersFound),
    TResult searchFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchFailure != null) {
      return searchFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult searchInProgress(_SearchInPorgress value),
    @required TResult searchSuccess(_SearchSuccess value),
    @required TResult searchFailure(_SearchFailure value),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return searchFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult searchInProgress(_SearchInPorgress value),
    TResult searchSuccess(_SearchSuccess value),
    TResult searchFailure(_SearchFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchFailure != null) {
      return searchFailure(this);
    }
    return orElse();
  }
}

abstract class _SearchFailure implements SearchUsersByNameWatcherState {
  const factory _SearchFailure(Failure<dynamic> failure) = _$_SearchFailure;

  Failure<dynamic> get failure;
  _$SearchFailureCopyWith<_SearchFailure> get copyWith;
}
