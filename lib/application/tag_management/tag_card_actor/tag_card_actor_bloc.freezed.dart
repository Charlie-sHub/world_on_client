// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'tag_card_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TagCardActorEventTearOff {
  const _$TagCardActorEventTearOff();

  _Initialized initialized() {
    return const _Initialized();
  }

  _DismissedFromInterests dismissedFromInterests(Tag tag) {
    return _DismissedFromInterests(
      tag,
    );
  }

  _AddedToInterests addedToInterests(Tag tag) {
    return _AddedToInterests(
      tag,
    );
  }
}

// ignore: unused_element
const $TagCardActorEvent = _$TagCardActorEventTearOff();

mixin _$TagCardActorEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(),
    @required Result dismissedFromInterests(Tag tag),
    @required Result addedToInterests(Tag tag),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(),
    Result dismissedFromInterests(Tag tag),
    Result addedToInterests(Tag tag),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result dismissedFromInterests(_DismissedFromInterests value),
    @required Result addedToInterests(_AddedToInterests value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result dismissedFromInterests(_DismissedFromInterests value),
    Result addedToInterests(_AddedToInterests value),
    @required Result orElse(),
  });
}

abstract class $TagCardActorEventCopyWith<$Res> {
  factory $TagCardActorEventCopyWith(TagCardActorEvent value, $Res Function(TagCardActorEvent) then) = _$TagCardActorEventCopyWithImpl<$Res>;
}

class _$TagCardActorEventCopyWithImpl<$Res> implements $TagCardActorEventCopyWith<$Res> {
  _$TagCardActorEventCopyWithImpl(this._value, this._then);

  final TagCardActorEvent _value;

  // ignore: unused_field
  final $Res Function(TagCardActorEvent) _then;
}

abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(_Initialized value, $Res Function(_Initialized) then) = __$InitializedCopyWithImpl<$Res>;
}

class __$InitializedCopyWithImpl<$Res> extends _$TagCardActorEventCopyWithImpl<$Res> implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(_Initialized _value, $Res Function(_Initialized) _then) : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;
}

class _$_Initialized implements _Initialized {
  const _$_Initialized();

  @override
  String toString() {
    return 'TagCardActorEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(),
    @required Result dismissedFromInterests(Tag tag),
    @required Result addedToInterests(Tag tag),
  }) {
    assert(initialized != null);
    assert(dismissedFromInterests != null);
    assert(addedToInterests != null);
    return initialized();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(),
    Result dismissedFromInterests(Tag tag),
    Result addedToInterests(Tag tag),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result dismissedFromInterests(_DismissedFromInterests value),
    @required Result addedToInterests(_AddedToInterests value),
  }) {
    assert(initialized != null);
    assert(dismissedFromInterests != null);
    assert(addedToInterests != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result dismissedFromInterests(_DismissedFromInterests value),
    Result addedToInterests(_AddedToInterests value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements TagCardActorEvent {
  const factory _Initialized() = _$_Initialized;
}

abstract class _$DismissedFromInterestsCopyWith<$Res> {
  factory _$DismissedFromInterestsCopyWith(_DismissedFromInterests value, $Res Function(_DismissedFromInterests) then) = __$DismissedFromInterestsCopyWithImpl<$Res>;

  $Res call({Tag tag});

  $TagCopyWith<$Res> get tag;
}

class __$DismissedFromInterestsCopyWithImpl<$Res> extends _$TagCardActorEventCopyWithImpl<$Res> implements _$DismissedFromInterestsCopyWith<$Res> {
  __$DismissedFromInterestsCopyWithImpl(_DismissedFromInterests _value, $Res Function(_DismissedFromInterests) _then) : super(_value, (v) => _then(v as _DismissedFromInterests));

  @override
  _DismissedFromInterests get _value => super._value as _DismissedFromInterests;

  @override
  $Res call({
    Object tag = freezed,
  }) {
    return _then(_DismissedFromInterests(
      tag == freezed ? _value.tag : tag as Tag,
    ));
  }

  @override
  $TagCopyWith<$Res> get tag {
    if (_value.tag == null) {
      return null;
    }
    return $TagCopyWith<$Res>(_value.tag, (value) {
      return _then(_value.copyWith(tag: value));
    });
  }
}

class _$_DismissedFromInterests implements _DismissedFromInterests {
  const _$_DismissedFromInterests(this.tag) : assert(tag != null);

  @override
  final Tag tag;

  @override
  String toString() {
    return 'TagCardActorEvent.dismissedFromInterests(tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DismissedFromInterests && (identical(other.tag, tag) || const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(tag);

  @override
  _$DismissedFromInterestsCopyWith<_DismissedFromInterests> get copyWith => __$DismissedFromInterestsCopyWithImpl<_DismissedFromInterests>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(),
    @required Result dismissedFromInterests(Tag tag),
    @required Result addedToInterests(Tag tag),
  }) {
    assert(initialized != null);
    assert(dismissedFromInterests != null);
    assert(addedToInterests != null);
    return dismissedFromInterests(tag);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(),
    Result dismissedFromInterests(Tag tag),
    Result addedToInterests(Tag tag),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dismissedFromInterests != null) {
      return dismissedFromInterests(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result dismissedFromInterests(_DismissedFromInterests value),
    @required Result addedToInterests(_AddedToInterests value),
  }) {
    assert(initialized != null);
    assert(dismissedFromInterests != null);
    assert(addedToInterests != null);
    return dismissedFromInterests(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result dismissedFromInterests(_DismissedFromInterests value),
    Result addedToInterests(_AddedToInterests value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dismissedFromInterests != null) {
      return dismissedFromInterests(this);
    }
    return orElse();
  }
}

abstract class _DismissedFromInterests implements TagCardActorEvent {
  const factory _DismissedFromInterests(Tag tag) = _$_DismissedFromInterests;

  Tag get tag;

  _$DismissedFromInterestsCopyWith<_DismissedFromInterests> get copyWith;
}

abstract class _$AddedToInterestsCopyWith<$Res> {
  factory _$AddedToInterestsCopyWith(_AddedToInterests value, $Res Function(_AddedToInterests) then) = __$AddedToInterestsCopyWithImpl<$Res>;

  $Res call({Tag tag});

  $TagCopyWith<$Res> get tag;
}

class __$AddedToInterestsCopyWithImpl<$Res> extends _$TagCardActorEventCopyWithImpl<$Res> implements _$AddedToInterestsCopyWith<$Res> {
  __$AddedToInterestsCopyWithImpl(_AddedToInterests _value, $Res Function(_AddedToInterests) _then) : super(_value, (v) => _then(v as _AddedToInterests));

  @override
  _AddedToInterests get _value => super._value as _AddedToInterests;

  @override
  $Res call({
    Object tag = freezed,
  }) {
    return _then(_AddedToInterests(
      tag == freezed ? _value.tag : tag as Tag,
    ));
  }

  @override
  $TagCopyWith<$Res> get tag {
    if (_value.tag == null) {
      return null;
    }
    return $TagCopyWith<$Res>(_value.tag, (value) {
      return _then(_value.copyWith(tag: value));
    });
  }
}

class _$_AddedToInterests implements _AddedToInterests {
  const _$_AddedToInterests(this.tag) : assert(tag != null);

  @override
  final Tag tag;

  @override
  String toString() {
    return 'TagCardActorEvent.addedToInterests(tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddedToInterests && (identical(other.tag, tag) || const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(tag);

  @override
  _$AddedToInterestsCopyWith<_AddedToInterests> get copyWith => __$AddedToInterestsCopyWithImpl<_AddedToInterests>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(),
    @required Result dismissedFromInterests(Tag tag),
    @required Result addedToInterests(Tag tag),
  }) {
    assert(initialized != null);
    assert(dismissedFromInterests != null);
    assert(addedToInterests != null);
    return addedToInterests(tag);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(),
    Result dismissedFromInterests(Tag tag),
    Result addedToInterests(Tag tag),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addedToInterests != null) {
      return addedToInterests(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result dismissedFromInterests(_DismissedFromInterests value),
    @required Result addedToInterests(_AddedToInterests value),
  }) {
    assert(initialized != null);
    assert(dismissedFromInterests != null);
    assert(addedToInterests != null);
    return addedToInterests(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result dismissedFromInterests(_DismissedFromInterests value),
    Result addedToInterests(_AddedToInterests value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addedToInterests != null) {
      return addedToInterests(this);
    }
    return orElse();
  }
}

abstract class _AddedToInterests implements TagCardActorEvent {
  const factory _AddedToInterests(Tag tag) = _$_AddedToInterests;

  Tag get tag;

  _$AddedToInterestsCopyWith<_AddedToInterests> get copyWith;
}

class _$TagCardActorStateTearOff {
  const _$TagCardActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _InInterests inInterests() {
    return const _InInterests();
  }

  _NotInInterests noInInterests() {
    return const _NotInInterests();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _AdditionSuccess additionSuccess() {
    return const _AdditionSuccess();
  }

  _AdditionFailure additionFailure(Failure<dynamic> failure) {
    return _AdditionFailure(
      failure,
    );
  }

  _DismissalSuccess dismissalSuccess() {
    return const _DismissalSuccess();
  }

  _DismissalFailure dismissalFailure(Failure<dynamic> failure) {
    return _DismissalFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $TagCardActorState = _$TagCardActorStateTearOff();

mixin _$TagCardActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result inInterests(),
    @required Result noInInterests(),
    @required Result actionInProgress(),
    @required Result additionSuccess(),
    @required Result additionFailure(Failure<dynamic> failure),
    @required Result dismissalSuccess(),
    @required Result dismissalFailure(Failure<dynamic> failure),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result inInterests(),
    Result noInInterests(),
    Result actionInProgress(),
    Result additionSuccess(),
    Result additionFailure(Failure<dynamic> failure),
    Result dismissalSuccess(),
    Result dismissalFailure(Failure<dynamic> failure),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result inInterests(_InInterests value),
    @required Result noInInterests(_NotInInterests value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result additionSuccess(_AdditionSuccess value),
    @required Result additionFailure(_AdditionFailure value),
    @required Result dismissalSuccess(_DismissalSuccess value),
    @required Result dismissalFailure(_DismissalFailure value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result inInterests(_InInterests value),
    Result noInInterests(_NotInInterests value),
    Result actionInProgress(_ActionInProgress value),
    Result additionSuccess(_AdditionSuccess value),
    Result additionFailure(_AdditionFailure value),
    Result dismissalSuccess(_DismissalSuccess value),
    Result dismissalFailure(_DismissalFailure value),
    @required Result orElse(),
  });
}

abstract class $TagCardActorStateCopyWith<$Res> {
  factory $TagCardActorStateCopyWith(TagCardActorState value, $Res Function(TagCardActorState) then) = _$TagCardActorStateCopyWithImpl<$Res>;
}

class _$TagCardActorStateCopyWithImpl<$Res> implements $TagCardActorStateCopyWith<$Res> {
  _$TagCardActorStateCopyWithImpl(this._value, this._then);

  final TagCardActorState _value;

  // ignore: unused_field
  final $Res Function(TagCardActorState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$TagCardActorStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TagCardActorState.initial()';
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
    @required Result inInterests(),
    @required Result noInInterests(),
    @required Result actionInProgress(),
    @required Result additionSuccess(),
    @required Result additionFailure(Failure<dynamic> failure),
    @required Result dismissalSuccess(),
    @required Result dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(noInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result inInterests(),
    Result noInInterests(),
    Result actionInProgress(),
    Result additionSuccess(),
    Result additionFailure(Failure<dynamic> failure),
    Result dismissalSuccess(),
    Result dismissalFailure(Failure<dynamic> failure),
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
    @required Result inInterests(_InInterests value),
    @required Result noInInterests(_NotInInterests value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result additionSuccess(_AdditionSuccess value),
    @required Result additionFailure(_AdditionFailure value),
    @required Result dismissalSuccess(_DismissalSuccess value),
    @required Result dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(noInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result inInterests(_InInterests value),
    Result noInInterests(_NotInInterests value),
    Result actionInProgress(_ActionInProgress value),
    Result additionSuccess(_AdditionSuccess value),
    Result additionFailure(_AdditionFailure value),
    Result dismissalSuccess(_DismissalSuccess value),
    Result dismissalFailure(_DismissalFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TagCardActorState {
  const factory _Initial() = _$_Initial;
}

abstract class _$InInterestsCopyWith<$Res> {
  factory _$InInterestsCopyWith(_InInterests value, $Res Function(_InInterests) then) = __$InInterestsCopyWithImpl<$Res>;
}

class __$InInterestsCopyWithImpl<$Res> extends _$TagCardActorStateCopyWithImpl<$Res> implements _$InInterestsCopyWith<$Res> {
  __$InInterestsCopyWithImpl(_InInterests _value, $Res Function(_InInterests) _then) : super(_value, (v) => _then(v as _InInterests));

  @override
  _InInterests get _value => super._value as _InInterests;
}

class _$_InInterests implements _InInterests {
  const _$_InInterests();

  @override
  String toString() {
    return 'TagCardActorState.inInterests()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InInterests);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result inInterests(),
    @required Result noInInterests(),
    @required Result actionInProgress(),
    @required Result additionSuccess(),
    @required Result additionFailure(Failure<dynamic> failure),
    @required Result dismissalSuccess(),
    @required Result dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(noInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return inInterests();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result inInterests(),
    Result noInInterests(),
    Result actionInProgress(),
    Result additionSuccess(),
    Result additionFailure(Failure<dynamic> failure),
    Result dismissalSuccess(),
    Result dismissalFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inInterests != null) {
      return inInterests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result inInterests(_InInterests value),
    @required Result noInInterests(_NotInInterests value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result additionSuccess(_AdditionSuccess value),
    @required Result additionFailure(_AdditionFailure value),
    @required Result dismissalSuccess(_DismissalSuccess value),
    @required Result dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(noInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return inInterests(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result inInterests(_InInterests value),
    Result noInInterests(_NotInInterests value),
    Result actionInProgress(_ActionInProgress value),
    Result additionSuccess(_AdditionSuccess value),
    Result additionFailure(_AdditionFailure value),
    Result dismissalSuccess(_DismissalSuccess value),
    Result dismissalFailure(_DismissalFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inInterests != null) {
      return inInterests(this);
    }
    return orElse();
  }
}

abstract class _InInterests implements TagCardActorState {
  const factory _InInterests() = _$_InInterests;
}

abstract class _$NotInInterestsCopyWith<$Res> {
  factory _$NotInInterestsCopyWith(_NotInInterests value, $Res Function(_NotInInterests) then) = __$NotInInterestsCopyWithImpl<$Res>;
}

class __$NotInInterestsCopyWithImpl<$Res> extends _$TagCardActorStateCopyWithImpl<$Res> implements _$NotInInterestsCopyWith<$Res> {
  __$NotInInterestsCopyWithImpl(_NotInInterests _value, $Res Function(_NotInInterests) _then) : super(_value, (v) => _then(v as _NotInInterests));

  @override
  _NotInInterests get _value => super._value as _NotInInterests;
}

class _$_NotInInterests implements _NotInInterests {
  const _$_NotInInterests();

  @override
  String toString() {
    return 'TagCardActorState.noInInterests()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotInInterests);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result inInterests(),
    @required Result noInInterests(),
    @required Result actionInProgress(),
    @required Result additionSuccess(),
    @required Result additionFailure(Failure<dynamic> failure),
    @required Result dismissalSuccess(),
    @required Result dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(noInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return noInInterests();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result inInterests(),
    Result noInInterests(),
    Result actionInProgress(),
    Result additionSuccess(),
    Result additionFailure(Failure<dynamic> failure),
    Result dismissalSuccess(),
    Result dismissalFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noInInterests != null) {
      return noInInterests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result inInterests(_InInterests value),
    @required Result noInInterests(_NotInInterests value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result additionSuccess(_AdditionSuccess value),
    @required Result additionFailure(_AdditionFailure value),
    @required Result dismissalSuccess(_DismissalSuccess value),
    @required Result dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(noInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return noInInterests(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result inInterests(_InInterests value),
    Result noInInterests(_NotInInterests value),
    Result actionInProgress(_ActionInProgress value),
    Result additionSuccess(_AdditionSuccess value),
    Result additionFailure(_AdditionFailure value),
    Result dismissalSuccess(_DismissalSuccess value),
    Result dismissalFailure(_DismissalFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noInInterests != null) {
      return noInInterests(this);
    }
    return orElse();
  }
}

abstract class _NotInInterests implements TagCardActorState {
  const factory _NotInInterests() = _$_NotInInterests;
}

abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(_ActionInProgress value, $Res Function(_ActionInProgress) then) = __$ActionInProgressCopyWithImpl<$Res>;
}

class __$ActionInProgressCopyWithImpl<$Res> extends _$TagCardActorStateCopyWithImpl<$Res> implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(_ActionInProgress _value, $Res Function(_ActionInProgress) _then) : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'TagCardActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result inInterests(),
    @required Result noInInterests(),
    @required Result actionInProgress(),
    @required Result additionSuccess(),
    @required Result additionFailure(Failure<dynamic> failure),
    @required Result dismissalSuccess(),
    @required Result dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(noInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result inInterests(),
    Result noInInterests(),
    Result actionInProgress(),
    Result additionSuccess(),
    Result additionFailure(Failure<dynamic> failure),
    Result dismissalSuccess(),
    Result dismissalFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result inInterests(_InInterests value),
    @required Result noInInterests(_NotInInterests value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result additionSuccess(_AdditionSuccess value),
    @required Result additionFailure(_AdditionFailure value),
    @required Result dismissalSuccess(_DismissalSuccess value),
    @required Result dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(noInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result inInterests(_InInterests value),
    Result noInInterests(_NotInInterests value),
    Result actionInProgress(_ActionInProgress value),
    Result additionSuccess(_AdditionSuccess value),
    Result additionFailure(_AdditionFailure value),
    Result dismissalSuccess(_DismissalSuccess value),
    Result dismissalFailure(_DismissalFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements TagCardActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

abstract class _$AdditionSuccessCopyWith<$Res> {
  factory _$AdditionSuccessCopyWith(_AdditionSuccess value, $Res Function(_AdditionSuccess) then) = __$AdditionSuccessCopyWithImpl<$Res>;
}

class __$AdditionSuccessCopyWithImpl<$Res> extends _$TagCardActorStateCopyWithImpl<$Res> implements _$AdditionSuccessCopyWith<$Res> {
  __$AdditionSuccessCopyWithImpl(_AdditionSuccess _value, $Res Function(_AdditionSuccess) _then) : super(_value, (v) => _then(v as _AdditionSuccess));

  @override
  _AdditionSuccess get _value => super._value as _AdditionSuccess;
}

class _$_AdditionSuccess implements _AdditionSuccess {
  const _$_AdditionSuccess();

  @override
  String toString() {
    return 'TagCardActorState.additionSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AdditionSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result inInterests(),
    @required Result noInInterests(),
    @required Result actionInProgress(),
    @required Result additionSuccess(),
    @required Result additionFailure(Failure<dynamic> failure),
    @required Result dismissalSuccess(),
    @required Result dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(noInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return additionSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result inInterests(),
    Result noInInterests(),
    Result actionInProgress(),
    Result additionSuccess(),
    Result additionFailure(Failure<dynamic> failure),
    Result dismissalSuccess(),
    Result dismissalFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (additionSuccess != null) {
      return additionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result inInterests(_InInterests value),
    @required Result noInInterests(_NotInInterests value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result additionSuccess(_AdditionSuccess value),
    @required Result additionFailure(_AdditionFailure value),
    @required Result dismissalSuccess(_DismissalSuccess value),
    @required Result dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(noInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return additionSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result inInterests(_InInterests value),
    Result noInInterests(_NotInInterests value),
    Result actionInProgress(_ActionInProgress value),
    Result additionSuccess(_AdditionSuccess value),
    Result additionFailure(_AdditionFailure value),
    Result dismissalSuccess(_DismissalSuccess value),
    Result dismissalFailure(_DismissalFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (additionSuccess != null) {
      return additionSuccess(this);
    }
    return orElse();
  }
}

abstract class _AdditionSuccess implements TagCardActorState {
  const factory _AdditionSuccess() = _$_AdditionSuccess;
}

abstract class _$AdditionFailureCopyWith<$Res> {
  factory _$AdditionFailureCopyWith(_AdditionFailure value, $Res Function(_AdditionFailure) then) = __$AdditionFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

class __$AdditionFailureCopyWithImpl<$Res> extends _$TagCardActorStateCopyWithImpl<$Res> implements _$AdditionFailureCopyWith<$Res> {
  __$AdditionFailureCopyWithImpl(_AdditionFailure _value, $Res Function(_AdditionFailure) _then) : super(_value, (v) => _then(v as _AdditionFailure));

  @override
  _AdditionFailure get _value => super._value as _AdditionFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_AdditionFailure(
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

class _$_AdditionFailure implements _AdditionFailure {
  const _$_AdditionFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'TagCardActorState.additionFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AdditionFailure && (identical(other.failure, failure) || const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$AdditionFailureCopyWith<_AdditionFailure> get copyWith => __$AdditionFailureCopyWithImpl<_AdditionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result inInterests(),
    @required Result noInInterests(),
    @required Result actionInProgress(),
    @required Result additionSuccess(),
    @required Result additionFailure(Failure<dynamic> failure),
    @required Result dismissalSuccess(),
    @required Result dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(noInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return additionFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result inInterests(),
    Result noInInterests(),
    Result actionInProgress(),
    Result additionSuccess(),
    Result additionFailure(Failure<dynamic> failure),
    Result dismissalSuccess(),
    Result dismissalFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (additionFailure != null) {
      return additionFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result inInterests(_InInterests value),
    @required Result noInInterests(_NotInInterests value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result additionSuccess(_AdditionSuccess value),
    @required Result additionFailure(_AdditionFailure value),
    @required Result dismissalSuccess(_DismissalSuccess value),
    @required Result dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(noInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return additionFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result inInterests(_InInterests value),
    Result noInInterests(_NotInInterests value),
    Result actionInProgress(_ActionInProgress value),
    Result additionSuccess(_AdditionSuccess value),
    Result additionFailure(_AdditionFailure value),
    Result dismissalSuccess(_DismissalSuccess value),
    Result dismissalFailure(_DismissalFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (additionFailure != null) {
      return additionFailure(this);
    }
    return orElse();
  }
}

abstract class _AdditionFailure implements TagCardActorState {
  const factory _AdditionFailure(Failure<dynamic> failure) = _$_AdditionFailure;

  Failure<dynamic> get failure;

  _$AdditionFailureCopyWith<_AdditionFailure> get copyWith;
}

abstract class _$DismissalSuccessCopyWith<$Res> {
  factory _$DismissalSuccessCopyWith(_DismissalSuccess value, $Res Function(_DismissalSuccess) then) = __$DismissalSuccessCopyWithImpl<$Res>;
}

class __$DismissalSuccessCopyWithImpl<$Res> extends _$TagCardActorStateCopyWithImpl<$Res> implements _$DismissalSuccessCopyWith<$Res> {
  __$DismissalSuccessCopyWithImpl(_DismissalSuccess _value, $Res Function(_DismissalSuccess) _then) : super(_value, (v) => _then(v as _DismissalSuccess));

  @override
  _DismissalSuccess get _value => super._value as _DismissalSuccess;
}

class _$_DismissalSuccess implements _DismissalSuccess {
  const _$_DismissalSuccess();

  @override
  String toString() {
    return 'TagCardActorState.dismissalSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DismissalSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result inInterests(),
    @required Result noInInterests(),
    @required Result actionInProgress(),
    @required Result additionSuccess(),
    @required Result additionFailure(Failure<dynamic> failure),
    @required Result dismissalSuccess(),
    @required Result dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(noInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return dismissalSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result inInterests(),
    Result noInInterests(),
    Result actionInProgress(),
    Result additionSuccess(),
    Result additionFailure(Failure<dynamic> failure),
    Result dismissalSuccess(),
    Result dismissalFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dismissalSuccess != null) {
      return dismissalSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result inInterests(_InInterests value),
    @required Result noInInterests(_NotInInterests value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result additionSuccess(_AdditionSuccess value),
    @required Result additionFailure(_AdditionFailure value),
    @required Result dismissalSuccess(_DismissalSuccess value),
    @required Result dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(noInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return dismissalSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result inInterests(_InInterests value),
    Result noInInterests(_NotInInterests value),
    Result actionInProgress(_ActionInProgress value),
    Result additionSuccess(_AdditionSuccess value),
    Result additionFailure(_AdditionFailure value),
    Result dismissalSuccess(_DismissalSuccess value),
    Result dismissalFailure(_DismissalFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dismissalSuccess != null) {
      return dismissalSuccess(this);
    }
    return orElse();
  }
}

abstract class _DismissalSuccess implements TagCardActorState {
  const factory _DismissalSuccess() = _$_DismissalSuccess;
}

abstract class _$DismissalFailureCopyWith<$Res> {
  factory _$DismissalFailureCopyWith(_DismissalFailure value, $Res Function(_DismissalFailure) then) = __$DismissalFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

class __$DismissalFailureCopyWithImpl<$Res> extends _$TagCardActorStateCopyWithImpl<$Res> implements _$DismissalFailureCopyWith<$Res> {
  __$DismissalFailureCopyWithImpl(_DismissalFailure _value, $Res Function(_DismissalFailure) _then) : super(_value, (v) => _then(v as _DismissalFailure));

  @override
  _DismissalFailure get _value => super._value as _DismissalFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_DismissalFailure(
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

class _$_DismissalFailure implements _DismissalFailure {
  const _$_DismissalFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'TagCardActorState.dismissalFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DismissalFailure && (identical(other.failure, failure) || const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$DismissalFailureCopyWith<_DismissalFailure> get copyWith => __$DismissalFailureCopyWithImpl<_DismissalFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result inInterests(),
    @required Result noInInterests(),
    @required Result actionInProgress(),
    @required Result additionSuccess(),
    @required Result additionFailure(Failure<dynamic> failure),
    @required Result dismissalSuccess(),
    @required Result dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(noInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return dismissalFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result inInterests(),
    Result noInInterests(),
    Result actionInProgress(),
    Result additionSuccess(),
    Result additionFailure(Failure<dynamic> failure),
    Result dismissalSuccess(),
    Result dismissalFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dismissalFailure != null) {
      return dismissalFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result inInterests(_InInterests value),
    @required Result noInInterests(_NotInInterests value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result additionSuccess(_AdditionSuccess value),
    @required Result additionFailure(_AdditionFailure value),
    @required Result dismissalSuccess(_DismissalSuccess value),
    @required Result dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(noInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return dismissalFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result inInterests(_InInterests value),
    Result noInInterests(_NotInInterests value),
    Result actionInProgress(_ActionInProgress value),
    Result additionSuccess(_AdditionSuccess value),
    Result additionFailure(_AdditionFailure value),
    Result dismissalSuccess(_DismissalSuccess value),
    Result dismissalFailure(_DismissalFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dismissalFailure != null) {
      return dismissalFailure(this);
    }
    return orElse();
  }
}

abstract class _DismissalFailure implements TagCardActorState {
  const factory _DismissalFailure(Failure<dynamic> failure) = _$_DismissalFailure;

  Failure<dynamic> get failure;

  _$DismissalFailureCopyWith<_DismissalFailure> get copyWith;
}
