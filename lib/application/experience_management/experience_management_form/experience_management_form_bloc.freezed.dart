// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'experience_management_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExperienceManagementFormEventTearOff {
  const _$ExperienceManagementFormEventTearOff();

  _Initialized initialized(Option<Experience> experienceOption) {
    return _Initialized(
      experienceOption,
    );
  }

  _NameChanged nameChanged(String name) {
    return _NameChanged(
      name,
    );
  }

  _DescriptionChanged descriptionChanged(String description) {
    return _DescriptionChanged(
      description,
    );
  }

  _CoordinatesChanged coordinatesChanged({@required double latitude, @required double longitude}) {
    return _CoordinatesChanged(
      latitude: latitude,
      longitude: longitude,
    );
  }

  _DifficultyChanged difficultyChanged(int difficulty) {
    return _DifficultyChanged(
      difficulty,
    );
  }

  _ObjectivesChanged objectivesChanged(KtSet<PrimitiveObjective> objectives) {
    return _ObjectivesChanged(
      objectives,
    );
  }

  _RewardsChanged rewardsChanged(KtSet<PrimitiveReward> rewards) {
    return _RewardsChanged(
      rewards,
    );
  }

  _TagsChanged tagsChanged(KtSet<Tag> tags) {
    return _TagsChanged(
      tags,
    );
  }

  _Submitted submitted() {
    return const _Submitted();
  }
}

// ignore: unused_element
const $ExperienceManagementFormEvent = _$ExperienceManagementFormEventTearOff();

mixin _$ExperienceManagementFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result coordinatesChanged(double latitude, double longitude),
    @required Result difficultyChanged(int difficulty),
    @required Result objectivesChanged(KtSet<PrimitiveObjective> objectives),
    @required Result rewardsChanged(KtSet<PrimitiveReward> rewards),
    @required Result tagsChanged(KtSet<Tag> tags),
    @required Result submitted(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result coordinatesChanged(double latitude, double longitude),
    Result difficultyChanged(int difficulty),
    Result objectivesChanged(KtSet<PrimitiveObjective> objectives),
    Result rewardsChanged(KtSet<PrimitiveReward> rewards),
    Result tagsChanged(KtSet<Tag> tags),
    Result submitted(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result coordinatesChanged(_CoordinatesChanged value),
    @required Result difficultyChanged(_DifficultyChanged value),
    @required Result objectivesChanged(_ObjectivesChanged value),
    @required Result rewardsChanged(_RewardsChanged value),
    @required Result tagsChanged(_TagsChanged value),
    @required Result submitted(_Submitted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result coordinatesChanged(_CoordinatesChanged value),
    Result difficultyChanged(_DifficultyChanged value),
    Result objectivesChanged(_ObjectivesChanged value),
    Result rewardsChanged(_RewardsChanged value),
    Result tagsChanged(_TagsChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  });
}

abstract class $ExperienceManagementFormEventCopyWith<$Res> {
  factory $ExperienceManagementFormEventCopyWith(ExperienceManagementFormEvent value, $Res Function(ExperienceManagementFormEvent) then) = _$ExperienceManagementFormEventCopyWithImpl<$Res>;
}

class _$ExperienceManagementFormEventCopyWithImpl<$Res> implements $ExperienceManagementFormEventCopyWith<$Res> {
  _$ExperienceManagementFormEventCopyWithImpl(this._value, this._then);

  final ExperienceManagementFormEvent _value;
  // ignore: unused_field
  final $Res Function(ExperienceManagementFormEvent) _then;
}

abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(_Initialized value, $Res Function(_Initialized) then) =
  __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Experience> experienceOption});
}

class __$InitializedCopyWithImpl<$Res> extends _$ExperienceManagementFormEventCopyWithImpl<$Res>
  implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(_Initialized _value, $Res Function(_Initialized) _then)
    : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object experienceOption = freezed,
  }) {
    return _then(_Initialized(
      experienceOption == freezed
        ? _value.experienceOption
        : experienceOption as Option<Experience>,
    ));
  }
}

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.experienceOption)
    : assert(experienceOption != null);

  @override
  final Option<Experience> experienceOption;

  @override
  String toString() {
    return 'ExperienceManagementFormEvent.initialized(experienceOption: $experienceOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _Initialized &&
        (identical(other.experienceOption, experienceOption) ||
          const DeepCollectionEquality()
            .equals(other.experienceOption, experienceOption)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^
    const DeepCollectionEquality().hash(experienceOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
    __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result coordinatesChanged(double latitude, double longitude),
    @required Result difficultyChanged(int difficulty),
    @required Result objectivesChanged(KtSet<PrimitiveObjective> objectives),
    @required Result rewardsChanged(KtSet<PrimitiveReward> rewards),
    @required Result tagsChanged(KtSet<Tag> tags),
    @required Result submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(coordinatesChanged != null);
    assert(difficultyChanged != null);
    assert(objectivesChanged != null);
    assert(rewardsChanged != null);
    assert(tagsChanged != null);
    assert(submitted != null);
    return initialized(experienceOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result coordinatesChanged(double latitude, double longitude),
    Result difficultyChanged(int difficulty),
    Result objectivesChanged(KtSet<PrimitiveObjective> objectives),
    Result rewardsChanged(KtSet<PrimitiveReward> rewards),
    Result tagsChanged(KtSet<Tag> tags),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(experienceOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result coordinatesChanged(_CoordinatesChanged value),
    @required Result difficultyChanged(_DifficultyChanged value),
    @required Result objectivesChanged(_ObjectivesChanged value),
    @required Result rewardsChanged(_RewardsChanged value),
    @required Result tagsChanged(_TagsChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(coordinatesChanged != null);
    assert(difficultyChanged != null);
    assert(objectivesChanged != null);
    assert(rewardsChanged != null);
    assert(tagsChanged != null);
    assert(submitted != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result coordinatesChanged(_CoordinatesChanged value),
    Result difficultyChanged(_DifficultyChanged value),
    Result objectivesChanged(_ObjectivesChanged value),
    Result rewardsChanged(_RewardsChanged value),
    Result tagsChanged(_TagsChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ExperienceManagementFormEvent {
  const factory _Initialized(Option<Experience> experienceOption) =
  _$_Initialized;

  Option<Experience> get experienceOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(_NameChanged value, $Res Function(_NameChanged) then) =
  __$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

class __$NameChangedCopyWithImpl<$Res> extends _$ExperienceManagementFormEventCopyWithImpl<$Res>
  implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(_NameChanged _value, $Res Function(_NameChanged) _then)
    : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_NameChanged(
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'ExperienceManagementFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _NameChanged &&
        (identical(other.name, name) ||
          const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
    __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result coordinatesChanged(double latitude, double longitude),
    @required Result difficultyChanged(int difficulty),
    @required Result objectivesChanged(KtSet<PrimitiveObjective> objectives),
    @required Result rewardsChanged(KtSet<PrimitiveReward> rewards),
    @required Result tagsChanged(KtSet<Tag> tags),
    @required Result submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(coordinatesChanged != null);
    assert(difficultyChanged != null);
    assert(objectivesChanged != null);
    assert(rewardsChanged != null);
    assert(tagsChanged != null);
    assert(submitted != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result coordinatesChanged(double latitude, double longitude),
    Result difficultyChanged(int difficulty),
    Result objectivesChanged(KtSet<PrimitiveObjective> objectives),
    Result rewardsChanged(KtSet<PrimitiveReward> rewards),
    Result tagsChanged(KtSet<Tag> tags),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result coordinatesChanged(_CoordinatesChanged value),
    @required Result difficultyChanged(_DifficultyChanged value),
    @required Result objectivesChanged(_ObjectivesChanged value),
    @required Result rewardsChanged(_RewardsChanged value),
    @required Result tagsChanged(_TagsChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(coordinatesChanged != null);
    assert(difficultyChanged != null);
    assert(objectivesChanged != null);
    assert(rewardsChanged != null);
    assert(tagsChanged != null);
    assert(submitted != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result coordinatesChanged(_CoordinatesChanged value),
    Result difficultyChanged(_DifficultyChanged value),
    Result objectivesChanged(_ObjectivesChanged value),
    Result rewardsChanged(_RewardsChanged value),
    Result tagsChanged(_TagsChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements ExperienceManagementFormEvent {
  const factory _NameChanged(String name) = _$_NameChanged;

  String get name;
  _$NameChangedCopyWith<_NameChanged> get copyWith;
}

abstract class _$DescriptionChangedCopyWith<$Res> {
  factory _$DescriptionChangedCopyWith(_DescriptionChanged value, $Res Function(_DescriptionChanged) then) =
  __$DescriptionChangedCopyWithImpl<$Res>;
  $Res call({String description});
}

class __$DescriptionChangedCopyWithImpl<$Res> extends _$ExperienceManagementFormEventCopyWithImpl<$Res>
  implements _$DescriptionChangedCopyWith<$Res> {
  __$DescriptionChangedCopyWithImpl(_DescriptionChanged _value, $Res Function(_DescriptionChanged) _then)
    : super(_value, (v) => _then(v as _DescriptionChanged));

  @override
  _DescriptionChanged get _value => super._value as _DescriptionChanged;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(_DescriptionChanged(
      description == freezed ? _value.description : description as String,
    ));
  }
}

class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.description) : assert(description != null);

  @override
  final String description;

  @override
  String toString() {
    return 'ExperienceManagementFormEvent.descriptionChanged(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _DescriptionChanged &&
        (identical(other.description, description) ||
          const DeepCollectionEquality()
            .equals(other.description, description)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @override
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
    __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result coordinatesChanged(double latitude, double longitude),
    @required Result difficultyChanged(int difficulty),
    @required Result objectivesChanged(KtSet<PrimitiveObjective> objectives),
    @required Result rewardsChanged(KtSet<PrimitiveReward> rewards),
    @required Result tagsChanged(KtSet<Tag> tags),
    @required Result submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(coordinatesChanged != null);
    assert(difficultyChanged != null);
    assert(objectivesChanged != null);
    assert(rewardsChanged != null);
    assert(tagsChanged != null);
    assert(submitted != null);
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result coordinatesChanged(double latitude, double longitude),
    Result difficultyChanged(int difficulty),
    Result objectivesChanged(KtSet<PrimitiveObjective> objectives),
    Result rewardsChanged(KtSet<PrimitiveReward> rewards),
    Result tagsChanged(KtSet<Tag> tags),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result coordinatesChanged(_CoordinatesChanged value),
    @required Result difficultyChanged(_DifficultyChanged value),
    @required Result objectivesChanged(_ObjectivesChanged value),
    @required Result rewardsChanged(_RewardsChanged value),
    @required Result tagsChanged(_TagsChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(coordinatesChanged != null);
    assert(difficultyChanged != null);
    assert(objectivesChanged != null);
    assert(rewardsChanged != null);
    assert(tagsChanged != null);
    assert(submitted != null);
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result coordinatesChanged(_CoordinatesChanged value),
    Result difficultyChanged(_DifficultyChanged value),
    Result objectivesChanged(_ObjectivesChanged value),
    Result rewardsChanged(_RewardsChanged value),
    Result tagsChanged(_TagsChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements ExperienceManagementFormEvent {
  const factory _DescriptionChanged(String description) = _$_DescriptionChanged;

  String get description;
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith;
}

abstract class _$CoordinatesChangedCopyWith<$Res> {
  factory _$CoordinatesChangedCopyWith(_CoordinatesChanged value, $Res Function(_CoordinatesChanged) then) =
  __$CoordinatesChangedCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude});
}

class __$CoordinatesChangedCopyWithImpl<$Res> extends _$ExperienceManagementFormEventCopyWithImpl<$Res>
  implements _$CoordinatesChangedCopyWith<$Res> {
  __$CoordinatesChangedCopyWithImpl(_CoordinatesChanged _value, $Res Function(_CoordinatesChanged) _then)
    : super(_value, (v) => _then(v as _CoordinatesChanged));

  @override
  _CoordinatesChanged get _value => super._value as _CoordinatesChanged;

  @override
  $Res call({
    Object latitude = freezed,
    Object longitude = freezed,
  }) {
    return _then(_CoordinatesChanged(
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
    ));
  }
}

class _$_CoordinatesChanged implements _CoordinatesChanged {
  const _$_CoordinatesChanged({@required this.latitude, @required this.longitude})
      : assert(latitude != null),
        assert(longitude != null);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'ExperienceManagementFormEvent.coordinatesChanged(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _CoordinatesChanged &&
        (identical(other.latitude, latitude) ||
          const DeepCollectionEquality()
            .equals(other.latitude, latitude)) &&
        (identical(other.longitude, longitude) ||
          const DeepCollectionEquality()
            .equals(other.longitude, longitude)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^
    const DeepCollectionEquality().hash(latitude) ^
    const DeepCollectionEquality().hash(longitude);

  @override
  _$CoordinatesChangedCopyWith<_CoordinatesChanged> get copyWith =>
    __$CoordinatesChangedCopyWithImpl<_CoordinatesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result coordinatesChanged(double latitude, double longitude),
    @required Result difficultyChanged(int difficulty),
    @required Result objectivesChanged(KtSet<PrimitiveObjective> objectives),
    @required Result rewardsChanged(KtSet<PrimitiveReward> rewards),
    @required Result tagsChanged(KtSet<Tag> tags),
    @required Result submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(coordinatesChanged != null);
    assert(difficultyChanged != null);
    assert(objectivesChanged != null);
    assert(rewardsChanged != null);
    assert(tagsChanged != null);
    assert(submitted != null);
    return coordinatesChanged(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result coordinatesChanged(double latitude, double longitude),
    Result difficultyChanged(int difficulty),
    Result objectivesChanged(KtSet<PrimitiveObjective> objectives),
    Result rewardsChanged(KtSet<PrimitiveReward> rewards),
    Result tagsChanged(KtSet<Tag> tags),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (coordinatesChanged != null) {
      return coordinatesChanged(latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result coordinatesChanged(_CoordinatesChanged value),
    @required Result difficultyChanged(_DifficultyChanged value),
    @required Result objectivesChanged(_ObjectivesChanged value),
    @required Result rewardsChanged(_RewardsChanged value),
    @required Result tagsChanged(_TagsChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(coordinatesChanged != null);
    assert(difficultyChanged != null);
    assert(objectivesChanged != null);
    assert(rewardsChanged != null);
    assert(tagsChanged != null);
    assert(submitted != null);
    return coordinatesChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result coordinatesChanged(_CoordinatesChanged value),
    Result difficultyChanged(_DifficultyChanged value),
    Result objectivesChanged(_ObjectivesChanged value),
    Result rewardsChanged(_RewardsChanged value),
    Result tagsChanged(_TagsChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (coordinatesChanged != null) {
      return coordinatesChanged(this);
    }
    return orElse();
  }
}

abstract class _CoordinatesChanged implements ExperienceManagementFormEvent {
  const factory _CoordinatesChanged({@required double latitude,
    @required double longitude}) = _$_CoordinatesChanged;

  double get latitude;
  double get longitude;
  _$CoordinatesChangedCopyWith<_CoordinatesChanged> get copyWith;
}

abstract class _$DifficultyChangedCopyWith<$Res> {
  factory _$DifficultyChangedCopyWith(_DifficultyChanged value, $Res Function(_DifficultyChanged) then) =
  __$DifficultyChangedCopyWithImpl<$Res>;
  $Res call({int difficulty});
}

class __$DifficultyChangedCopyWithImpl<$Res> extends _$ExperienceManagementFormEventCopyWithImpl<$Res>
  implements _$DifficultyChangedCopyWith<$Res> {
  __$DifficultyChangedCopyWithImpl(_DifficultyChanged _value, $Res Function(_DifficultyChanged) _then)
    : super(_value, (v) => _then(v as _DifficultyChanged));

  @override
  _DifficultyChanged get _value => super._value as _DifficultyChanged;

  @override
  $Res call({
    Object difficulty = freezed,
  }) {
    return _then(_DifficultyChanged(
      difficulty == freezed ? _value.difficulty : difficulty as int,
    ));
  }
}

class _$_DifficultyChanged implements _DifficultyChanged {
  const _$_DifficultyChanged(this.difficulty) : assert(difficulty != null);

  @override
  final int difficulty;

  @override
  String toString() {
    return 'ExperienceManagementFormEvent.difficultyChanged(difficulty: $difficulty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _DifficultyChanged &&
        (identical(other.difficulty, difficulty) ||
          const DeepCollectionEquality()
            .equals(other.difficulty, difficulty)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(difficulty);

  @override
  _$DifficultyChangedCopyWith<_DifficultyChanged> get copyWith =>
    __$DifficultyChangedCopyWithImpl<_DifficultyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result coordinatesChanged(double latitude, double longitude),
    @required Result difficultyChanged(int difficulty),
    @required Result objectivesChanged(KtSet<PrimitiveObjective> objectives),
    @required Result rewardsChanged(KtSet<PrimitiveReward> rewards),
    @required Result tagsChanged(KtSet<Tag> tags),
    @required Result submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(coordinatesChanged != null);
    assert(difficultyChanged != null);
    assert(objectivesChanged != null);
    assert(rewardsChanged != null);
    assert(tagsChanged != null);
    assert(submitted != null);
    return difficultyChanged(difficulty);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result coordinatesChanged(double latitude, double longitude),
    Result difficultyChanged(int difficulty),
    Result objectivesChanged(KtSet<PrimitiveObjective> objectives),
    Result rewardsChanged(KtSet<PrimitiveReward> rewards),
    Result tagsChanged(KtSet<Tag> tags),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (difficultyChanged != null) {
      return difficultyChanged(difficulty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result coordinatesChanged(_CoordinatesChanged value),
    @required Result difficultyChanged(_DifficultyChanged value),
    @required Result objectivesChanged(_ObjectivesChanged value),
    @required Result rewardsChanged(_RewardsChanged value),
    @required Result tagsChanged(_TagsChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(coordinatesChanged != null);
    assert(difficultyChanged != null);
    assert(objectivesChanged != null);
    assert(rewardsChanged != null);
    assert(tagsChanged != null);
    assert(submitted != null);
    return difficultyChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result coordinatesChanged(_CoordinatesChanged value),
    Result difficultyChanged(_DifficultyChanged value),
    Result objectivesChanged(_ObjectivesChanged value),
    Result rewardsChanged(_RewardsChanged value),
    Result tagsChanged(_TagsChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (difficultyChanged != null) {
      return difficultyChanged(this);
    }
    return orElse();
  }
}

abstract class _DifficultyChanged implements ExperienceManagementFormEvent {
  const factory _DifficultyChanged(int difficulty) = _$_DifficultyChanged;

  int get difficulty;
  _$DifficultyChangedCopyWith<_DifficultyChanged> get copyWith;
}

abstract class _$ObjectivesChangedCopyWith<$Res> {
  factory _$ObjectivesChangedCopyWith(_ObjectivesChanged value, $Res Function(_ObjectivesChanged) then) =
  __$ObjectivesChangedCopyWithImpl<$Res>;
  $Res call({KtSet<PrimitiveObjective> objectives});
}

class __$ObjectivesChangedCopyWithImpl<$Res> extends _$ExperienceManagementFormEventCopyWithImpl<$Res>
  implements _$ObjectivesChangedCopyWith<$Res> {
  __$ObjectivesChangedCopyWithImpl(_ObjectivesChanged _value, $Res Function(_ObjectivesChanged) _then)
    : super(_value, (v) => _then(v as _ObjectivesChanged));

  @override
  _ObjectivesChanged get _value => super._value as _ObjectivesChanged;

  @override
  $Res call({
    Object objectives = freezed,
  }) {
    return _then(_ObjectivesChanged(
      objectives == freezed
        ? _value.objectives
        : objectives as KtSet<PrimitiveObjective>,
    ));
  }
}

class _$_ObjectivesChanged implements _ObjectivesChanged {
  const _$_ObjectivesChanged(this.objectives) : assert(objectives != null);

  @override
  final KtSet<PrimitiveObjective> objectives;

  @override
  String toString() {
    return 'ExperienceManagementFormEvent.objectivesChanged(objectives: $objectives)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _ObjectivesChanged &&
        (identical(other.objectives, objectives) ||
          const DeepCollectionEquality()
            .equals(other.objectives, objectives)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(objectives);

  @override
  _$ObjectivesChangedCopyWith<_ObjectivesChanged> get copyWith =>
    __$ObjectivesChangedCopyWithImpl<_ObjectivesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result coordinatesChanged(double latitude, double longitude),
    @required Result difficultyChanged(int difficulty),
    @required Result objectivesChanged(KtSet<PrimitiveObjective> objectives),
    @required Result rewardsChanged(KtSet<PrimitiveReward> rewards),
    @required Result tagsChanged(KtSet<Tag> tags),
    @required Result submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(coordinatesChanged != null);
    assert(difficultyChanged != null);
    assert(objectivesChanged != null);
    assert(rewardsChanged != null);
    assert(tagsChanged != null);
    assert(submitted != null);
    return objectivesChanged(objectives);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result coordinatesChanged(double latitude, double longitude),
    Result difficultyChanged(int difficulty),
    Result objectivesChanged(KtSet<PrimitiveObjective> objectives),
    Result rewardsChanged(KtSet<PrimitiveReward> rewards),
    Result tagsChanged(KtSet<Tag> tags),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (objectivesChanged != null) {
      return objectivesChanged(objectives);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result coordinatesChanged(_CoordinatesChanged value),
    @required Result difficultyChanged(_DifficultyChanged value),
    @required Result objectivesChanged(_ObjectivesChanged value),
    @required Result rewardsChanged(_RewardsChanged value),
    @required Result tagsChanged(_TagsChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(coordinatesChanged != null);
    assert(difficultyChanged != null);
    assert(objectivesChanged != null);
    assert(rewardsChanged != null);
    assert(tagsChanged != null);
    assert(submitted != null);
    return objectivesChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result coordinatesChanged(_CoordinatesChanged value),
    Result difficultyChanged(_DifficultyChanged value),
    Result objectivesChanged(_ObjectivesChanged value),
    Result rewardsChanged(_RewardsChanged value),
    Result tagsChanged(_TagsChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (objectivesChanged != null) {
      return objectivesChanged(this);
    }
    return orElse();
  }
}

abstract class _ObjectivesChanged implements ExperienceManagementFormEvent {
  const factory _ObjectivesChanged(KtSet<PrimitiveObjective> objectives) =
  _$_ObjectivesChanged;

  KtSet<PrimitiveObjective> get objectives;
  _$ObjectivesChangedCopyWith<_ObjectivesChanged> get copyWith;
}

abstract class _$RewardsChangedCopyWith<$Res> {
  factory _$RewardsChangedCopyWith(_RewardsChanged value, $Res Function(_RewardsChanged) then) =
  __$RewardsChangedCopyWithImpl<$Res>;
  $Res call({KtSet<PrimitiveReward> rewards});
}

class __$RewardsChangedCopyWithImpl<$Res> extends _$ExperienceManagementFormEventCopyWithImpl<$Res>
  implements _$RewardsChangedCopyWith<$Res> {
  __$RewardsChangedCopyWithImpl(_RewardsChanged _value, $Res Function(_RewardsChanged) _then)
    : super(_value, (v) => _then(v as _RewardsChanged));

  @override
  _RewardsChanged get _value => super._value as _RewardsChanged;

  @override
  $Res call({
    Object rewards = freezed,
  }) {
    return _then(_RewardsChanged(
      rewards == freezed ? _value.rewards : rewards as KtSet<PrimitiveReward>,
    ));
  }
}

class _$_RewardsChanged implements _RewardsChanged {
  const _$_RewardsChanged(this.rewards) : assert(rewards != null);

  @override
  final KtSet<PrimitiveReward> rewards;

  @override
  String toString() {
    return 'ExperienceManagementFormEvent.rewardsChanged(rewards: $rewards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _RewardsChanged &&
        (identical(other.rewards, rewards) ||
          const DeepCollectionEquality().equals(other.rewards, rewards)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(rewards);

  @override
  _$RewardsChangedCopyWith<_RewardsChanged> get copyWith =>
    __$RewardsChangedCopyWithImpl<_RewardsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result coordinatesChanged(double latitude, double longitude),
    @required Result difficultyChanged(int difficulty),
    @required Result objectivesChanged(KtSet<PrimitiveObjective> objectives),
    @required Result rewardsChanged(KtSet<PrimitiveReward> rewards),
    @required Result tagsChanged(KtSet<Tag> tags),
    @required Result submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(coordinatesChanged != null);
    assert(difficultyChanged != null);
    assert(objectivesChanged != null);
    assert(rewardsChanged != null);
    assert(tagsChanged != null);
    assert(submitted != null);
    return rewardsChanged(rewards);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result coordinatesChanged(double latitude, double longitude),
    Result difficultyChanged(int difficulty),
    Result objectivesChanged(KtSet<PrimitiveObjective> objectives),
    Result rewardsChanged(KtSet<PrimitiveReward> rewards),
    Result tagsChanged(KtSet<Tag> tags),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rewardsChanged != null) {
      return rewardsChanged(rewards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result coordinatesChanged(_CoordinatesChanged value),
    @required Result difficultyChanged(_DifficultyChanged value),
    @required Result objectivesChanged(_ObjectivesChanged value),
    @required Result rewardsChanged(_RewardsChanged value),
    @required Result tagsChanged(_TagsChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(coordinatesChanged != null);
    assert(difficultyChanged != null);
    assert(objectivesChanged != null);
    assert(rewardsChanged != null);
    assert(tagsChanged != null);
    assert(submitted != null);
    return rewardsChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result coordinatesChanged(_CoordinatesChanged value),
    Result difficultyChanged(_DifficultyChanged value),
    Result objectivesChanged(_ObjectivesChanged value),
    Result rewardsChanged(_RewardsChanged value),
    Result tagsChanged(_TagsChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rewardsChanged != null) {
      return rewardsChanged(this);
    }
    return orElse();
  }
}

abstract class _RewardsChanged implements ExperienceManagementFormEvent {
  const factory _RewardsChanged(KtSet<PrimitiveReward> rewards) =
  _$_RewardsChanged;

  KtSet<PrimitiveReward> get rewards;
  _$RewardsChangedCopyWith<_RewardsChanged> get copyWith;
}

abstract class _$TagsChangedCopyWith<$Res> {
  factory _$TagsChangedCopyWith(_TagsChanged value, $Res Function(_TagsChanged) then) =
  __$TagsChangedCopyWithImpl<$Res>;
  $Res call({KtSet<Tag> tags});
}

class __$TagsChangedCopyWithImpl<$Res> extends _$ExperienceManagementFormEventCopyWithImpl<$Res>
  implements _$TagsChangedCopyWith<$Res> {
  __$TagsChangedCopyWithImpl(_TagsChanged _value, $Res Function(_TagsChanged) _then)
    : super(_value, (v) => _then(v as _TagsChanged));

  @override
  _TagsChanged get _value => super._value as _TagsChanged;

  @override
  $Res call({
    Object tags = freezed,
  }) {
    return _then(_TagsChanged(
      tags == freezed ? _value.tags : tags as KtSet<Tag>,
    ));
  }
}

class _$_TagsChanged implements _TagsChanged {
  const _$_TagsChanged(this.tags) : assert(tags != null);

  @override
  final KtSet<Tag> tags;

  @override
  String toString() {
    return 'ExperienceManagementFormEvent.tagsChanged(tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _TagsChanged &&
        (identical(other.tags, tags) ||
          const DeepCollectionEquality().equals(other.tags, tags)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(tags);

  @override
  _$TagsChangedCopyWith<_TagsChanged> get copyWith =>
    __$TagsChangedCopyWithImpl<_TagsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result coordinatesChanged(double latitude, double longitude),
    @required Result difficultyChanged(int difficulty),
    @required Result objectivesChanged(KtSet<PrimitiveObjective> objectives),
    @required Result rewardsChanged(KtSet<PrimitiveReward> rewards),
    @required Result tagsChanged(KtSet<Tag> tags),
    @required Result submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(coordinatesChanged != null);
    assert(difficultyChanged != null);
    assert(objectivesChanged != null);
    assert(rewardsChanged != null);
    assert(tagsChanged != null);
    assert(submitted != null);
    return tagsChanged(tags);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result coordinatesChanged(double latitude, double longitude),
    Result difficultyChanged(int difficulty),
    Result objectivesChanged(KtSet<PrimitiveObjective> objectives),
    Result rewardsChanged(KtSet<PrimitiveReward> rewards),
    Result tagsChanged(KtSet<Tag> tags),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tagsChanged != null) {
      return tagsChanged(tags);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result coordinatesChanged(_CoordinatesChanged value),
    @required Result difficultyChanged(_DifficultyChanged value),
    @required Result objectivesChanged(_ObjectivesChanged value),
    @required Result rewardsChanged(_RewardsChanged value),
    @required Result tagsChanged(_TagsChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(coordinatesChanged != null);
    assert(difficultyChanged != null);
    assert(objectivesChanged != null);
    assert(rewardsChanged != null);
    assert(tagsChanged != null);
    assert(submitted != null);
    return tagsChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result coordinatesChanged(_CoordinatesChanged value),
    Result difficultyChanged(_DifficultyChanged value),
    Result objectivesChanged(_ObjectivesChanged value),
    Result rewardsChanged(_RewardsChanged value),
    Result tagsChanged(_TagsChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tagsChanged != null) {
      return tagsChanged(this);
    }
    return orElse();
  }
}

abstract class _TagsChanged implements ExperienceManagementFormEvent {
  const factory _TagsChanged(KtSet<Tag> tags) = _$_TagsChanged;

  KtSet<Tag> get tags;
  _$TagsChangedCopyWith<_TagsChanged> get copyWith;
}

abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(_Submitted value, $Res Function(_Submitted) then) =
  __$SubmittedCopyWithImpl<$Res>;
}

class __$SubmittedCopyWithImpl<$Res> extends _$ExperienceManagementFormEventCopyWithImpl<$Res>
  implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(_Submitted _value, $Res Function(_Submitted) _then)
    : super(_value, (v) => _then(v as _Submitted));

  @override
  _Submitted get _value => super._value as _Submitted;
}

class _$_Submitted implements _Submitted {
  const _$_Submitted();

  @override
  String toString() {
    return 'ExperienceManagementFormEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result coordinatesChanged(double latitude, double longitude),
    @required Result difficultyChanged(int difficulty),
    @required Result objectivesChanged(KtSet<PrimitiveObjective> objectives),
    @required Result rewardsChanged(KtSet<PrimitiveReward> rewards),
    @required Result tagsChanged(KtSet<Tag> tags),
    @required Result submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(coordinatesChanged != null);
    assert(difficultyChanged != null);
    assert(objectivesChanged != null);
    assert(rewardsChanged != null);
    assert(tagsChanged != null);
    assert(submitted != null);
    return submitted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result coordinatesChanged(double latitude, double longitude),
    Result difficultyChanged(int difficulty),
    Result objectivesChanged(KtSet<PrimitiveObjective> objectives),
    Result rewardsChanged(KtSet<PrimitiveReward> rewards),
    Result tagsChanged(KtSet<Tag> tags),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result coordinatesChanged(_CoordinatesChanged value),
    @required Result difficultyChanged(_DifficultyChanged value),
    @required Result objectivesChanged(_ObjectivesChanged value),
    @required Result rewardsChanged(_RewardsChanged value),
    @required Result tagsChanged(_TagsChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(coordinatesChanged != null);
    assert(difficultyChanged != null);
    assert(objectivesChanged != null);
    assert(rewardsChanged != null);
    assert(tagsChanged != null);
    assert(submitted != null);
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result coordinatesChanged(_CoordinatesChanged value),
    Result difficultyChanged(_DifficultyChanged value),
    Result objectivesChanged(_ObjectivesChanged value),
    Result rewardsChanged(_RewardsChanged value),
    Result tagsChanged(_TagsChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements ExperienceManagementFormEvent {
  const factory _Submitted() = _$_Submitted;
}

class _$ExperienceManagementFormStateTearOff {
  const _$ExperienceManagementFormStateTearOff();

  _ExperienceManagementFormState call({@required Experience experience,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSubmitting,
    @required Option<Either<Failure, Unit>> failureOrSuccessOption}) {
    return _ExperienceManagementFormState(
      experience: experience,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSubmitting: isSubmitting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $ExperienceManagementFormState = _$ExperienceManagementFormStateTearOff();

mixin _$ExperienceManagementFormState {
  Experience get experience;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSubmitting;
  Option<Either<Failure, Unit>> get failureOrSuccessOption;

  $ExperienceManagementFormStateCopyWith<ExperienceManagementFormState>
  get copyWith;
}

abstract class $ExperienceManagementFormStateCopyWith<$Res> {
  factory $ExperienceManagementFormStateCopyWith(ExperienceManagementFormState value,
    $Res Function(ExperienceManagementFormState) then) =
  _$ExperienceManagementFormStateCopyWithImpl<$Res>;
  
  $Res call({Experience experience,
    bool showErrorMessages,
    bool isEditing,
    bool isSubmitting,
    Option<Either<Failure, Unit>> failureOrSuccessOption});

  $ExperienceCopyWith<$Res> get experience;
}

class _$ExperienceManagementFormStateCopyWithImpl<$Res>
  implements $ExperienceManagementFormStateCopyWith<$Res> {
  _$ExperienceManagementFormStateCopyWithImpl(this._value, this._then);

  final ExperienceManagementFormState _value;
  // ignore: unused_field
  final $Res Function(ExperienceManagementFormState) _then;

  @override
  $Res call({
    Object experience = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      experience:
      experience == freezed ? _value.experience : experience as Experience,
      showErrorMessages: showErrorMessages == freezed
        ? _value.showErrorMessages
        : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSubmitting:
      isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
        ? _value.failureOrSuccessOption
        : failureOrSuccessOption as Option<Either<Failure, Unit>>,
    ));
  }

  @override
  $ExperienceCopyWith<$Res> get experience {
    if (_value.experience == null) {
      return null;
    }
    return $ExperienceCopyWith<$Res>(_value.experience, (value) {
      return _then(_value.copyWith(experience: value));
    });
  }
}

abstract class _$ExperienceManagementFormStateCopyWith<$Res>
  implements $ExperienceManagementFormStateCopyWith<$Res> {
  factory _$ExperienceManagementFormStateCopyWith(_ExperienceManagementFormState value,
    $Res Function(_ExperienceManagementFormState) then) =
  __$ExperienceManagementFormStateCopyWithImpl<$Res>;
  @override
  $Res call({Experience experience,
    bool showErrorMessages,
    bool isEditing,
    bool isSubmitting,
    Option<Either<Failure, Unit>> failureOrSuccessOption});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

class __$ExperienceManagementFormStateCopyWithImpl<$Res> extends _$ExperienceManagementFormStateCopyWithImpl<$Res>
  implements _$ExperienceManagementFormStateCopyWith<$Res> {
  __$ExperienceManagementFormStateCopyWithImpl(_ExperienceManagementFormState _value,
    $Res Function(_ExperienceManagementFormState) _then)
      : super(_value, (v) => _then(v as _ExperienceManagementFormState));

  @override
  _ExperienceManagementFormState get _value =>
    super._value as _ExperienceManagementFormState;

  @override
  $Res call({
    Object experience = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_ExperienceManagementFormState(
      experience:
      experience == freezed ? _value.experience : experience as Experience,
      showErrorMessages: showErrorMessages == freezed
        ? _value.showErrorMessages
        : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSubmitting:
      isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
        ? _value.failureOrSuccessOption
        : failureOrSuccessOption as Option<Either<Failure, Unit>>,
    ));
  }
}

class _$_ExperienceManagementFormState
  implements _ExperienceManagementFormState {
  const _$_ExperienceManagementFormState({@required this.experience,
    @required this.showErrorMessages,
    @required this.isEditing,
    @required this.isSubmitting,
    @required this.failureOrSuccessOption})
      : assert(experience != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSubmitting != null),
        assert(failureOrSuccessOption != null);

  @override
  final Experience experience;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Failure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'ExperienceManagementFormState(experience: $experience, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExperienceManagementFormState &&
          (identical(other.experience, experience) ||
            const DeepCollectionEquality()
              .equals(other.experience, experience)) &&
          (identical(other.showErrorMessages, showErrorMessages) ||
            const DeepCollectionEquality()
              .equals(other.showErrorMessages, showErrorMessages)) &&
          (identical(other.isEditing, isEditing) ||
            const DeepCollectionEquality()
              .equals(other.isEditing, isEditing)) &&
          (identical(other.isSubmitting, isSubmitting) ||
            const DeepCollectionEquality()
              .equals(other.isSubmitting, isSubmitting)) &&
          (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
            const DeepCollectionEquality().equals(
              other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(experience) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @override
  _$ExperienceManagementFormStateCopyWith<_ExperienceManagementFormState>
  get copyWith =>
    __$ExperienceManagementFormStateCopyWithImpl<
      _ExperienceManagementFormState>(this, _$identity);
}

abstract class _ExperienceManagementFormState
  implements ExperienceManagementFormState {
  const factory _ExperienceManagementFormState({@required Experience experience,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSubmitting,
    @required Option<Either<Failure, Unit>> failureOrSuccessOption}) =
  _$_ExperienceManagementFormState;

  @override
  Experience get experience;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSubmitting;
  @override
  Option<Either<Failure, Unit>> get failureOrSuccessOption;
  @override
  _$ExperienceManagementFormStateCopyWith<_ExperienceManagementFormState>
  get copyWith;
}
