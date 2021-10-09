// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tag_card_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TagCardActorEventTearOff {
  const _$TagCardActorEventTearOff();

  _Initialized initialized(Tag tag, Set<UniqueId> interestsIds) {
    return _Initialized(
      tag,
      interestsIds,
    );
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

/// @nodoc
const $TagCardActorEvent = _$TagCardActorEventTearOff();

/// @nodoc
mixin _$TagCardActorEvent {
  Tag get tag => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tag tag, Set<UniqueId> interestsIds) initialized,
    required TResult Function(Tag tag) dismissedFromInterests,
    required TResult Function(Tag tag) addedToInterests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Tag tag, Set<UniqueId> interestsIds)? initialized,
    TResult Function(Tag tag)? dismissedFromInterests,
    TResult Function(Tag tag)? addedToInterests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tag tag, Set<UniqueId> interestsIds)? initialized,
    TResult Function(Tag tag)? dismissedFromInterests,
    TResult Function(Tag tag)? addedToInterests,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_DismissedFromInterests value)
        dismissedFromInterests,
    required TResult Function(_AddedToInterests value) addedToInterests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DismissedFromInterests value)? dismissedFromInterests,
    TResult Function(_AddedToInterests value)? addedToInterests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DismissedFromInterests value)? dismissedFromInterests,
    TResult Function(_AddedToInterests value)? addedToInterests,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TagCardActorEventCopyWith<TagCardActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? tag = freezed,
  }) {
    return _then(_value.copyWith(
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as Tag,
    ));
  }

  @override
  $TagCopyWith<$Res> get tag {
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
  $Res call({Tag tag, Set<UniqueId> interestsIds});

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
    Object? tag = freezed,
    Object? interestsIds = freezed,
  }) {
    return _then(_Initialized(
      tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as Tag,
      interestsIds == freezed
          ? _value.interestsIds
          : interestsIds // ignore: cast_nullable_to_non_nullable
              as Set<UniqueId>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.tag, this.interestsIds);

  @override
  final Tag tag;
  @override
  final Set<UniqueId> interestsIds;

  @override
  String toString() {
    return 'TagCardActorEvent.initialized(tag: $tag, interestsIds: $interestsIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialized &&
            (identical(other.tag, tag) || other.tag == tag) &&
            const DeepCollectionEquality()
                .equals(other.interestsIds, interestsIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, tag, const DeepCollectionEquality().hash(interestsIds));

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tag tag, Set<UniqueId> interestsIds) initialized,
    required TResult Function(Tag tag) dismissedFromInterests,
    required TResult Function(Tag tag) addedToInterests,
  }) {
    return initialized(tag, interestsIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Tag tag, Set<UniqueId> interestsIds)? initialized,
    TResult Function(Tag tag)? dismissedFromInterests,
    TResult Function(Tag tag)? addedToInterests,
  }) {
    return initialized?.call(tag, interestsIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tag tag, Set<UniqueId> interestsIds)? initialized,
    TResult Function(Tag tag)? dismissedFromInterests,
    TResult Function(Tag tag)? addedToInterests,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(tag, interestsIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_DismissedFromInterests value)
        dismissedFromInterests,
    required TResult Function(_AddedToInterests value) addedToInterests,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DismissedFromInterests value)? dismissedFromInterests,
    TResult Function(_AddedToInterests value)? addedToInterests,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DismissedFromInterests value)? dismissedFromInterests,
    TResult Function(_AddedToInterests value)? addedToInterests,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements TagCardActorEvent {
  const factory _Initialized(Tag tag, Set<UniqueId> interestsIds) =
      _$_Initialized;

  @override
  Tag get tag;
  Set<UniqueId> get interestsIds;
  @override
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? tag = freezed,
  }) {
    return _then(_DismissedFromInterests(
      tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as Tag,
    ));
  }
}

/// @nodoc

class _$_DismissedFromInterests implements _DismissedFromInterests {
  const _$_DismissedFromInterests(this.tag);

  @override
  final Tag tag;

  @override
  String toString() {
    return 'TagCardActorEvent.dismissedFromInterests(tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DismissedFromInterests &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tag);

  @JsonKey(ignore: true)
  @override
  _$DismissedFromInterestsCopyWith<_DismissedFromInterests> get copyWith =>
      __$DismissedFromInterestsCopyWithImpl<_DismissedFromInterests>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tag tag, Set<UniqueId> interestsIds) initialized,
    required TResult Function(Tag tag) dismissedFromInterests,
    required TResult Function(Tag tag) addedToInterests,
  }) {
    return dismissedFromInterests(tag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Tag tag, Set<UniqueId> interestsIds)? initialized,
    TResult Function(Tag tag)? dismissedFromInterests,
    TResult Function(Tag tag)? addedToInterests,
  }) {
    return dismissedFromInterests?.call(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tag tag, Set<UniqueId> interestsIds)? initialized,
    TResult Function(Tag tag)? dismissedFromInterests,
    TResult Function(Tag tag)? addedToInterests,
    required TResult orElse(),
  }) {
    if (dismissedFromInterests != null) {
      return dismissedFromInterests(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_DismissedFromInterests value)
        dismissedFromInterests,
    required TResult Function(_AddedToInterests value) addedToInterests,
  }) {
    return dismissedFromInterests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DismissedFromInterests value)? dismissedFromInterests,
    TResult Function(_AddedToInterests value)? addedToInterests,
  }) {
    return dismissedFromInterests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DismissedFromInterests value)? dismissedFromInterests,
    TResult Function(_AddedToInterests value)? addedToInterests,
    required TResult orElse(),
  }) {
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
  _$DismissedFromInterestsCopyWith<_DismissedFromInterests> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? tag = freezed,
  }) {
    return _then(_AddedToInterests(
      tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as Tag,
    ));
  }
}

/// @nodoc

class _$_AddedToInterests implements _AddedToInterests {
  const _$_AddedToInterests(this.tag);

  @override
  final Tag tag;

  @override
  String toString() {
    return 'TagCardActorEvent.addedToInterests(tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddedToInterests &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tag);

  @JsonKey(ignore: true)
  @override
  _$AddedToInterestsCopyWith<_AddedToInterests> get copyWith =>
      __$AddedToInterestsCopyWithImpl<_AddedToInterests>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tag tag, Set<UniqueId> interestsIds) initialized,
    required TResult Function(Tag tag) dismissedFromInterests,
    required TResult Function(Tag tag) addedToInterests,
  }) {
    return addedToInterests(tag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Tag tag, Set<UniqueId> interestsIds)? initialized,
    TResult Function(Tag tag)? dismissedFromInterests,
    TResult Function(Tag tag)? addedToInterests,
  }) {
    return addedToInterests?.call(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tag tag, Set<UniqueId> interestsIds)? initialized,
    TResult Function(Tag tag)? dismissedFromInterests,
    TResult Function(Tag tag)? addedToInterests,
    required TResult orElse(),
  }) {
    if (addedToInterests != null) {
      return addedToInterests(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_DismissedFromInterests value)
        dismissedFromInterests,
    required TResult Function(_AddedToInterests value) addedToInterests,
  }) {
    return addedToInterests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DismissedFromInterests value)? dismissedFromInterests,
    TResult Function(_AddedToInterests value)? addedToInterests,
  }) {
    return addedToInterests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DismissedFromInterests value)? dismissedFromInterests,
    TResult Function(_AddedToInterests value)? addedToInterests,
    required TResult orElse(),
  }) {
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
  _$AddedToInterestsCopyWith<_AddedToInterests> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TagCardActorStateTearOff {
  const _$TagCardActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _InInterests inInterests() {
    return const _InInterests();
  }

  _NotInInterests notInInterests() {
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

/// @nodoc
const $TagCardActorState = _$TagCardActorStateTearOff();

/// @nodoc
mixin _$TagCardActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inInterests,
    required TResult Function() notInInterests,
    required TResult Function() actionInProgress,
    required TResult Function() additionSuccess,
    required TResult Function(Failure<dynamic> failure) additionFailure,
    required TResult Function() dismissalSuccess,
    required TResult Function(Failure<dynamic> failure) dismissalFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inInterests,
    TResult Function()? notInInterests,
    TResult Function()? actionInProgress,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inInterests,
    TResult Function()? notInInterests,
    TResult Function()? actionInProgress,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InInterests value) inInterests,
    required TResult Function(_NotInInterests value) notInInterests,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_AdditionSuccess value) additionSuccess,
    required TResult Function(_AdditionFailure value) additionFailure,
    required TResult Function(_DismissalSuccess value) dismissalSuccess,
    required TResult Function(_DismissalFailure value) dismissalFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InInterests value)? inInterests,
    TResult Function(_NotInInterests value)? notInInterests,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InInterests value)? inInterests,
    TResult Function(_NotInInterests value)? notInInterests,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inInterests,
    required TResult Function() notInInterests,
    required TResult Function() actionInProgress,
    required TResult Function() additionSuccess,
    required TResult Function(Failure<dynamic> failure) additionFailure,
    required TResult Function() dismissalSuccess,
    required TResult Function(Failure<dynamic> failure) dismissalFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inInterests,
    TResult Function()? notInInterests,
    TResult Function()? actionInProgress,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inInterests,
    TResult Function()? notInInterests,
    TResult Function()? actionInProgress,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
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
    required TResult Function(_InInterests value) inInterests,
    required TResult Function(_NotInInterests value) notInInterests,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_AdditionSuccess value) additionSuccess,
    required TResult Function(_AdditionFailure value) additionFailure,
    required TResult Function(_DismissalSuccess value) dismissalSuccess,
    required TResult Function(_DismissalFailure value) dismissalFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InInterests value)? inInterests,
    TResult Function(_NotInInterests value)? notInInterests,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InInterests value)? inInterests,
    TResult Function(_NotInInterests value)? notInInterests,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
    required TResult orElse(),
  }) {
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InInterests);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inInterests,
    required TResult Function() notInInterests,
    required TResult Function() actionInProgress,
    required TResult Function() additionSuccess,
    required TResult Function(Failure<dynamic> failure) additionFailure,
    required TResult Function() dismissalSuccess,
    required TResult Function(Failure<dynamic> failure) dismissalFailure,
  }) {
    return inInterests();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inInterests,
    TResult Function()? notInInterests,
    TResult Function()? actionInProgress,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
  }) {
    return inInterests?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inInterests,
    TResult Function()? notInInterests,
    TResult Function()? actionInProgress,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
    required TResult orElse(),
  }) {
    if (inInterests != null) {
      return inInterests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InInterests value) inInterests,
    required TResult Function(_NotInInterests value) notInInterests,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_AdditionSuccess value) additionSuccess,
    required TResult Function(_AdditionFailure value) additionFailure,
    required TResult Function(_DismissalSuccess value) dismissalSuccess,
    required TResult Function(_DismissalFailure value) dismissalFailure,
  }) {
    return inInterests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InInterests value)? inInterests,
    TResult Function(_NotInInterests value)? notInInterests,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
  }) {
    return inInterests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InInterests value)? inInterests,
    TResult Function(_NotInInterests value)? notInInterests,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
    required TResult orElse(),
  }) {
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NotInInterests);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inInterests,
    required TResult Function() notInInterests,
    required TResult Function() actionInProgress,
    required TResult Function() additionSuccess,
    required TResult Function(Failure<dynamic> failure) additionFailure,
    required TResult Function() dismissalSuccess,
    required TResult Function(Failure<dynamic> failure) dismissalFailure,
  }) {
    return notInInterests();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inInterests,
    TResult Function()? notInInterests,
    TResult Function()? actionInProgress,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
  }) {
    return notInInterests?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inInterests,
    TResult Function()? notInInterests,
    TResult Function()? actionInProgress,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
    required TResult orElse(),
  }) {
    if (notInInterests != null) {
      return notInInterests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InInterests value) inInterests,
    required TResult Function(_NotInInterests value) notInInterests,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_AdditionSuccess value) additionSuccess,
    required TResult Function(_AdditionFailure value) additionFailure,
    required TResult Function(_DismissalSuccess value) dismissalSuccess,
    required TResult Function(_DismissalFailure value) dismissalFailure,
  }) {
    return notInInterests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InInterests value)? inInterests,
    TResult Function(_NotInInterests value)? notInInterests,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
  }) {
    return notInInterests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InInterests value)? inInterests,
    TResult Function(_NotInInterests value)? notInInterests,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
    required TResult orElse(),
  }) {
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inInterests,
    required TResult Function() notInInterests,
    required TResult Function() actionInProgress,
    required TResult Function() additionSuccess,
    required TResult Function(Failure<dynamic> failure) additionFailure,
    required TResult Function() dismissalSuccess,
    required TResult Function(Failure<dynamic> failure) dismissalFailure,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inInterests,
    TResult Function()? notInInterests,
    TResult Function()? actionInProgress,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inInterests,
    TResult Function()? notInInterests,
    TResult Function()? actionInProgress,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InInterests value) inInterests,
    required TResult Function(_NotInInterests value) notInInterests,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_AdditionSuccess value) additionSuccess,
    required TResult Function(_AdditionFailure value) additionFailure,
    required TResult Function(_DismissalSuccess value) dismissalSuccess,
    required TResult Function(_DismissalFailure value) dismissalFailure,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InInterests value)? inInterests,
    TResult Function(_NotInInterests value)? notInInterests,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InInterests value)? inInterests,
    TResult Function(_NotInInterests value)? notInInterests,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
    required TResult orElse(),
  }) {
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AdditionSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inInterests,
    required TResult Function() notInInterests,
    required TResult Function() actionInProgress,
    required TResult Function() additionSuccess,
    required TResult Function(Failure<dynamic> failure) additionFailure,
    required TResult Function() dismissalSuccess,
    required TResult Function(Failure<dynamic> failure) dismissalFailure,
  }) {
    return additionSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inInterests,
    TResult Function()? notInInterests,
    TResult Function()? actionInProgress,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
  }) {
    return additionSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inInterests,
    TResult Function()? notInInterests,
    TResult Function()? actionInProgress,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
    required TResult orElse(),
  }) {
    if (additionSuccess != null) {
      return additionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InInterests value) inInterests,
    required TResult Function(_NotInInterests value) notInInterests,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_AdditionSuccess value) additionSuccess,
    required TResult Function(_AdditionFailure value) additionFailure,
    required TResult Function(_DismissalSuccess value) dismissalSuccess,
    required TResult Function(_DismissalFailure value) dismissalFailure,
  }) {
    return additionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InInterests value)? inInterests,
    TResult Function(_NotInInterests value)? notInInterests,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
  }) {
    return additionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InInterests value)? inInterests,
    TResult Function(_NotInInterests value)? notInInterests,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
    required TResult orElse(),
  }) {
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
    Object? failure = freezed,
  }) {
    return _then(_AdditionFailure(
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

class _$_AdditionFailure implements _AdditionFailure {
  const _$_AdditionFailure(this.failure);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'TagCardActorState.additionFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdditionFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  _$AdditionFailureCopyWith<_AdditionFailure> get copyWith =>
      __$AdditionFailureCopyWithImpl<_AdditionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inInterests,
    required TResult Function() notInInterests,
    required TResult Function() actionInProgress,
    required TResult Function() additionSuccess,
    required TResult Function(Failure<dynamic> failure) additionFailure,
    required TResult Function() dismissalSuccess,
    required TResult Function(Failure<dynamic> failure) dismissalFailure,
  }) {
    return additionFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inInterests,
    TResult Function()? notInInterests,
    TResult Function()? actionInProgress,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
  }) {
    return additionFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inInterests,
    TResult Function()? notInInterests,
    TResult Function()? actionInProgress,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
    required TResult orElse(),
  }) {
    if (additionFailure != null) {
      return additionFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InInterests value) inInterests,
    required TResult Function(_NotInInterests value) notInInterests,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_AdditionSuccess value) additionSuccess,
    required TResult Function(_AdditionFailure value) additionFailure,
    required TResult Function(_DismissalSuccess value) dismissalSuccess,
    required TResult Function(_DismissalFailure value) dismissalFailure,
  }) {
    return additionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InInterests value)? inInterests,
    TResult Function(_NotInInterests value)? notInInterests,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
  }) {
    return additionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InInterests value)? inInterests,
    TResult Function(_NotInInterests value)? notInInterests,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
    required TResult orElse(),
  }) {
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
  _$AdditionFailureCopyWith<_AdditionFailure> get copyWith =>
      throw _privateConstructorUsedError;
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DismissalSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inInterests,
    required TResult Function() notInInterests,
    required TResult Function() actionInProgress,
    required TResult Function() additionSuccess,
    required TResult Function(Failure<dynamic> failure) additionFailure,
    required TResult Function() dismissalSuccess,
    required TResult Function(Failure<dynamic> failure) dismissalFailure,
  }) {
    return dismissalSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inInterests,
    TResult Function()? notInInterests,
    TResult Function()? actionInProgress,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
  }) {
    return dismissalSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inInterests,
    TResult Function()? notInInterests,
    TResult Function()? actionInProgress,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
    required TResult orElse(),
  }) {
    if (dismissalSuccess != null) {
      return dismissalSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InInterests value) inInterests,
    required TResult Function(_NotInInterests value) notInInterests,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_AdditionSuccess value) additionSuccess,
    required TResult Function(_AdditionFailure value) additionFailure,
    required TResult Function(_DismissalSuccess value) dismissalSuccess,
    required TResult Function(_DismissalFailure value) dismissalFailure,
  }) {
    return dismissalSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InInterests value)? inInterests,
    TResult Function(_NotInInterests value)? notInInterests,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
  }) {
    return dismissalSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InInterests value)? inInterests,
    TResult Function(_NotInInterests value)? notInInterests,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
    required TResult orElse(),
  }) {
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
    Object? failure = freezed,
  }) {
    return _then(_DismissalFailure(
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

class _$_DismissalFailure implements _DismissalFailure {
  const _$_DismissalFailure(this.failure);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'TagCardActorState.dismissalFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DismissalFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  _$DismissalFailureCopyWith<_DismissalFailure> get copyWith =>
      __$DismissalFailureCopyWithImpl<_DismissalFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inInterests,
    required TResult Function() notInInterests,
    required TResult Function() actionInProgress,
    required TResult Function() additionSuccess,
    required TResult Function(Failure<dynamic> failure) additionFailure,
    required TResult Function() dismissalSuccess,
    required TResult Function(Failure<dynamic> failure) dismissalFailure,
  }) {
    return dismissalFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inInterests,
    TResult Function()? notInInterests,
    TResult Function()? actionInProgress,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
  }) {
    return dismissalFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inInterests,
    TResult Function()? notInInterests,
    TResult Function()? actionInProgress,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
    required TResult orElse(),
  }) {
    if (dismissalFailure != null) {
      return dismissalFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InInterests value) inInterests,
    required TResult Function(_NotInInterests value) notInInterests,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_AdditionSuccess value) additionSuccess,
    required TResult Function(_AdditionFailure value) additionFailure,
    required TResult Function(_DismissalSuccess value) dismissalSuccess,
    required TResult Function(_DismissalFailure value) dismissalFailure,
  }) {
    return dismissalFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InInterests value)? inInterests,
    TResult Function(_NotInInterests value)? notInInterests,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
  }) {
    return dismissalFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InInterests value)? inInterests,
    TResult Function(_NotInInterests value)? notInInterests,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
    required TResult orElse(),
  }) {
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
  _$DismissalFailureCopyWith<_DismissalFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
