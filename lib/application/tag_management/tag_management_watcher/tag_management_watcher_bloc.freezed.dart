// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'tag_management_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TagManagementWatcherEventTearOff {
  const _$TagManagementWatcherEventTearOff();

  _WatchAllTagsStarted watchAllTagsStarted() {
    return const _WatchAllTagsStarted();
  }
}

// ignore: unused_element
const $TagManagementWatcherEvent = _$TagManagementWatcherEventTearOff();

mixin _$TagManagementWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllTagsStarted(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllTagsStarted(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllTagsStarted(_WatchAllTagsStarted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllTagsStarted(_WatchAllTagsStarted value),
    @required Result orElse(),
  });
}

abstract class $TagManagementWatcherEventCopyWith<$Res> {
  factory $TagManagementWatcherEventCopyWith(TagManagementWatcherEvent value, $Res Function(TagManagementWatcherEvent) then) = _$TagManagementWatcherEventCopyWithImpl<$Res>;
}

class _$TagManagementWatcherEventCopyWithImpl<$Res> implements $TagManagementWatcherEventCopyWith<$Res> {
  _$TagManagementWatcherEventCopyWithImpl(this._value, this._then);

  final TagManagementWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(TagManagementWatcherEvent) _then;
}

abstract class _$WatchAllTagsStartedCopyWith<$Res> {
  factory _$WatchAllTagsStartedCopyWith(_WatchAllTagsStarted value,
    $Res Function(_WatchAllTagsStarted) then) =
  __$WatchAllTagsStartedCopyWithImpl<$Res>;
}

class __$WatchAllTagsStartedCopyWithImpl<$Res> extends _$TagManagementWatcherEventCopyWithImpl<$Res>
  implements _$WatchAllTagsStartedCopyWith<$Res> {
  __$WatchAllTagsStartedCopyWithImpl(_WatchAllTagsStarted _value, $Res Function(_WatchAllTagsStarted) _then)
    : super(_value, (v) => _then(v as _WatchAllTagsStarted));

  @override
  _WatchAllTagsStarted get _value => super._value as _WatchAllTagsStarted;
}

class _$_WatchAllTagsStarted implements _WatchAllTagsStarted {
  const _$_WatchAllTagsStarted();

  @override
  String toString() {
    return 'TagManagementWatcherEvent.watchAllTagsStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllTagsStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllTagsStarted(),
  }) {
    assert(watchAllTagsStarted != null);
    return watchAllTagsStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllTagsStarted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllTagsStarted != null) {
      return watchAllTagsStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllTagsStarted(_WatchAllTagsStarted value),
  }) {
    assert(watchAllTagsStarted != null);
    return watchAllTagsStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllTagsStarted(_WatchAllTagsStarted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllTagsStarted != null) {
      return watchAllTagsStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllTagsStarted implements TagManagementWatcherEvent {
  const factory _WatchAllTagsStarted() = _$_WatchAllTagsStarted;
}

class _$TagManagementWatcherStateTearOff {
  const _$TagManagementWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _loadSuccess loadSuccess(KtSet<Tag> tags) {
    return _loadSuccess(
      tags,
    );
  }

  _loadFailure loadFailure(Failure<dynamic> failure) {
    return _loadFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $TagManagementWatcherState = _$TagManagementWatcherStateTearOff();

mixin _$TagManagementWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtSet<Tag> tags),
    @required Result loadFailure(Failure<dynamic> failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtSet<Tag> tags),
    Result loadFailure(Failure<dynamic> failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_loadSuccess value),
    @required Result loadFailure(_loadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_loadSuccess value),
    Result loadFailure(_loadFailure value),
    @required Result orElse(),
  });
}

abstract class $TagManagementWatcherStateCopyWith<$Res> {
  factory $TagManagementWatcherStateCopyWith(TagManagementWatcherState value,
    $Res Function(TagManagementWatcherState) then) =
  _$TagManagementWatcherStateCopyWithImpl<$Res>;
}

class _$TagManagementWatcherStateCopyWithImpl<$Res>
  implements $TagManagementWatcherStateCopyWith<$Res> {
  _$TagManagementWatcherStateCopyWithImpl(this._value, this._then);

  final TagManagementWatcherState _value;
  // ignore: unused_field
  final $Res Function(TagManagementWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
  __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$TagManagementWatcherStateCopyWithImpl<$Res>
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
    return 'TagManagementWatcherState.initial()';
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
    @required Result loadSuccess(KtSet<Tag> tags),
    @required Result loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtSet<Tag> tags),
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
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_loadSuccess value),
    @required Result loadFailure(_loadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
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

abstract class _Initial implements TagManagementWatcherState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(_LoadInProgress value, $Res Function(_LoadInProgress) then) =
  __$LoadInProgressCopyWithImpl<$Res>;
}

class __$LoadInProgressCopyWithImpl<$Res> extends _$TagManagementWatcherStateCopyWithImpl<$Res>
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
    return 'TagManagementWatcherState.loadInProgress()';
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
    @required Result loadSuccess(KtSet<Tag> tags),
    @required Result loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtSet<Tag> tags),
    Result loadFailure(Failure<dynamic> failure),
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
    @required Result loadSuccess(_loadSuccess value),
    @required Result loadFailure(_loadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_loadSuccess value),
    Result loadFailure(_loadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements TagManagementWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

abstract class _$loadSuccessCopyWith<$Res> {
  factory _$loadSuccessCopyWith(_loadSuccess value, $Res Function(_loadSuccess) then) =
  __$loadSuccessCopyWithImpl<$Res>;
  $Res call({KtSet<Tag> tags});
}

class __$loadSuccessCopyWithImpl<$Res> extends _$TagManagementWatcherStateCopyWithImpl<$Res>
  implements _$loadSuccessCopyWith<$Res> {
  __$loadSuccessCopyWithImpl(_loadSuccess _value, $Res Function(_loadSuccess) _then)
    : super(_value, (v) => _then(v as _loadSuccess));

  @override
  _loadSuccess get _value => super._value as _loadSuccess;

  @override
  $Res call({
    Object tags = freezed,
  }) {
    return _then(_loadSuccess(
      tags == freezed ? _value.tags : tags as KtSet<Tag>,
    ));
  }
}

class _$_loadSuccess implements _loadSuccess {
  const _$_loadSuccess(this.tags) : assert(tags != null);

  @override
  final KtSet<Tag> tags;

  @override
  String toString() {
    return 'TagManagementWatcherState.loadSuccess(tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _loadSuccess &&
        (identical(other.tags, tags) ||
          const DeepCollectionEquality().equals(other.tags, tags)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(tags);

  @override
  _$loadSuccessCopyWith<_loadSuccess> get copyWith =>
    __$loadSuccessCopyWithImpl<_loadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtSet<Tag> tags),
    @required Result loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(tags);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtSet<Tag> tags),
    Result loadFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(tags);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_loadSuccess value),
    @required Result loadFailure(_loadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
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

abstract class _loadSuccess implements TagManagementWatcherState {
  const factory _loadSuccess(KtSet<Tag> tags) = _$_loadSuccess;

  KtSet<Tag> get tags;
  _$loadSuccessCopyWith<_loadSuccess> get copyWith;
}

abstract class _$loadFailureCopyWith<$Res> {
  factory _$loadFailureCopyWith(_loadFailure value, $Res Function(_loadFailure) then) =
  __$loadFailureCopyWithImpl<$Res>;
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

class __$loadFailureCopyWithImpl<$Res> extends _$TagManagementWatcherStateCopyWithImpl<$Res>
  implements _$loadFailureCopyWith<$Res> {
  __$loadFailureCopyWithImpl(_loadFailure _value, $Res Function(_loadFailure) _then)
    : super(_value, (v) => _then(v as _loadFailure));

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
    return 'TagManagementWatcherState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _loadFailure &&
        (identical(other.failure, failure) ||
          const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$loadFailureCopyWith<_loadFailure> get copyWith =>
    __$loadFailureCopyWithImpl<_loadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtSet<Tag> tags),
    @required Result loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtSet<Tag> tags),
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
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_loadSuccess value),
    @required Result loadFailure(_loadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
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

abstract class _loadFailure implements TagManagementWatcherState {
  const factory _loadFailure(Failure<dynamic> failure) = _$_loadFailure;

  Failure<dynamic> get failure;
  _$loadFailureCopyWith<_loadFailure> get copyWith;
}
