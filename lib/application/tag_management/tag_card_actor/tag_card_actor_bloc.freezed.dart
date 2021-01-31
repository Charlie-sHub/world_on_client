// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tag_card_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TagCardActorEventTearOff {
  const _$TagCardActorEventTearOff();

// ignore: unused_element
  _Initialized initialized(Tag tag) {
    return _Initialized(
      tag,
    );
  }

// ignore: unused_element
  _DismissedFromInterests dismissedFromInterests(Tag tag) {
    return _DismissedFromInterests(
      tag,
    );
  }

// ignore: unused_element
  _AddedToInterests addedToInterests(Tag tag) {
    return _AddedToInterests(
      tag,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TagCardActorEvent = _$TagCardActorEventTearOff();

/// @nodoc
mixin _$TagCardActorEvent {
  Tag get tag;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Tag tag),
    @required TResult dismissedFromInterests(Tag tag),
    @required TResult addedToInterests(Tag tag),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Tag tag),
    TResult dismissedFromInterests(Tag tag),
    TResult addedToInterests(Tag tag),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult dismissedFromInterests(_DismissedFromInterests value),
    @required TResult addedToInterests(_AddedToInterests value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult dismissedFromInterests(_DismissedFromInterests value),
    TResult addedToInterests(_AddedToInterests value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $TagCardActorEventCopyWith<TagCardActorEvent> get copyWith;
}

/// @nodoc
abstract class $TagCardActorEventCopyWith<$Res> {
  factory $TagCardActorEventCopyWith(
          TagCardActorEvent value, $Res Function(TagCardActorEvent) then) =
      _$TagCardActorEventCopyWithImpl<$Res>;
  $Res call({Tag tag});

  $TagCopyWith<$Res> get tag;
}

/// @nodoc
class _$TagCardActorEventCopyWithImpl<$Res>
    implements $TagCardActorEventCopyWith<$Res> {
  _$TagCardActorEventCopyWithImpl(this._value, this._then);

  final TagCardActorEvent _value;
  // ignore: unused_field
  final $Res Function(TagCardActorEvent) _then;

  @override
  $Res call({
    Object tag = freezed,
  }) {
    return _then(_value.copyWith(
      tag: tag == freezed ? _value.tag : tag as Tag,
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

/// @nodoc
abstract class _$InitializedCopyWith<$Res>
    implements $TagCardActorEventCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  @override
  $Res call({Tag tag});

  @override
  $TagCopyWith<$Res> get tag;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$TagCardActorEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object tag = freezed,
  }) {
    return _then(_Initialized(
      tag == freezed ? _value.tag : tag as Tag,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.tag) : assert(tag != null);

  @override
  final Tag tag;

  @override
  String toString() {
    return 'TagCardActorEvent.initialized(tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tag);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Tag tag),
    @required TResult dismissedFromInterests(Tag tag),
    @required TResult addedToInterests(Tag tag),
  }) {
    assert(initialized != null);
    assert(dismissedFromInterests != null);
    assert(addedToInterests != null);
    return initialized(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Tag tag),
    TResult dismissedFromInterests(Tag tag),
    TResult addedToInterests(Tag tag),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult dismissedFromInterests(_DismissedFromInterests value),
    @required TResult addedToInterests(_AddedToInterests value),
  }) {
    assert(initialized != null);
    assert(dismissedFromInterests != null);
    assert(addedToInterests != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult dismissedFromInterests(_DismissedFromInterests value),
    TResult addedToInterests(_AddedToInterests value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements TagCardActorEvent {
  const factory _Initialized(Tag tag) = _$_Initialized;

  @override
  Tag get tag;
  @override
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$DismissedFromInterestsCopyWith<$Res>
    implements $TagCardActorEventCopyWith<$Res> {
  factory _$DismissedFromInterestsCopyWith(_DismissedFromInterests value,
          $Res Function(_DismissedFromInterests) then) =
      __$DismissedFromInterestsCopyWithImpl<$Res>;
  @override
  $Res call({Tag tag});

  @override
  $TagCopyWith<$Res> get tag;
}

/// @nodoc
class __$DismissedFromInterestsCopyWithImpl<$Res>
    extends _$TagCardActorEventCopyWithImpl<$Res>
    implements _$DismissedFromInterestsCopyWith<$Res> {
  __$DismissedFromInterestsCopyWithImpl(_DismissedFromInterests _value,
      $Res Function(_DismissedFromInterests) _then)
      : super(_value, (v) => _then(v as _DismissedFromInterests));

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
}

/// @nodoc
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
    return identical(this, other) ||
        (other is _DismissedFromInterests &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tag);

  @JsonKey(ignore: true)
  @override
  _$DismissedFromInterestsCopyWith<_DismissedFromInterests> get copyWith =>
      __$DismissedFromInterestsCopyWithImpl<_DismissedFromInterests>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Tag tag),
    @required TResult dismissedFromInterests(Tag tag),
    @required TResult addedToInterests(Tag tag),
  }) {
    assert(initialized != null);
    assert(dismissedFromInterests != null);
    assert(addedToInterests != null);
    return dismissedFromInterests(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Tag tag),
    TResult dismissedFromInterests(Tag tag),
    TResult addedToInterests(Tag tag),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dismissedFromInterests != null) {
      return dismissedFromInterests(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult dismissedFromInterests(_DismissedFromInterests value),
    @required TResult addedToInterests(_AddedToInterests value),
  }) {
    assert(initialized != null);
    assert(dismissedFromInterests != null);
    assert(addedToInterests != null);
    return dismissedFromInterests(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult dismissedFromInterests(_DismissedFromInterests value),
    TResult addedToInterests(_AddedToInterests value),
    @required TResult orElse(),
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

  @override
  Tag get tag;
  @override
  @JsonKey(ignore: true)
  _$DismissedFromInterestsCopyWith<_DismissedFromInterests> get copyWith;
}

/// @nodoc
abstract class _$AddedToInterestsCopyWith<$Res>
    implements $TagCardActorEventCopyWith<$Res> {
  factory _$AddedToInterestsCopyWith(
          _AddedToInterests value, $Res Function(_AddedToInterests) then) =
      __$AddedToInterestsCopyWithImpl<$Res>;
  @override
  $Res call({Tag tag});

  @override
  $TagCopyWith<$Res> get tag;
}

/// @nodoc
class __$AddedToInterestsCopyWithImpl<$Res>
    extends _$TagCardActorEventCopyWithImpl<$Res>
    implements _$AddedToInterestsCopyWith<$Res> {
  __$AddedToInterestsCopyWithImpl(
      _AddedToInterests _value, $Res Function(_AddedToInterests) _then)
      : super(_value, (v) => _then(v as _AddedToInterests));

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
}

/// @nodoc
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
    return identical(this, other) ||
        (other is _AddedToInterests &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tag);

  @JsonKey(ignore: true)
  @override
  _$AddedToInterestsCopyWith<_AddedToInterests> get copyWith =>
      __$AddedToInterestsCopyWithImpl<_AddedToInterests>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Tag tag),
    @required TResult dismissedFromInterests(Tag tag),
    @required TResult addedToInterests(Tag tag),
  }) {
    assert(initialized != null);
    assert(dismissedFromInterests != null);
    assert(addedToInterests != null);
    return addedToInterests(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Tag tag),
    TResult dismissedFromInterests(Tag tag),
    TResult addedToInterests(Tag tag),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addedToInterests != null) {
      return addedToInterests(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult dismissedFromInterests(_DismissedFromInterests value),
    @required TResult addedToInterests(_AddedToInterests value),
  }) {
    assert(initialized != null);
    assert(dismissedFromInterests != null);
    assert(addedToInterests != null);
    return addedToInterests(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult dismissedFromInterests(_DismissedFromInterests value),
    TResult addedToInterests(_AddedToInterests value),
    @required TResult orElse(),
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

  @override
  Tag get tag;
  @override
  @JsonKey(ignore: true)
  _$AddedToInterestsCopyWith<_AddedToInterests> get copyWith;
}

/// @nodoc
class _$TagCardActorStateTearOff {
  const _$TagCardActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _InInterests inInterests() {
    return const _InInterests();
  }

// ignore: unused_element
  _NotInInterests notInInterests() {
    return const _NotInInterests();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _AdditionSuccess additionSuccess() {
    return const _AdditionSuccess();
  }

// ignore: unused_element
  _AdditionFailure additionFailure(Failure<dynamic> failure) {
    return _AdditionFailure(
      failure,
    );
  }

// ignore: unused_element
  _DismissalSuccess dismissalSuccess() {
    return const _DismissalSuccess();
  }

// ignore: unused_element
  _DismissalFailure dismissalFailure(Failure<dynamic> failure) {
    return _DismissalFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TagCardActorState = _$TagCardActorStateTearOff();

/// @nodoc
mixin _$TagCardActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inInterests(),
    @required TResult notInInterests(),
    @required TResult actionInProgress(),
    @required TResult additionSuccess(),
    @required TResult additionFailure(Failure<dynamic> failure),
    @required TResult dismissalSuccess(),
    @required TResult dismissalFailure(Failure<dynamic> failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inInterests(),
    TResult notInInterests(),
    TResult actionInProgress(),
    TResult additionSuccess(),
    TResult additionFailure(Failure<dynamic> failure),
    TResult dismissalSuccess(),
    TResult dismissalFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inInterests(_InInterests value),
    @required TResult notInInterests(_NotInInterests value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult additionSuccess(_AdditionSuccess value),
    @required TResult additionFailure(_AdditionFailure value),
    @required TResult dismissalSuccess(_DismissalSuccess value),
    @required TResult dismissalFailure(_DismissalFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inInterests(_InInterests value),
    TResult notInInterests(_NotInInterests value),
    TResult actionInProgress(_ActionInProgress value),
    TResult additionSuccess(_AdditionSuccess value),
    TResult additionFailure(_AdditionFailure value),
    TResult dismissalSuccess(_DismissalSuccess value),
    TResult dismissalFailure(_DismissalFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TagCardActorStateCopyWith<$Res> {
  factory $TagCardActorStateCopyWith(
          TagCardActorState value, $Res Function(TagCardActorState) then) =
      _$TagCardActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TagCardActorStateCopyWithImpl<$Res>
    implements $TagCardActorStateCopyWith<$Res> {
  _$TagCardActorStateCopyWithImpl(this._value, this._then);

  final TagCardActorState _value;
  // ignore: unused_field
  final $Res Function(TagCardActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TagCardActorStateCopyWithImpl<$Res>
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inInterests(),
    @required TResult notInInterests(),
    @required TResult actionInProgress(),
    @required TResult additionSuccess(),
    @required TResult additionFailure(Failure<dynamic> failure),
    @required TResult dismissalSuccess(),
    @required TResult dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(notInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inInterests(),
    TResult notInInterests(),
    TResult actionInProgress(),
    TResult additionSuccess(),
    TResult additionFailure(Failure<dynamic> failure),
    TResult dismissalSuccess(),
    TResult dismissalFailure(Failure<dynamic> failure),
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
    @required TResult inInterests(_InInterests value),
    @required TResult notInInterests(_NotInInterests value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult additionSuccess(_AdditionSuccess value),
    @required TResult additionFailure(_AdditionFailure value),
    @required TResult dismissalSuccess(_DismissalSuccess value),
    @required TResult dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(notInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inInterests(_InInterests value),
    TResult notInInterests(_NotInInterests value),
    TResult actionInProgress(_ActionInProgress value),
    TResult additionSuccess(_AdditionSuccess value),
    TResult additionFailure(_AdditionFailure value),
    TResult dismissalSuccess(_DismissalSuccess value),
    TResult dismissalFailure(_DismissalFailure value),
    @required TResult orElse(),
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

/// @nodoc
abstract class _$InInterestsCopyWith<$Res> {
  factory _$InInterestsCopyWith(
          _InInterests value, $Res Function(_InInterests) then) =
      __$InInterestsCopyWithImpl<$Res>;
}

/// @nodoc
class __$InInterestsCopyWithImpl<$Res>
    extends _$TagCardActorStateCopyWithImpl<$Res>
    implements _$InInterestsCopyWith<$Res> {
  __$InInterestsCopyWithImpl(
      _InInterests _value, $Res Function(_InInterests) _then)
      : super(_value, (v) => _then(v as _InInterests));

  @override
  _InInterests get _value => super._value as _InInterests;
}

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inInterests(),
    @required TResult notInInterests(),
    @required TResult actionInProgress(),
    @required TResult additionSuccess(),
    @required TResult additionFailure(Failure<dynamic> failure),
    @required TResult dismissalSuccess(),
    @required TResult dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(notInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return inInterests();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inInterests(),
    TResult notInInterests(),
    TResult actionInProgress(),
    TResult additionSuccess(),
    TResult additionFailure(Failure<dynamic> failure),
    TResult dismissalSuccess(),
    TResult dismissalFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inInterests != null) {
      return inInterests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inInterests(_InInterests value),
    @required TResult notInInterests(_NotInInterests value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult additionSuccess(_AdditionSuccess value),
    @required TResult additionFailure(_AdditionFailure value),
    @required TResult dismissalSuccess(_DismissalSuccess value),
    @required TResult dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(notInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return inInterests(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inInterests(_InInterests value),
    TResult notInInterests(_NotInInterests value),
    TResult actionInProgress(_ActionInProgress value),
    TResult additionSuccess(_AdditionSuccess value),
    TResult additionFailure(_AdditionFailure value),
    TResult dismissalSuccess(_DismissalSuccess value),
    TResult dismissalFailure(_DismissalFailure value),
    @required TResult orElse(),
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

/// @nodoc
abstract class _$NotInInterestsCopyWith<$Res> {
  factory _$NotInInterestsCopyWith(
          _NotInInterests value, $Res Function(_NotInInterests) then) =
      __$NotInInterestsCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotInInterestsCopyWithImpl<$Res>
    extends _$TagCardActorStateCopyWithImpl<$Res>
    implements _$NotInInterestsCopyWith<$Res> {
  __$NotInInterestsCopyWithImpl(
      _NotInInterests _value, $Res Function(_NotInInterests) _then)
      : super(_value, (v) => _then(v as _NotInInterests));

  @override
  _NotInInterests get _value => super._value as _NotInInterests;
}

/// @nodoc
class _$_NotInInterests implements _NotInInterests {
  const _$_NotInInterests();

  @override
  String toString() {
    return 'TagCardActorState.notInInterests()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotInInterests);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inInterests(),
    @required TResult notInInterests(),
    @required TResult actionInProgress(),
    @required TResult additionSuccess(),
    @required TResult additionFailure(Failure<dynamic> failure),
    @required TResult dismissalSuccess(),
    @required TResult dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(notInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return notInInterests();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inInterests(),
    TResult notInInterests(),
    TResult actionInProgress(),
    TResult additionSuccess(),
    TResult additionFailure(Failure<dynamic> failure),
    TResult dismissalSuccess(),
    TResult dismissalFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notInInterests != null) {
      return notInInterests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inInterests(_InInterests value),
    @required TResult notInInterests(_NotInInterests value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult additionSuccess(_AdditionSuccess value),
    @required TResult additionFailure(_AdditionFailure value),
    @required TResult dismissalSuccess(_DismissalSuccess value),
    @required TResult dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(notInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return notInInterests(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inInterests(_InInterests value),
    TResult notInInterests(_NotInInterests value),
    TResult actionInProgress(_ActionInProgress value),
    TResult additionSuccess(_AdditionSuccess value),
    TResult additionFailure(_AdditionFailure value),
    TResult dismissalSuccess(_DismissalSuccess value),
    TResult dismissalFailure(_DismissalFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notInInterests != null) {
      return notInInterests(this);
    }
    return orElse();
  }
}

abstract class _NotInInterests implements TagCardActorState {
  const factory _NotInInterests() = _$_NotInInterests;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$TagCardActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inInterests(),
    @required TResult notInInterests(),
    @required TResult actionInProgress(),
    @required TResult additionSuccess(),
    @required TResult additionFailure(Failure<dynamic> failure),
    @required TResult dismissalSuccess(),
    @required TResult dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(notInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inInterests(),
    TResult notInInterests(),
    TResult actionInProgress(),
    TResult additionSuccess(),
    TResult additionFailure(Failure<dynamic> failure),
    TResult dismissalSuccess(),
    TResult dismissalFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inInterests(_InInterests value),
    @required TResult notInInterests(_NotInInterests value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult additionSuccess(_AdditionSuccess value),
    @required TResult additionFailure(_AdditionFailure value),
    @required TResult dismissalSuccess(_DismissalSuccess value),
    @required TResult dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(notInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inInterests(_InInterests value),
    TResult notInInterests(_NotInInterests value),
    TResult actionInProgress(_ActionInProgress value),
    TResult additionSuccess(_AdditionSuccess value),
    TResult additionFailure(_AdditionFailure value),
    TResult dismissalSuccess(_DismissalSuccess value),
    TResult dismissalFailure(_DismissalFailure value),
    @required TResult orElse(),
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

/// @nodoc
abstract class _$AdditionSuccessCopyWith<$Res> {
  factory _$AdditionSuccessCopyWith(
          _AdditionSuccess value, $Res Function(_AdditionSuccess) then) =
      __$AdditionSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$AdditionSuccessCopyWithImpl<$Res>
    extends _$TagCardActorStateCopyWithImpl<$Res>
    implements _$AdditionSuccessCopyWith<$Res> {
  __$AdditionSuccessCopyWithImpl(
      _AdditionSuccess _value, $Res Function(_AdditionSuccess) _then)
      : super(_value, (v) => _then(v as _AdditionSuccess));

  @override
  _AdditionSuccess get _value => super._value as _AdditionSuccess;
}

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inInterests(),
    @required TResult notInInterests(),
    @required TResult actionInProgress(),
    @required TResult additionSuccess(),
    @required TResult additionFailure(Failure<dynamic> failure),
    @required TResult dismissalSuccess(),
    @required TResult dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(notInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return additionSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inInterests(),
    TResult notInInterests(),
    TResult actionInProgress(),
    TResult additionSuccess(),
    TResult additionFailure(Failure<dynamic> failure),
    TResult dismissalSuccess(),
    TResult dismissalFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (additionSuccess != null) {
      return additionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inInterests(_InInterests value),
    @required TResult notInInterests(_NotInInterests value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult additionSuccess(_AdditionSuccess value),
    @required TResult additionFailure(_AdditionFailure value),
    @required TResult dismissalSuccess(_DismissalSuccess value),
    @required TResult dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(notInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return additionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inInterests(_InInterests value),
    TResult notInInterests(_NotInInterests value),
    TResult actionInProgress(_ActionInProgress value),
    TResult additionSuccess(_AdditionSuccess value),
    TResult additionFailure(_AdditionFailure value),
    TResult dismissalSuccess(_DismissalSuccess value),
    TResult dismissalFailure(_DismissalFailure value),
    @required TResult orElse(),
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

/// @nodoc
abstract class _$AdditionFailureCopyWith<$Res> {
  factory _$AdditionFailureCopyWith(
          _AdditionFailure value, $Res Function(_AdditionFailure) then) =
      __$AdditionFailureCopyWithImpl<$Res>;
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$AdditionFailureCopyWithImpl<$Res>
    extends _$TagCardActorStateCopyWithImpl<$Res>
    implements _$AdditionFailureCopyWith<$Res> {
  __$AdditionFailureCopyWithImpl(
      _AdditionFailure _value, $Res Function(_AdditionFailure) _then)
      : super(_value, (v) => _then(v as _AdditionFailure));

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

/// @nodoc
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
    return identical(this, other) ||
        (other is _AdditionFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$AdditionFailureCopyWith<_AdditionFailure> get copyWith =>
      __$AdditionFailureCopyWithImpl<_AdditionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inInterests(),
    @required TResult notInInterests(),
    @required TResult actionInProgress(),
    @required TResult additionSuccess(),
    @required TResult additionFailure(Failure<dynamic> failure),
    @required TResult dismissalSuccess(),
    @required TResult dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(notInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return additionFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inInterests(),
    TResult notInInterests(),
    TResult actionInProgress(),
    TResult additionSuccess(),
    TResult additionFailure(Failure<dynamic> failure),
    TResult dismissalSuccess(),
    TResult dismissalFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (additionFailure != null) {
      return additionFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inInterests(_InInterests value),
    @required TResult notInInterests(_NotInInterests value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult additionSuccess(_AdditionSuccess value),
    @required TResult additionFailure(_AdditionFailure value),
    @required TResult dismissalSuccess(_DismissalSuccess value),
    @required TResult dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(notInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return additionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inInterests(_InInterests value),
    TResult notInInterests(_NotInInterests value),
    TResult actionInProgress(_ActionInProgress value),
    TResult additionSuccess(_AdditionSuccess value),
    TResult additionFailure(_AdditionFailure value),
    TResult dismissalSuccess(_DismissalSuccess value),
    TResult dismissalFailure(_DismissalFailure value),
    @required TResult orElse(),
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
  @JsonKey(ignore: true)
  _$AdditionFailureCopyWith<_AdditionFailure> get copyWith;
}

/// @nodoc
abstract class _$DismissalSuccessCopyWith<$Res> {
  factory _$DismissalSuccessCopyWith(
          _DismissalSuccess value, $Res Function(_DismissalSuccess) then) =
      __$DismissalSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DismissalSuccessCopyWithImpl<$Res>
    extends _$TagCardActorStateCopyWithImpl<$Res>
    implements _$DismissalSuccessCopyWith<$Res> {
  __$DismissalSuccessCopyWithImpl(
      _DismissalSuccess _value, $Res Function(_DismissalSuccess) _then)
      : super(_value, (v) => _then(v as _DismissalSuccess));

  @override
  _DismissalSuccess get _value => super._value as _DismissalSuccess;
}

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inInterests(),
    @required TResult notInInterests(),
    @required TResult actionInProgress(),
    @required TResult additionSuccess(),
    @required TResult additionFailure(Failure<dynamic> failure),
    @required TResult dismissalSuccess(),
    @required TResult dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(notInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return dismissalSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inInterests(),
    TResult notInInterests(),
    TResult actionInProgress(),
    TResult additionSuccess(),
    TResult additionFailure(Failure<dynamic> failure),
    TResult dismissalSuccess(),
    TResult dismissalFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dismissalSuccess != null) {
      return dismissalSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inInterests(_InInterests value),
    @required TResult notInInterests(_NotInInterests value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult additionSuccess(_AdditionSuccess value),
    @required TResult additionFailure(_AdditionFailure value),
    @required TResult dismissalSuccess(_DismissalSuccess value),
    @required TResult dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(notInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return dismissalSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inInterests(_InInterests value),
    TResult notInInterests(_NotInInterests value),
    TResult actionInProgress(_ActionInProgress value),
    TResult additionSuccess(_AdditionSuccess value),
    TResult additionFailure(_AdditionFailure value),
    TResult dismissalSuccess(_DismissalSuccess value),
    TResult dismissalFailure(_DismissalFailure value),
    @required TResult orElse(),
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

/// @nodoc
abstract class _$DismissalFailureCopyWith<$Res> {
  factory _$DismissalFailureCopyWith(
          _DismissalFailure value, $Res Function(_DismissalFailure) then) =
      __$DismissalFailureCopyWithImpl<$Res>;
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$DismissalFailureCopyWithImpl<$Res>
    extends _$TagCardActorStateCopyWithImpl<$Res>
    implements _$DismissalFailureCopyWith<$Res> {
  __$DismissalFailureCopyWithImpl(
      _DismissalFailure _value, $Res Function(_DismissalFailure) _then)
      : super(_value, (v) => _then(v as _DismissalFailure));

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

/// @nodoc
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
    return identical(this, other) ||
        (other is _DismissalFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$DismissalFailureCopyWith<_DismissalFailure> get copyWith =>
      __$DismissalFailureCopyWithImpl<_DismissalFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inInterests(),
    @required TResult notInInterests(),
    @required TResult actionInProgress(),
    @required TResult additionSuccess(),
    @required TResult additionFailure(Failure<dynamic> failure),
    @required TResult dismissalSuccess(),
    @required TResult dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(notInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return dismissalFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inInterests(),
    TResult notInInterests(),
    TResult actionInProgress(),
    TResult additionSuccess(),
    TResult additionFailure(Failure<dynamic> failure),
    TResult dismissalSuccess(),
    TResult dismissalFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dismissalFailure != null) {
      return dismissalFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inInterests(_InInterests value),
    @required TResult notInInterests(_NotInInterests value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult additionSuccess(_AdditionSuccess value),
    @required TResult additionFailure(_AdditionFailure value),
    @required TResult dismissalSuccess(_DismissalSuccess value),
    @required TResult dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(notInInterests != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return dismissalFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inInterests(_InInterests value),
    TResult notInInterests(_NotInInterests value),
    TResult actionInProgress(_ActionInProgress value),
    TResult additionSuccess(_AdditionSuccess value),
    TResult additionFailure(_AdditionFailure value),
    TResult dismissalSuccess(_DismissalSuccess value),
    TResult dismissalFailure(_DismissalFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dismissalFailure != null) {
      return dismissalFailure(this);
    }
    return orElse();
  }
}

abstract class _DismissalFailure implements TagCardActorState {
  const factory _DismissalFailure(Failure<dynamic> failure) =
      _$_DismissalFailure;

  Failure<dynamic> get failure;
  @JsonKey(ignore: true)
  _$DismissalFailureCopyWith<_DismissalFailure> get copyWith;
}
