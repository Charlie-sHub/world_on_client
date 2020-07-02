// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'achievement_management_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AchievementManagementWatcherEventTearOff {
  const _$AchievementManagementWatcherEventTearOff();

  _LoadAllAchievements loadAllAchievements() {
    return const _LoadAllAchievements();
  }
}

// ignore: unused_element
const $AchievementManagementWatcherEvent = _$AchievementManagementWatcherEventTearOff();

mixin _$AchievementManagementWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadAllAchievements(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadAllAchievements(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadAllAchievements(_LoadAllAchievements value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadAllAchievements(_LoadAllAchievements value),
    @required Result orElse(),
  });
}

abstract class $AchievementManagementWatcherEventCopyWith<$Res> {
  factory $AchievementManagementWatcherEventCopyWith(AchievementManagementWatcherEvent value, $Res Function(AchievementManagementWatcherEvent) then) =
      _$AchievementManagementWatcherEventCopyWithImpl<$Res>;
}

class _$AchievementManagementWatcherEventCopyWithImpl<$Res> implements $AchievementManagementWatcherEventCopyWith<$Res> {
  _$AchievementManagementWatcherEventCopyWithImpl(this._value, this._then);

  final AchievementManagementWatcherEvent _value;

  // ignore: unused_field
  final $Res Function(AchievementManagementWatcherEvent) _then;
}

abstract class _$LoadAllAchievementsCopyWith<$Res> {
  factory _$LoadAllAchievementsCopyWith(_LoadAllAchievements value, $Res Function(_LoadAllAchievements) then) = __$LoadAllAchievementsCopyWithImpl<$Res>;
}

class __$LoadAllAchievementsCopyWithImpl<$Res> extends _$AchievementManagementWatcherEventCopyWithImpl<$Res> implements _$LoadAllAchievementsCopyWith<$Res> {
  __$LoadAllAchievementsCopyWithImpl(_LoadAllAchievements _value, $Res Function(_LoadAllAchievements) _then) : super(_value, (v) => _then(v as _LoadAllAchievements));

  @override
  _LoadAllAchievements get _value => super._value as _LoadAllAchievements;
}

class _$_LoadAllAchievements implements _LoadAllAchievements {
  const _$_LoadAllAchievements();

  @override
  String toString() {
    return 'AchievementManagementWatcherEvent.loadAllAchievements()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadAllAchievements);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadAllAchievements(),
  }) {
    assert(loadAllAchievements != null);
    return loadAllAchievements();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadAllAchievements(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadAllAchievements != null) {
      return loadAllAchievements();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadAllAchievements(_LoadAllAchievements value),
  }) {
    assert(loadAllAchievements != null);
    return loadAllAchievements(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadAllAchievements(_LoadAllAchievements value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadAllAchievements != null) {
      return loadAllAchievements(this);
    }
    return orElse();
  }
}

abstract class _LoadAllAchievements implements AchievementManagementWatcherEvent {
  const factory _LoadAllAchievements() = _$_LoadAllAchievements;
}

class _$AchievementManagementWatcherStateTearOff {
  const _$AchievementManagementWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _loadSuccess loadSuccess(List<Achievement> achievements) {
    return _loadSuccess(
      achievements,
    );
  }

  _loadFailure loadFailure(Failure<dynamic> failure) {
    return _loadFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $AchievementManagementWatcherState = _$AchievementManagementWatcherStateTearOff();

mixin _$AchievementManagementWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(List<Achievement> achievements),
    @required Result loadFailure(Failure<dynamic> failure),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(List<Achievement> achievements),
    Result loadFailure(Failure<dynamic> failure),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadSuccess(_loadSuccess value),
    @required Result loadFailure(_loadFailure value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_loadSuccess value),
    Result loadFailure(_loadFailure value),
    @required Result orElse(),
  });
}

abstract class $AchievementManagementWatcherStateCopyWith<$Res> {
  factory $AchievementManagementWatcherStateCopyWith(AchievementManagementWatcherState value, $Res Function(AchievementManagementWatcherState) then) =
      _$AchievementManagementWatcherStateCopyWithImpl<$Res>;
}

class _$AchievementManagementWatcherStateCopyWithImpl<$Res> implements $AchievementManagementWatcherStateCopyWith<$Res> {
  _$AchievementManagementWatcherStateCopyWithImpl(this._value, this._then);

  final AchievementManagementWatcherState _value;

  // ignore: unused_field
  final $Res Function(AchievementManagementWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$AchievementManagementWatcherStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AchievementManagementWatcherState.initial()';
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
    @required Result loadSuccess(List<Achievement> achievements),
    @required Result loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(List<Achievement> achievements),
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
    @required Result loadSuccess(_loadSuccess value),
    @required Result loadFailure(_loadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_loadSuccess value),
    Result loadFailure(_loadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AchievementManagementWatcherState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) = __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res> extends _$AchievementManagementWatcherStateCopyWithImpl<$Res> implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then) : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'AchievementManagementWatcherState.loading()';
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
    @required Result loadSuccess(List<Achievement> achievements),
    @required Result loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(List<Achievement> achievements),
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
    @required Result loadSuccess(_loadSuccess value),
    @required Result loadFailure(_loadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_loadSuccess value),
    Result loadFailure(_loadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AchievementManagementWatcherState {
  const factory _Loading() = _$_Loading;
}

abstract class _$loadSuccessCopyWith<$Res> {
  factory _$loadSuccessCopyWith(_loadSuccess value, $Res Function(_loadSuccess) then) = __$loadSuccessCopyWithImpl<$Res>;

  $Res call({List<Achievement> achievements});
}

class __$loadSuccessCopyWithImpl<$Res> extends _$AchievementManagementWatcherStateCopyWithImpl<$Res> implements _$loadSuccessCopyWith<$Res> {
  __$loadSuccessCopyWithImpl(_loadSuccess _value, $Res Function(_loadSuccess) _then) : super(_value, (v) => _then(v as _loadSuccess));

  @override
  _loadSuccess get _value => super._value as _loadSuccess;

  @override
  $Res call({
    Object achievements = freezed,
  }) {
    return _then(_loadSuccess(
      achievements == freezed ? _value.achievements : achievements as List<Achievement>,
    ));
  }
}

class _$_loadSuccess implements _loadSuccess {
  const _$_loadSuccess(this.achievements) : assert(achievements != null);

  @override
  final List<Achievement> achievements;

  @override
  String toString() {
    return 'AchievementManagementWatcherState.loadSuccess(achievements: $achievements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _loadSuccess && (identical(other.achievements, achievements) || const DeepCollectionEquality().equals(other.achievements, achievements)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(achievements);

  @override
  _$loadSuccessCopyWith<_loadSuccess> get copyWith => __$loadSuccessCopyWithImpl<_loadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(List<Achievement> achievements),
    @required Result loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(achievements);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(List<Achievement> achievements),
    Result loadFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(achievements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadSuccess(_loadSuccess value),
    @required Result loadFailure(_loadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_loadSuccess value),
    Result loadFailure(_loadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _loadSuccess implements AchievementManagementWatcherState {
  const factory _loadSuccess(List<Achievement> achievements) = _$_loadSuccess;

  List<Achievement> get achievements;

  _$loadSuccessCopyWith<_loadSuccess> get copyWith;
}

abstract class _$loadFailureCopyWith<$Res> {
  factory _$loadFailureCopyWith(_loadFailure value, $Res Function(_loadFailure) then) = __$loadFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

class __$loadFailureCopyWithImpl<$Res> extends _$AchievementManagementWatcherStateCopyWithImpl<$Res> implements _$loadFailureCopyWith<$Res> {
  __$loadFailureCopyWithImpl(_loadFailure _value, $Res Function(_loadFailure) _then) : super(_value, (v) => _then(v as _loadFailure));

  @override
  _loadFailure get _value => super._value as _loadFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_loadFailure(
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

class _$_loadFailure implements _loadFailure {
  const _$_loadFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'AchievementManagementWatcherState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _loadFailure && (identical(other.failure, failure) || const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$loadFailureCopyWith<_loadFailure> get copyWith => __$loadFailureCopyWithImpl<_loadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(List<Achievement> achievements),
    @required Result loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(List<Achievement> achievements),
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
    @required Result loadSuccess(_loadSuccess value),
    @required Result loadFailure(_loadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_loadSuccess value),
    Result loadFailure(_loadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _loadFailure implements AchievementManagementWatcherState {
  const factory _loadFailure(Failure<dynamic> failure) = _$_loadFailure;

  Failure<dynamic> get failure;

  _$loadFailureCopyWith<_loadFailure> get copyWith;
}
