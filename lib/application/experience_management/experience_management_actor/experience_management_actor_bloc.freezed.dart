// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'experience_management_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExperienceManagementActorEventTearOff {
  const _$ExperienceManagementActorEventTearOff();

  _CheckCreator checkCreator(Experience experience) {
    return _CheckCreator(
      experience,
    );
  }

  _Deleted deleted(Experience experience) {
    return _Deleted(
      experience,
    );
  }
}

/// @nodoc
const $ExperienceManagementActorEvent =
    _$ExperienceManagementActorEventTearOff();

/// @nodoc
mixin _$ExperienceManagementActorEvent {
  Experience get experience => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experience experience) checkCreator,
    required TResult Function(Experience experience) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Experience experience)? checkCreator,
    TResult Function(Experience experience)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experience experience)? checkCreator,
    TResult Function(Experience experience)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckCreator value) checkCreator,
    required TResult Function(_Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckCreator value)? checkCreator,
    TResult Function(_Deleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckCreator value)? checkCreator,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExperienceManagementActorEventCopyWith<ExperienceManagementActorEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceManagementActorEventCopyWith<$Res> {
  factory $ExperienceManagementActorEventCopyWith(
          ExperienceManagementActorEvent value,
          $Res Function(ExperienceManagementActorEvent) then) =
      _$ExperienceManagementActorEventCopyWithImpl<$Res>;
  $Res call({Experience experience});

  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class _$ExperienceManagementActorEventCopyWithImpl<$Res>
    implements $ExperienceManagementActorEventCopyWith<$Res> {
  _$ExperienceManagementActorEventCopyWithImpl(this._value, this._then);

  final ExperienceManagementActorEvent _value;
  // ignore: unused_field
  final $Res Function(ExperienceManagementActorEvent) _then;

  @override
  $Res call({
    Object? experience = freezed,
  }) {
    return _then(_value.copyWith(
      experience: experience == freezed
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as Experience,
    ));
  }

  @override
  $ExperienceCopyWith<$Res> get experience {
    return $ExperienceCopyWith<$Res>(_value.experience, (value) {
      return _then(_value.copyWith(experience: value));
    });
  }
}

/// @nodoc
abstract class _$CheckCreatorCopyWith<$Res>
    implements $ExperienceManagementActorEventCopyWith<$Res> {
  factory _$CheckCreatorCopyWith(
          _CheckCreator value, $Res Function(_CheckCreator) then) =
      __$CheckCreatorCopyWithImpl<$Res>;
  @override
  $Res call({Experience experience});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class __$CheckCreatorCopyWithImpl<$Res>
    extends _$ExperienceManagementActorEventCopyWithImpl<$Res>
    implements _$CheckCreatorCopyWith<$Res> {
  __$CheckCreatorCopyWithImpl(
      _CheckCreator _value, $Res Function(_CheckCreator) _then)
      : super(_value, (v) => _then(v as _CheckCreator));

  @override
  _CheckCreator get _value => super._value as _CheckCreator;

  @override
  $Res call({
    Object? experience = freezed,
  }) {
    return _then(_CheckCreator(
      experience == freezed
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as Experience,
    ));
  }
}

/// @nodoc

class _$_CheckCreator implements _CheckCreator {
  const _$_CheckCreator(this.experience);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'ExperienceManagementActorEvent.checkCreator(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CheckCreator &&
            (identical(other.experience, experience) ||
                other.experience == experience));
  }

  @override
  int get hashCode => Object.hash(runtimeType, experience);

  @JsonKey(ignore: true)
  @override
  _$CheckCreatorCopyWith<_CheckCreator> get copyWith =>
      __$CheckCreatorCopyWithImpl<_CheckCreator>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experience experience) checkCreator,
    required TResult Function(Experience experience) deleted,
  }) {
    return checkCreator(experience);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Experience experience)? checkCreator,
    TResult Function(Experience experience)? deleted,
  }) {
    return checkCreator?.call(experience);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experience experience)? checkCreator,
    TResult Function(Experience experience)? deleted,
    required TResult orElse(),
  }) {
    if (checkCreator != null) {
      return checkCreator(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckCreator value) checkCreator,
    required TResult Function(_Deleted value) deleted,
  }) {
    return checkCreator(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckCreator value)? checkCreator,
    TResult Function(_Deleted value)? deleted,
  }) {
    return checkCreator?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckCreator value)? checkCreator,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (checkCreator != null) {
      return checkCreator(this);
    }
    return orElse();
  }
}

abstract class _CheckCreator implements ExperienceManagementActorEvent {
  const factory _CheckCreator(Experience experience) = _$_CheckCreator;

  @override
  Experience get experience;
  @override
  @JsonKey(ignore: true)
  _$CheckCreatorCopyWith<_CheckCreator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res>
    implements $ExperienceManagementActorEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  @override
  $Res call({Experience experience});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res>
    extends _$ExperienceManagementActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object? experience = freezed,
  }) {
    return _then(_Deleted(
      experience == freezed
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as Experience,
    ));
  }
}

/// @nodoc

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.experience);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'ExperienceManagementActorEvent.deleted(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Deleted &&
            (identical(other.experience, experience) ||
                other.experience == experience));
  }

  @override
  int get hashCode => Object.hash(runtimeType, experience);

  @JsonKey(ignore: true)
  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experience experience) checkCreator,
    required TResult Function(Experience experience) deleted,
  }) {
    return deleted(experience);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Experience experience)? checkCreator,
    TResult Function(Experience experience)? deleted,
  }) {
    return deleted?.call(experience);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experience experience)? checkCreator,
    TResult Function(Experience experience)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckCreator value) checkCreator,
    required TResult Function(_Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckCreator value)? checkCreator,
    TResult Function(_Deleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckCreator value)? checkCreator,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements ExperienceManagementActorEvent {
  const factory _Deleted(Experience experience) = _$_Deleted;

  @override
  Experience get experience;
  @override
  @JsonKey(ignore: true)
  _$DeletedCopyWith<_Deleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ExperienceManagementActorStateTearOff {
  const _$ExperienceManagementActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _IsCreator isCreator() {
    return const _IsCreator();
  }

  _IsNotCreator isNotCreator() {
    return const _IsNotCreator();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _DeletionSuccess deletionSuccess() {
    return const _DeletionSuccess();
  }

  _DeletionFailure deletionFailure(Failure<dynamic> failure) {
    return _DeletionFailure(
      failure,
    );
  }
}

/// @nodoc
const $ExperienceManagementActorState =
    _$ExperienceManagementActorStateTearOff();

/// @nodoc
mixin _$ExperienceManagementActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isCreator,
    required TResult Function() isNotCreator,
    required TResult Function() actionInProgress,
    required TResult Function() deletionSuccess,
    required TResult Function(Failure<dynamic> failure) deletionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreator,
    TResult Function()? isNotCreator,
    TResult Function()? actionInProgress,
    TResult Function()? deletionSuccess,
    TResult Function(Failure<dynamic> failure)? deletionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreator,
    TResult Function()? isNotCreator,
    TResult Function()? actionInProgress,
    TResult Function()? deletionSuccess,
    TResult Function(Failure<dynamic> failure)? deletionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsCreator value) isCreator,
    required TResult Function(_IsNotCreator value) isNotCreator,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeletionSuccess value) deletionSuccess,
    required TResult Function(_DeletionFailure value) deletionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreator value)? isCreator,
    TResult Function(_IsNotCreator value)? isNotCreator,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletionSuccess value)? deletionSuccess,
    TResult Function(_DeletionFailure value)? deletionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreator value)? isCreator,
    TResult Function(_IsNotCreator value)? isNotCreator,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletionSuccess value)? deletionSuccess,
    TResult Function(_DeletionFailure value)? deletionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceManagementActorStateCopyWith<$Res> {
  factory $ExperienceManagementActorStateCopyWith(
          ExperienceManagementActorState value,
          $Res Function(ExperienceManagementActorState) then) =
      _$ExperienceManagementActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExperienceManagementActorStateCopyWithImpl<$Res>
    implements $ExperienceManagementActorStateCopyWith<$Res> {
  _$ExperienceManagementActorStateCopyWithImpl(this._value, this._then);

  final ExperienceManagementActorState _value;
  // ignore: unused_field
  final $Res Function(ExperienceManagementActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ExperienceManagementActorStateCopyWithImpl<$Res>
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
    return 'ExperienceManagementActorState.initial()';
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
    required TResult Function() isCreator,
    required TResult Function() isNotCreator,
    required TResult Function() actionInProgress,
    required TResult Function() deletionSuccess,
    required TResult Function(Failure<dynamic> failure) deletionFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreator,
    TResult Function()? isNotCreator,
    TResult Function()? actionInProgress,
    TResult Function()? deletionSuccess,
    TResult Function(Failure<dynamic> failure)? deletionFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreator,
    TResult Function()? isNotCreator,
    TResult Function()? actionInProgress,
    TResult Function()? deletionSuccess,
    TResult Function(Failure<dynamic> failure)? deletionFailure,
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
    required TResult Function(_IsCreator value) isCreator,
    required TResult Function(_IsNotCreator value) isNotCreator,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeletionSuccess value) deletionSuccess,
    required TResult Function(_DeletionFailure value) deletionFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreator value)? isCreator,
    TResult Function(_IsNotCreator value)? isNotCreator,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletionSuccess value)? deletionSuccess,
    TResult Function(_DeletionFailure value)? deletionFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreator value)? isCreator,
    TResult Function(_IsNotCreator value)? isNotCreator,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletionSuccess value)? deletionSuccess,
    TResult Function(_DeletionFailure value)? deletionFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ExperienceManagementActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$IsCreatorCopyWith<$Res> {
  factory _$IsCreatorCopyWith(
          _IsCreator value, $Res Function(_IsCreator) then) =
      __$IsCreatorCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsCreatorCopyWithImpl<$Res>
    extends _$ExperienceManagementActorStateCopyWithImpl<$Res>
    implements _$IsCreatorCopyWith<$Res> {
  __$IsCreatorCopyWithImpl(_IsCreator _value, $Res Function(_IsCreator) _then)
      : super(_value, (v) => _then(v as _IsCreator));

  @override
  _IsCreator get _value => super._value as _IsCreator;
}

/// @nodoc

class _$_IsCreator implements _IsCreator {
  const _$_IsCreator();

  @override
  String toString() {
    return 'ExperienceManagementActorState.isCreator()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _IsCreator);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isCreator,
    required TResult Function() isNotCreator,
    required TResult Function() actionInProgress,
    required TResult Function() deletionSuccess,
    required TResult Function(Failure<dynamic> failure) deletionFailure,
  }) {
    return isCreator();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreator,
    TResult Function()? isNotCreator,
    TResult Function()? actionInProgress,
    TResult Function()? deletionSuccess,
    TResult Function(Failure<dynamic> failure)? deletionFailure,
  }) {
    return isCreator?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreator,
    TResult Function()? isNotCreator,
    TResult Function()? actionInProgress,
    TResult Function()? deletionSuccess,
    TResult Function(Failure<dynamic> failure)? deletionFailure,
    required TResult orElse(),
  }) {
    if (isCreator != null) {
      return isCreator();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsCreator value) isCreator,
    required TResult Function(_IsNotCreator value) isNotCreator,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeletionSuccess value) deletionSuccess,
    required TResult Function(_DeletionFailure value) deletionFailure,
  }) {
    return isCreator(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreator value)? isCreator,
    TResult Function(_IsNotCreator value)? isNotCreator,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletionSuccess value)? deletionSuccess,
    TResult Function(_DeletionFailure value)? deletionFailure,
  }) {
    return isCreator?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreator value)? isCreator,
    TResult Function(_IsNotCreator value)? isNotCreator,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletionSuccess value)? deletionSuccess,
    TResult Function(_DeletionFailure value)? deletionFailure,
    required TResult orElse(),
  }) {
    if (isCreator != null) {
      return isCreator(this);
    }
    return orElse();
  }
}

abstract class _IsCreator implements ExperienceManagementActorState {
  const factory _IsCreator() = _$_IsCreator;
}

/// @nodoc
abstract class _$IsNotCreatorCopyWith<$Res> {
  factory _$IsNotCreatorCopyWith(
          _IsNotCreator value, $Res Function(_IsNotCreator) then) =
      __$IsNotCreatorCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsNotCreatorCopyWithImpl<$Res>
    extends _$ExperienceManagementActorStateCopyWithImpl<$Res>
    implements _$IsNotCreatorCopyWith<$Res> {
  __$IsNotCreatorCopyWithImpl(
      _IsNotCreator _value, $Res Function(_IsNotCreator) _then)
      : super(_value, (v) => _then(v as _IsNotCreator));

  @override
  _IsNotCreator get _value => super._value as _IsNotCreator;
}

/// @nodoc

class _$_IsNotCreator implements _IsNotCreator {
  const _$_IsNotCreator();

  @override
  String toString() {
    return 'ExperienceManagementActorState.isNotCreator()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _IsNotCreator);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isCreator,
    required TResult Function() isNotCreator,
    required TResult Function() actionInProgress,
    required TResult Function() deletionSuccess,
    required TResult Function(Failure<dynamic> failure) deletionFailure,
  }) {
    return isNotCreator();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreator,
    TResult Function()? isNotCreator,
    TResult Function()? actionInProgress,
    TResult Function()? deletionSuccess,
    TResult Function(Failure<dynamic> failure)? deletionFailure,
  }) {
    return isNotCreator?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreator,
    TResult Function()? isNotCreator,
    TResult Function()? actionInProgress,
    TResult Function()? deletionSuccess,
    TResult Function(Failure<dynamic> failure)? deletionFailure,
    required TResult orElse(),
  }) {
    if (isNotCreator != null) {
      return isNotCreator();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsCreator value) isCreator,
    required TResult Function(_IsNotCreator value) isNotCreator,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeletionSuccess value) deletionSuccess,
    required TResult Function(_DeletionFailure value) deletionFailure,
  }) {
    return isNotCreator(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreator value)? isCreator,
    TResult Function(_IsNotCreator value)? isNotCreator,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletionSuccess value)? deletionSuccess,
    TResult Function(_DeletionFailure value)? deletionFailure,
  }) {
    return isNotCreator?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreator value)? isCreator,
    TResult Function(_IsNotCreator value)? isNotCreator,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletionSuccess value)? deletionSuccess,
    TResult Function(_DeletionFailure value)? deletionFailure,
    required TResult orElse(),
  }) {
    if (isNotCreator != null) {
      return isNotCreator(this);
    }
    return orElse();
  }
}

abstract class _IsNotCreator implements ExperienceManagementActorState {
  const factory _IsNotCreator() = _$_IsNotCreator;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$ExperienceManagementActorStateCopyWithImpl<$Res>
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
    return 'ExperienceManagementActorState.actionInProgress()';
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
    required TResult Function() isCreator,
    required TResult Function() isNotCreator,
    required TResult Function() actionInProgress,
    required TResult Function() deletionSuccess,
    required TResult Function(Failure<dynamic> failure) deletionFailure,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreator,
    TResult Function()? isNotCreator,
    TResult Function()? actionInProgress,
    TResult Function()? deletionSuccess,
    TResult Function(Failure<dynamic> failure)? deletionFailure,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreator,
    TResult Function()? isNotCreator,
    TResult Function()? actionInProgress,
    TResult Function()? deletionSuccess,
    TResult Function(Failure<dynamic> failure)? deletionFailure,
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
    required TResult Function(_IsCreator value) isCreator,
    required TResult Function(_IsNotCreator value) isNotCreator,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeletionSuccess value) deletionSuccess,
    required TResult Function(_DeletionFailure value) deletionFailure,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreator value)? isCreator,
    TResult Function(_IsNotCreator value)? isNotCreator,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletionSuccess value)? deletionSuccess,
    TResult Function(_DeletionFailure value)? deletionFailure,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreator value)? isCreator,
    TResult Function(_IsNotCreator value)? isNotCreator,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletionSuccess value)? deletionSuccess,
    TResult Function(_DeletionFailure value)? deletionFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements ExperienceManagementActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$DeletionSuccessCopyWith<$Res> {
  factory _$DeletionSuccessCopyWith(
          _DeletionSuccess value, $Res Function(_DeletionSuccess) then) =
      __$DeletionSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeletionSuccessCopyWithImpl<$Res>
    extends _$ExperienceManagementActorStateCopyWithImpl<$Res>
    implements _$DeletionSuccessCopyWith<$Res> {
  __$DeletionSuccessCopyWithImpl(
      _DeletionSuccess _value, $Res Function(_DeletionSuccess) _then)
      : super(_value, (v) => _then(v as _DeletionSuccess));

  @override
  _DeletionSuccess get _value => super._value as _DeletionSuccess;
}

/// @nodoc

class _$_DeletionSuccess implements _DeletionSuccess {
  const _$_DeletionSuccess();

  @override
  String toString() {
    return 'ExperienceManagementActorState.deletionSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DeletionSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isCreator,
    required TResult Function() isNotCreator,
    required TResult Function() actionInProgress,
    required TResult Function() deletionSuccess,
    required TResult Function(Failure<dynamic> failure) deletionFailure,
  }) {
    return deletionSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreator,
    TResult Function()? isNotCreator,
    TResult Function()? actionInProgress,
    TResult Function()? deletionSuccess,
    TResult Function(Failure<dynamic> failure)? deletionFailure,
  }) {
    return deletionSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreator,
    TResult Function()? isNotCreator,
    TResult Function()? actionInProgress,
    TResult Function()? deletionSuccess,
    TResult Function(Failure<dynamic> failure)? deletionFailure,
    required TResult orElse(),
  }) {
    if (deletionSuccess != null) {
      return deletionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsCreator value) isCreator,
    required TResult Function(_IsNotCreator value) isNotCreator,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeletionSuccess value) deletionSuccess,
    required TResult Function(_DeletionFailure value) deletionFailure,
  }) {
    return deletionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreator value)? isCreator,
    TResult Function(_IsNotCreator value)? isNotCreator,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletionSuccess value)? deletionSuccess,
    TResult Function(_DeletionFailure value)? deletionFailure,
  }) {
    return deletionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreator value)? isCreator,
    TResult Function(_IsNotCreator value)? isNotCreator,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletionSuccess value)? deletionSuccess,
    TResult Function(_DeletionFailure value)? deletionFailure,
    required TResult orElse(),
  }) {
    if (deletionSuccess != null) {
      return deletionSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeletionSuccess implements ExperienceManagementActorState {
  const factory _DeletionSuccess() = _$_DeletionSuccess;
}

/// @nodoc
abstract class _$DeletionFailureCopyWith<$Res> {
  factory _$DeletionFailureCopyWith(
          _DeletionFailure value, $Res Function(_DeletionFailure) then) =
      __$DeletionFailureCopyWithImpl<$Res>;
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$DeletionFailureCopyWithImpl<$Res>
    extends _$ExperienceManagementActorStateCopyWithImpl<$Res>
    implements _$DeletionFailureCopyWith<$Res> {
  __$DeletionFailureCopyWithImpl(
      _DeletionFailure _value, $Res Function(_DeletionFailure) _then)
      : super(_value, (v) => _then(v as _DeletionFailure));

  @override
  _DeletionFailure get _value => super._value as _DeletionFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_DeletionFailure(
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

class _$_DeletionFailure implements _DeletionFailure {
  const _$_DeletionFailure(this.failure);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'ExperienceManagementActorState.deletionFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeletionFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  _$DeletionFailureCopyWith<_DeletionFailure> get copyWith =>
      __$DeletionFailureCopyWithImpl<_DeletionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isCreator,
    required TResult Function() isNotCreator,
    required TResult Function() actionInProgress,
    required TResult Function() deletionSuccess,
    required TResult Function(Failure<dynamic> failure) deletionFailure,
  }) {
    return deletionFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreator,
    TResult Function()? isNotCreator,
    TResult Function()? actionInProgress,
    TResult Function()? deletionSuccess,
    TResult Function(Failure<dynamic> failure)? deletionFailure,
  }) {
    return deletionFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreator,
    TResult Function()? isNotCreator,
    TResult Function()? actionInProgress,
    TResult Function()? deletionSuccess,
    TResult Function(Failure<dynamic> failure)? deletionFailure,
    required TResult orElse(),
  }) {
    if (deletionFailure != null) {
      return deletionFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsCreator value) isCreator,
    required TResult Function(_IsNotCreator value) isNotCreator,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeletionSuccess value) deletionSuccess,
    required TResult Function(_DeletionFailure value) deletionFailure,
  }) {
    return deletionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreator value)? isCreator,
    TResult Function(_IsNotCreator value)? isNotCreator,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletionSuccess value)? deletionSuccess,
    TResult Function(_DeletionFailure value)? deletionFailure,
  }) {
    return deletionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreator value)? isCreator,
    TResult Function(_IsNotCreator value)? isNotCreator,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletionSuccess value)? deletionSuccess,
    TResult Function(_DeletionFailure value)? deletionFailure,
    required TResult orElse(),
  }) {
    if (deletionFailure != null) {
      return deletionFailure(this);
    }
    return orElse();
  }
}

abstract class _DeletionFailure implements ExperienceManagementActorState {
  const factory _DeletionFailure(Failure<dynamic> failure) = _$_DeletionFailure;

  Failure<dynamic> get failure;
  @JsonKey(ignore: true)
  _$DeletionFailureCopyWith<_DeletionFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
