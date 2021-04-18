// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'rewards_creation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RewardsCreationEventTearOff {
  const _$RewardsCreationEventTearOff();

  _Initialized initialized(Option<RewardSet> rewardSetOption) {
    return _Initialized(
      rewardSetOption,
    );
  }

  _AddedReward addedReward(Reward reward) {
    return _AddedReward(
      reward,
    );
  }

  _RemovedReward removedReward(Reward reward) {
    return _RemovedReward(
      reward,
    );
  }
}

/// @nodoc
const $RewardsCreationEvent = _$RewardsCreationEventTearOff();

/// @nodoc
mixin _$RewardsCreationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<RewardSet> rewardSetOption) initialized,
    required TResult Function(Reward reward) addedReward,
    required TResult Function(Reward reward) removedReward,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<RewardSet> rewardSetOption)? initialized,
    TResult Function(Reward reward)? addedReward,
    TResult Function(Reward reward)? removedReward,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddedReward value) addedReward,
    required TResult Function(_RemovedReward value) removedReward,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddedReward value)? addedReward,
    TResult Function(_RemovedReward value)? removedReward,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardsCreationEventCopyWith<$Res> {
  factory $RewardsCreationEventCopyWith(RewardsCreationEvent value, $Res Function(RewardsCreationEvent) then) = _$RewardsCreationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RewardsCreationEventCopyWithImpl<$Res> implements $RewardsCreationEventCopyWith<$Res> {
  _$RewardsCreationEventCopyWithImpl(this._value, this._then);

  final RewardsCreationEvent _value;

  // ignore: unused_field
  final $Res Function(RewardsCreationEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(_Initialized value, $Res Function(_Initialized) then) = __$InitializedCopyWithImpl<$Res>;

  $Res call({Option<RewardSet> rewardSetOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$RewardsCreationEventCopyWithImpl<$Res> implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(_Initialized _value, $Res Function(_Initialized) _then) : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? rewardSetOption = freezed,
  }) {
    return _then(_Initialized(
      rewardSetOption == freezed
          ? _value.rewardSetOption
          : rewardSetOption // ignore: cast_nullable_to_non_nullable
              as Option<RewardSet>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.rewardSetOption);

  @override
  final Option<RewardSet> rewardSetOption;

  @override
  String toString() {
    return 'RewardsCreationEvent.initialized(rewardSetOption: $rewardSetOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialized && (identical(other.rewardSetOption, rewardSetOption) || const DeepCollectionEquality().equals(other.rewardSetOption, rewardSetOption)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(rewardSetOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith => __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<RewardSet> rewardSetOption) initialized,
    required TResult Function(Reward reward) addedReward,
    required TResult Function(Reward reward) removedReward,
  }) {
    return initialized(rewardSetOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<RewardSet> rewardSetOption)? initialized,
    TResult Function(Reward reward)? addedReward,
    TResult Function(Reward reward)? removedReward,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(rewardSetOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddedReward value) addedReward,
    required TResult Function(_RemovedReward value) removedReward,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddedReward value)? addedReward,
    TResult Function(_RemovedReward value)? removedReward,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements RewardsCreationEvent {
  const factory _Initialized(Option<RewardSet> rewardSetOption) = _$_Initialized;

  Option<RewardSet> get rewardSetOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddedRewardCopyWith<$Res> {
  factory _$AddedRewardCopyWith(_AddedReward value, $Res Function(_AddedReward) then) = __$AddedRewardCopyWithImpl<$Res>;

  $Res call({Reward reward});

  $RewardCopyWith<$Res> get reward;
}

/// @nodoc
class __$AddedRewardCopyWithImpl<$Res> extends _$RewardsCreationEventCopyWithImpl<$Res> implements _$AddedRewardCopyWith<$Res> {
  __$AddedRewardCopyWithImpl(_AddedReward _value, $Res Function(_AddedReward) _then) : super(_value, (v) => _then(v as _AddedReward));

  @override
  _AddedReward get _value => super._value as _AddedReward;

  @override
  $Res call({
    Object? reward = freezed,
  }) {
    return _then(_AddedReward(
      reward == freezed
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as Reward,
    ));
  }

  @override
  $RewardCopyWith<$Res> get reward {
    return $RewardCopyWith<$Res>(_value.reward, (value) {
      return _then(_value.copyWith(reward: value));
    });
  }
}

/// @nodoc
class _$_AddedReward implements _AddedReward {
  const _$_AddedReward(this.reward);

  @override
  final Reward reward;

  @override
  String toString() {
    return 'RewardsCreationEvent.addedReward(reward: $reward)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddedReward && (identical(other.reward, reward) || const DeepCollectionEquality().equals(other.reward, reward)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(reward);

  @JsonKey(ignore: true)
  @override
  _$AddedRewardCopyWith<_AddedReward> get copyWith => __$AddedRewardCopyWithImpl<_AddedReward>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<RewardSet> rewardSetOption) initialized,
    required TResult Function(Reward reward) addedReward,
    required TResult Function(Reward reward) removedReward,
  }) {
    return addedReward(reward);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<RewardSet> rewardSetOption)? initialized,
    TResult Function(Reward reward)? addedReward,
    TResult Function(Reward reward)? removedReward,
    required TResult orElse(),
  }) {
    if (addedReward != null) {
      return addedReward(reward);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddedReward value) addedReward,
    required TResult Function(_RemovedReward value) removedReward,
  }) {
    return addedReward(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddedReward value)? addedReward,
    TResult Function(_RemovedReward value)? removedReward,
    required TResult orElse(),
  }) {
    if (addedReward != null) {
      return addedReward(this);
    }
    return orElse();
  }
}

abstract class _AddedReward implements RewardsCreationEvent {
  const factory _AddedReward(Reward reward) = _$_AddedReward;

  Reward get reward => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$AddedRewardCopyWith<_AddedReward> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemovedRewardCopyWith<$Res> {
  factory _$RemovedRewardCopyWith(_RemovedReward value, $Res Function(_RemovedReward) then) = __$RemovedRewardCopyWithImpl<$Res>;

  $Res call({Reward reward});

  $RewardCopyWith<$Res> get reward;
}

/// @nodoc
class __$RemovedRewardCopyWithImpl<$Res> extends _$RewardsCreationEventCopyWithImpl<$Res> implements _$RemovedRewardCopyWith<$Res> {
  __$RemovedRewardCopyWithImpl(_RemovedReward _value, $Res Function(_RemovedReward) _then) : super(_value, (v) => _then(v as _RemovedReward));

  @override
  _RemovedReward get _value => super._value as _RemovedReward;

  @override
  $Res call({
    Object? reward = freezed,
  }) {
    return _then(_RemovedReward(
      reward == freezed
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as Reward,
    ));
  }

  @override
  $RewardCopyWith<$Res> get reward {
    return $RewardCopyWith<$Res>(_value.reward, (value) {
      return _then(_value.copyWith(reward: value));
    });
  }
}

/// @nodoc
class _$_RemovedReward implements _RemovedReward {
  const _$_RemovedReward(this.reward);

  @override
  final Reward reward;

  @override
  String toString() {
    return 'RewardsCreationEvent.removedReward(reward: $reward)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RemovedReward && (identical(other.reward, reward) || const DeepCollectionEquality().equals(other.reward, reward)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(reward);

  @JsonKey(ignore: true)
  @override
  _$RemovedRewardCopyWith<_RemovedReward> get copyWith => __$RemovedRewardCopyWithImpl<_RemovedReward>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<RewardSet> rewardSetOption) initialized,
    required TResult Function(Reward reward) addedReward,
    required TResult Function(Reward reward) removedReward,
  }) {
    return removedReward(reward);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<RewardSet> rewardSetOption)? initialized,
    TResult Function(Reward reward)? addedReward,
    TResult Function(Reward reward)? removedReward,
    required TResult orElse(),
  }) {
    if (removedReward != null) {
      return removedReward(reward);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddedReward value) addedReward,
    required TResult Function(_RemovedReward value) removedReward,
  }) {
    return removedReward(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddedReward value)? addedReward,
    TResult Function(_RemovedReward value)? removedReward,
    required TResult orElse(),
  }) {
    if (removedReward != null) {
      return removedReward(this);
    }
    return orElse();
  }
}

abstract class _RemovedReward implements RewardsCreationEvent {
  const factory _RemovedReward(Reward reward) = _$_RemovedReward;

  Reward get reward => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$RemovedRewardCopyWith<_RemovedReward> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$RewardsCreationStateTearOff {
  const _$RewardsCreationStateTearOff();

  _RewardsCreationState call({required KtSet<Reward> rewardsCreated}) {
    return _RewardsCreationState(
      rewardsCreated: rewardsCreated,
    );
  }
}

/// @nodoc
const $RewardsCreationState = _$RewardsCreationStateTearOff();

/// @nodoc
mixin _$RewardsCreationState {
  KtSet<Reward> get rewardsCreated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RewardsCreationStateCopyWith<RewardsCreationState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardsCreationStateCopyWith<$Res> {
  factory $RewardsCreationStateCopyWith(RewardsCreationState value, $Res Function(RewardsCreationState) then) = _$RewardsCreationStateCopyWithImpl<$Res>;

  $Res call({KtSet<Reward> rewardsCreated});
}

/// @nodoc
class _$RewardsCreationStateCopyWithImpl<$Res> implements $RewardsCreationStateCopyWith<$Res> {
  _$RewardsCreationStateCopyWithImpl(this._value, this._then);

  final RewardsCreationState _value;

  // ignore: unused_field
  final $Res Function(RewardsCreationState) _then;

  @override
  $Res call({
    Object? rewardsCreated = freezed,
  }) {
    return _then(_value.copyWith(
      rewardsCreated: rewardsCreated == freezed
          ? _value.rewardsCreated
          : rewardsCreated // ignore: cast_nullable_to_non_nullable
              as KtSet<Reward>,
    ));
  }
}

/// @nodoc
abstract class _$RewardsCreationStateCopyWith<$Res> implements $RewardsCreationStateCopyWith<$Res> {
  factory _$RewardsCreationStateCopyWith(_RewardsCreationState value, $Res Function(_RewardsCreationState) then) = __$RewardsCreationStateCopyWithImpl<$Res>;

  @override
  $Res call({KtSet<Reward> rewardsCreated});
}

/// @nodoc
class __$RewardsCreationStateCopyWithImpl<$Res> extends _$RewardsCreationStateCopyWithImpl<$Res> implements _$RewardsCreationStateCopyWith<$Res> {
  __$RewardsCreationStateCopyWithImpl(_RewardsCreationState _value, $Res Function(_RewardsCreationState) _then) : super(_value, (v) => _then(v as _RewardsCreationState));

  @override
  _RewardsCreationState get _value => super._value as _RewardsCreationState;

  @override
  $Res call({
    Object? rewardsCreated = freezed,
  }) {
    return _then(_RewardsCreationState(
      rewardsCreated: rewardsCreated == freezed
          ? _value.rewardsCreated
          : rewardsCreated // ignore: cast_nullable_to_non_nullable
              as KtSet<Reward>,
    ));
  }
}

/// @nodoc
class _$_RewardsCreationState implements _RewardsCreationState {
  const _$_RewardsCreationState({required this.rewardsCreated});

  @override
  final KtSet<Reward> rewardsCreated;

  @override
  String toString() {
    return 'RewardsCreationState(rewardsCreated: $rewardsCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RewardsCreationState && (identical(other.rewardsCreated, rewardsCreated) || const DeepCollectionEquality().equals(other.rewardsCreated, rewardsCreated)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(rewardsCreated);

  @JsonKey(ignore: true)
  @override
  _$RewardsCreationStateCopyWith<_RewardsCreationState> get copyWith => __$RewardsCreationStateCopyWithImpl<_RewardsCreationState>(this, _$identity);
}

abstract class _RewardsCreationState implements RewardsCreationState {
  const factory _RewardsCreationState({required KtSet<Reward> rewardsCreated}) = _$_RewardsCreationState;

  @override
  KtSet<Reward> get rewardsCreated => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$RewardsCreationStateCopyWith<_RewardsCreationState> get copyWith => throw _privateConstructorUsedError;
}
