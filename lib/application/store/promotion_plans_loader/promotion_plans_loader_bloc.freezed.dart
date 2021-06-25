// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'promotion_plans_loader_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PromotionPlansLoaderEventTearOff {
  const _$PromotionPlansLoaderEventTearOff();

  _LoadPromotionPlans loadPromotionPlans() {
    return const _LoadPromotionPlans();
  }
}

/// @nodoc
const $PromotionPlansLoaderEvent = _$PromotionPlansLoaderEventTearOff();

/// @nodoc
mixin _$PromotionPlansLoaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadPromotionPlans,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadPromotionPlans,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPromotionPlans value) loadPromotionPlans,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPromotionPlans value)? loadPromotionPlans,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionPlansLoaderEventCopyWith<$Res> {
  factory $PromotionPlansLoaderEventCopyWith(
          PromotionPlansLoaderEvent value, $Res Function(PromotionPlansLoaderEvent) then) =
      _$PromotionPlansLoaderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PromotionPlansLoaderEventCopyWithImpl<$Res>
    implements $PromotionPlansLoaderEventCopyWith<$Res> {
  _$PromotionPlansLoaderEventCopyWithImpl(this._value, this._then);

  final PromotionPlansLoaderEvent _value;

  // ignore: unused_field
  final $Res Function(PromotionPlansLoaderEvent) _then;
}

/// @nodoc
abstract class _$LoadPromotionPlansCopyWith<$Res> {
  factory _$LoadPromotionPlansCopyWith(
          _LoadPromotionPlans value, $Res Function(_LoadPromotionPlans) then) =
      __$LoadPromotionPlansCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadPromotionPlansCopyWithImpl<$Res> extends _$PromotionPlansLoaderEventCopyWithImpl<$Res>
    implements _$LoadPromotionPlansCopyWith<$Res> {
  __$LoadPromotionPlansCopyWithImpl(
      _LoadPromotionPlans _value, $Res Function(_LoadPromotionPlans) _then)
      : super(_value, (v) => _then(v as _LoadPromotionPlans));

  @override
  _LoadPromotionPlans get _value => super._value as _LoadPromotionPlans;
}

/// @nodoc

class _$_LoadPromotionPlans implements _LoadPromotionPlans {
  const _$_LoadPromotionPlans();

  @override
  String toString() {
    return 'PromotionPlansLoaderEvent.loadPromotionPlans()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadPromotionPlans);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadPromotionPlans,
  }) {
    return loadPromotionPlans();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadPromotionPlans,
    required TResult orElse(),
  }) {
    if (loadPromotionPlans != null) {
      return loadPromotionPlans();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPromotionPlans value) loadPromotionPlans,
  }) {
    return loadPromotionPlans(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPromotionPlans value)? loadPromotionPlans,
    required TResult orElse(),
  }) {
    if (loadPromotionPlans != null) {
      return loadPromotionPlans(this);
    }
    return orElse();
  }
}

abstract class _LoadPromotionPlans implements PromotionPlansLoaderEvent {
  const factory _LoadPromotionPlans() = _$_LoadPromotionPlans;
}

/// @nodoc
class _$PromotionPlansLoaderStateTearOff {
  const _$PromotionPlansLoaderStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadedPromotionPlans loadedPromotionPlans(KtList<PromotionPlan> plans) {
    return _LoadedPromotionPlans(
      plans,
    );
  }

  _LoadFailure loadFailure(Failure<dynamic> failure) {
    return _LoadFailure(
      failure,
    );
  }
}

/// @nodoc
const $PromotionPlansLoaderState = _$PromotionPlansLoaderStateTearOff();

/// @nodoc
mixin _$PromotionPlansLoaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<PromotionPlan> plans) loadedPromotionPlans,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<PromotionPlan> plans)? loadedPromotionPlans,
    TResult Function(Failure<dynamic> failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadedPromotionPlans value) loadedPromotionPlans,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadedPromotionPlans value)? loadedPromotionPlans,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionPlansLoaderStateCopyWith<$Res> {
  factory $PromotionPlansLoaderStateCopyWith(
          PromotionPlansLoaderState value, $Res Function(PromotionPlansLoaderState) then) =
      _$PromotionPlansLoaderStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PromotionPlansLoaderStateCopyWithImpl<$Res>
    implements $PromotionPlansLoaderStateCopyWith<$Res> {
  _$PromotionPlansLoaderStateCopyWithImpl(this._value, this._then);

  final PromotionPlansLoaderState _value;

  // ignore: unused_field
  final $Res Function(PromotionPlansLoaderState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PromotionPlansLoaderStateCopyWithImpl<$Res>
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
    return 'PromotionPlansLoaderState.initial()';
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
    required TResult Function(KtList<PromotionPlan> plans) loadedPromotionPlans,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<PromotionPlan> plans)? loadedPromotionPlans,
    TResult Function(Failure<dynamic> failure)? loadFailure,
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
    required TResult Function(_LoadedPromotionPlans value) loadedPromotionPlans,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadedPromotionPlans value)? loadedPromotionPlans,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PromotionPlansLoaderState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(_LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res> extends _$PromotionPlansLoaderStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(_LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'PromotionPlansLoaderState.loadInProgress()';
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
    required TResult Function(KtList<PromotionPlan> plans) loadedPromotionPlans,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<PromotionPlan> plans)? loadedPromotionPlans,
    TResult Function(Failure<dynamic> failure)? loadFailure,
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
    required TResult Function(_LoadedPromotionPlans value) loadedPromotionPlans,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadedPromotionPlans value)? loadedPromotionPlans,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements PromotionPlansLoaderState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadedPromotionPlansCopyWith<$Res> {
  factory _$LoadedPromotionPlansCopyWith(
          _LoadedPromotionPlans value, $Res Function(_LoadedPromotionPlans) then) =
      __$LoadedPromotionPlansCopyWithImpl<$Res>;

  $Res call({KtList<PromotionPlan> plans});
}

/// @nodoc
class __$LoadedPromotionPlansCopyWithImpl<$Res>
    extends _$PromotionPlansLoaderStateCopyWithImpl<$Res>
    implements _$LoadedPromotionPlansCopyWith<$Res> {
  __$LoadedPromotionPlansCopyWithImpl(
      _LoadedPromotionPlans _value, $Res Function(_LoadedPromotionPlans) _then)
      : super(_value, (v) => _then(v as _LoadedPromotionPlans));

  @override
  _LoadedPromotionPlans get _value => super._value as _LoadedPromotionPlans;

  @override
  $Res call({
    Object? plans = freezed,
  }) {
    return _then(_LoadedPromotionPlans(
      plans == freezed
          ? _value.plans
          : plans // ignore: cast_nullable_to_non_nullable
              as KtList<PromotionPlan>,
    ));
  }
}

/// @nodoc

class _$_LoadedPromotionPlans implements _LoadedPromotionPlans {
  const _$_LoadedPromotionPlans(this.plans);

  @override
  final KtList<PromotionPlan> plans;

  @override
  String toString() {
    return 'PromotionPlansLoaderState.loadedPromotionPlans(plans: $plans)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadedPromotionPlans &&
            (identical(other.plans, plans) ||
                const DeepCollectionEquality().equals(other.plans, plans)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(plans);

  @JsonKey(ignore: true)
  @override
  _$LoadedPromotionPlansCopyWith<_LoadedPromotionPlans> get copyWith =>
      __$LoadedPromotionPlansCopyWithImpl<_LoadedPromotionPlans>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<PromotionPlan> plans) loadedPromotionPlans,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) {
    return loadedPromotionPlans(plans);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<PromotionPlan> plans)? loadedPromotionPlans,
    TResult Function(Failure<dynamic> failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadedPromotionPlans != null) {
      return loadedPromotionPlans(plans);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadedPromotionPlans value) loadedPromotionPlans,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadedPromotionPlans(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadedPromotionPlans value)? loadedPromotionPlans,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadedPromotionPlans != null) {
      return loadedPromotionPlans(this);
    }
    return orElse();
  }
}

abstract class _LoadedPromotionPlans implements PromotionPlansLoaderState {
  const factory _LoadedPromotionPlans(KtList<PromotionPlan> plans) = _$_LoadedPromotionPlans;

  KtList<PromotionPlan> get plans => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$LoadedPromotionPlansCopyWith<_LoadedPromotionPlans> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(_LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$PromotionPlansLoaderStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(_LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_LoadFailure(
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

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'PromotionPlansLoaderState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<PromotionPlan> plans) loadedPromotionPlans,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<PromotionPlan> plans)? loadedPromotionPlans,
    TResult Function(Failure<dynamic> failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadedPromotionPlans value) loadedPromotionPlans,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadedPromotionPlans value)? loadedPromotionPlans,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements PromotionPlansLoaderState {
  const factory _LoadFailure(Failure<dynamic> failure) = _$_LoadFailure;

  Failure<dynamic> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith => throw _privateConstructorUsedError;
}
