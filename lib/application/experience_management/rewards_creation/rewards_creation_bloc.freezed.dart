// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'rewards_creation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RewardsCreationEventTearOff {
  const _$RewardsCreationEventTearOff();

// ignore: unused_element
  _Initialized initialized(RewardSet rewardSet) {
    return _Initialized(
      rewardSet,
    );
  }

// ignore: unused_element
  _AddedReward addedReward(Reward reward) {
    return _AddedReward(
      reward,
    );
  }

// ignore: unused_element
  _RemovedReward removedReward(Reward reward) {
    return _RemovedReward(
      reward,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RewardsCreationEvent = _$RewardsCreationEventTearOff();

/// @nodoc
mixin _$RewardsCreationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(RewardSet rewardSet),
    @required TResult addedReward(Reward reward),
    @required TResult removedReward(Reward reward),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(RewardSet rewardSet),
    TResult addedReward(Reward reward),
    TResult removedReward(Reward reward),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult addedReward(_AddedReward value),
    @required TResult removedReward(_RemovedReward value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult addedReward(_AddedReward value),
    TResult removedReward(_RemovedReward value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RewardsCreationEventCopyWith<$Res> {
  factory $RewardsCreationEventCopyWith(RewardsCreationEvent value,
          $Res Function(RewardsCreationEvent) then) =
      _$RewardsCreationEventCopyWithImpl<$Res>;
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

  $Res call({RewardSet rewardSet});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$RewardsCreationEventCopyWithImpl<$Res> implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(_Initialized _value, $Res Function(_Initialized) _then) : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object rewardSet = freezed,
  }) {
    return _then(_Initialized(
      rewardSet == freezed ? _value.rewardSet : rewardSet as RewardSet,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.rewardSet) : assert(rewardSet != null);

  @override
  final RewardSet rewardSet;

  @override
  String toString() {
    return 'RewardsCreationEvent.initialized(rewardSet: $rewardSet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialized && (identical(other.rewardSet, rewardSet) || const DeepCollectionEquality().equals(other.rewardSet, rewardSet)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(rewardSet);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith => __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(RewardSet rewardSet),
    @required TResult addedReward(Reward reward),
    @required TResult removedReward(Reward reward),
  }) {
    assert(initialized != null);
    assert(addedReward != null);
    assert(removedReward != null);
    return initialized(rewardSet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(RewardSet rewardSet),
    TResult addedReward(Reward reward),
    TResult removedReward(Reward reward),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(rewardSet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult addedReward(_AddedReward value),
    @required TResult removedReward(_RemovedReward value),
  }) {
    assert(initialized != null);
    assert(addedReward != null);
    assert(removedReward != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult addedReward(_AddedReward value),
    TResult removedReward(_RemovedReward value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements RewardsCreationEvent {
  const factory _Initialized(RewardSet rewardSet) = _$_Initialized;

  RewardSet get rewardSet;

  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$AddedRewardCopyWith<$Res> {
  factory _$AddedRewardCopyWith(_AddedReward value, $Res Function(_AddedReward) then) = __$AddedRewardCopyWithImpl<$Res>;

  $Res call({Reward reward});

  $RewardCopyWith<$Res> get reward;
}

/// @nodoc
class __$AddedRewardCopyWithImpl<$Res>
    extends _$RewardsCreationEventCopyWithImpl<$Res>
    implements _$AddedRewardCopyWith<$Res> {
  __$AddedRewardCopyWithImpl(
      _AddedReward _value, $Res Function(_AddedReward) _then)
      : super(_value, (v) => _then(v as _AddedReward));

  @override
  _AddedReward get _value => super._value as _AddedReward;

  @override
  $Res call({
    Object reward = freezed,
  }) {
    return _then(_AddedReward(
      reward == freezed ? _value.reward : reward as Reward,
    ));
  }

  @override
  $RewardCopyWith<$Res> get reward {
    if (_value.reward == null) {
      return null;
    }
    return $RewardCopyWith<$Res>(_value.reward, (value) {
      return _then(_value.copyWith(reward: value));
    });
  }
}

/// @nodoc
class _$_AddedReward implements _AddedReward {
  const _$_AddedReward(this.reward) : assert(reward != null);

  @override
  final Reward reward;

  @override
  String toString() {
    return 'RewardsCreationEvent.addedReward(reward: $reward)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddedReward &&
            (identical(other.reward, reward) ||
                const DeepCollectionEquality().equals(other.reward, reward)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reward);

  @JsonKey(ignore: true)
  @override
  _$AddedRewardCopyWith<_AddedReward> get copyWith =>
      __$AddedRewardCopyWithImpl<_AddedReward>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(RewardSet rewardSet),
    @required TResult addedReward(Reward reward),
    @required TResult removedReward(Reward reward),
  }) {
    assert(initialized != null);
    assert(addedReward != null);
    assert(removedReward != null);
    return addedReward(reward);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(RewardSet rewardSet),
    TResult addedReward(Reward reward),
    TResult removedReward(Reward reward),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addedReward != null) {
      return addedReward(reward);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult addedReward(_AddedReward value),
    @required TResult removedReward(_RemovedReward value),
  }) {
    assert(initialized != null);
    assert(addedReward != null);
    assert(removedReward != null);
    return addedReward(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult addedReward(_AddedReward value),
    TResult removedReward(_RemovedReward value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addedReward != null) {
      return addedReward(this);
    }
    return orElse();
  }
}

abstract class _AddedReward implements RewardsCreationEvent {
  const factory _AddedReward(Reward reward) = _$_AddedReward;

  Reward get reward;
  @JsonKey(ignore: true)
  _$AddedRewardCopyWith<_AddedReward> get copyWith;
}

/// @nodoc
abstract class _$RemovedRewardCopyWith<$Res> {
  factory _$RemovedRewardCopyWith(_RemovedReward value, $Res Function(_RemovedReward) then) = __$RemovedRewardCopyWithImpl<$Res>;

  $Res call({Reward reward});

  $RewardCopyWith<$Res> get reward;
}

/// @nodoc
class __$RemovedRewardCopyWithImpl<$Res>
    extends _$RewardsCreationEventCopyWithImpl<$Res>
    implements _$RemovedRewardCopyWith<$Res> {
  __$RemovedRewardCopyWithImpl(
      _RemovedReward _value, $Res Function(_RemovedReward) _then)
      : super(_value, (v) => _then(v as _RemovedReward));

  @override
  _RemovedReward get _value => super._value as _RemovedReward;

  @override
  $Res call({
    Object reward = freezed,
  }) {
    return _then(_RemovedReward(
      reward == freezed ? _value.reward : reward as Reward,
    ));
  }

  @override
  $RewardCopyWith<$Res> get reward {
    if (_value.reward == null) {
      return null;
    }
    return $RewardCopyWith<$Res>(_value.reward, (value) {
      return _then(_value.copyWith(reward: value));
    });
  }
}

/// @nodoc
class _$_RemovedReward implements _RemovedReward {
  const _$_RemovedReward(this.reward) : assert(reward != null);

  @override
  final Reward reward;

  @override
  String toString() {
    return 'RewardsCreationEvent.removedReward(reward: $reward)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemovedReward &&
            (identical(other.reward, reward) ||
                const DeepCollectionEquality().equals(other.reward, reward)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reward);

  @JsonKey(ignore: true)
  @override
  _$RemovedRewardCopyWith<_RemovedReward> get copyWith =>
      __$RemovedRewardCopyWithImpl<_RemovedReward>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(RewardSet rewardSet),
    @required TResult addedReward(Reward reward),
    @required TResult removedReward(Reward reward),
  }) {
    assert(initialized != null);
    assert(addedReward != null);
    assert(removedReward != null);
    return removedReward(reward);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(RewardSet rewardSet),
    TResult addedReward(Reward reward),
    TResult removedReward(Reward reward),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removedReward != null) {
      return removedReward(reward);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult addedReward(_AddedReward value),
    @required TResult removedReward(_RemovedReward value),
  }) {
    assert(initialized != null);
    assert(addedReward != null);
    assert(removedReward != null);
    return removedReward(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult addedReward(_AddedReward value),
    TResult removedReward(_RemovedReward value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removedReward != null) {
      return removedReward(this);
    }
    return orElse();
  }
}

abstract class _RemovedReward implements RewardsCreationEvent {
  const factory _RemovedReward(Reward reward) = _$_RemovedReward;

  Reward get reward;
  @JsonKey(ignore: true)
  _$RemovedRewardCopyWith<_RemovedReward> get copyWith;
}

/// @nodoc
class _$RewardsCreationStateTearOff {
  const _$RewardsCreationStateTearOff();

// ignore: unused_element
  _RewardsCreationState call({@required KtSet<Reward> rewardsCreated}) {
    return _RewardsCreationState(
      rewardsCreated: rewardsCreated,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RewardsCreationState = _$RewardsCreationStateTearOff();

/// @nodoc
mixin _$RewardsCreationState {
  KtSet<Reward> get rewardsCreated;

  @JsonKey(ignore: true)
  $RewardsCreationStateCopyWith<RewardsCreationState> get copyWith;
}

/// @nodoc
abstract class $RewardsCreationStateCopyWith<$Res> {
  factory $RewardsCreationStateCopyWith(RewardsCreationState value,
          $Res Function(RewardsCreationState) then) =
      _$RewardsCreationStateCopyWithImpl<$Res>;
  $Res call({KtSet<Reward> rewardsCreated});
}

/// @nodoc
class _$RewardsCreationStateCopyWithImpl<$Res>
    implements $RewardsCreationStateCopyWith<$Res> {
  _$RewardsCreationStateCopyWithImpl(this._value, this._then);

  final RewardsCreationState _value;
  // ignore: unused_field
  final $Res Function(RewardsCreationState) _then;

  @override
  $Res call({
    Object rewardsCreated = freezed,
  }) {
    return _then(_value.copyWith(
      rewardsCreated: rewardsCreated == freezed
          ? _value.rewardsCreated
          : rewardsCreated as KtSet<Reward>,
    ));
  }
}

/// @nodoc
abstract class _$RewardsCreationStateCopyWith<$Res>
    implements $RewardsCreationStateCopyWith<$Res> {
  factory _$RewardsCreationStateCopyWith(_RewardsCreationState value,
          $Res Function(_RewardsCreationState) then) =
      __$RewardsCreationStateCopyWithImpl<$Res>;
  @override
  $Res call({KtSet<Reward> rewardsCreated});
}

/// @nodoc
class __$RewardsCreationStateCopyWithImpl<$Res>
    extends _$RewardsCreationStateCopyWithImpl<$Res>
    implements _$RewardsCreationStateCopyWith<$Res> {
  __$RewardsCreationStateCopyWithImpl(
      _RewardsCreationState _value, $Res Function(_RewardsCreationState) _then)
      : super(_value, (v) => _then(v as _RewardsCreationState));

  @override
  _RewardsCreationState get _value => super._value as _RewardsCreationState;

  @override
  $Res call({
    Object rewardsCreated = freezed,
  }) {
    return _then(_RewardsCreationState(
      rewardsCreated: rewardsCreated == freezed
          ? _value.rewardsCreated
          : rewardsCreated as KtSet<Reward>,
    ));
  }
}

/// @nodoc
class _$_RewardsCreationState implements _RewardsCreationState {
  const _$_RewardsCreationState({@required this.rewardsCreated})
      : assert(rewardsCreated != null);

  @override
  final KtSet<Reward> rewardsCreated;

  @override
  String toString() {
    return 'RewardsCreationState(rewardsCreated: $rewardsCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RewardsCreationState &&
            (identical(other.rewardsCreated, rewardsCreated) ||
                const DeepCollectionEquality()
                    .equals(other.rewardsCreated, rewardsCreated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rewardsCreated);

  @JsonKey(ignore: true)
  @override
  _$RewardsCreationStateCopyWith<_RewardsCreationState> get copyWith =>
      __$RewardsCreationStateCopyWithImpl<_RewardsCreationState>(
          this, _$identity);
}

abstract class _RewardsCreationState implements RewardsCreationState {
  const factory _RewardsCreationState(
      {@required KtSet<Reward> rewardsCreated}) = _$_RewardsCreationState;

  @override
  KtSet<Reward> get rewardsCreated;
  @override
  @JsonKey(ignore: true)
  _$RewardsCreationStateCopyWith<_RewardsCreationState> get copyWith;
}
