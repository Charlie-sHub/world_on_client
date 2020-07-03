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

  _NameChange nameChange(String name) {
    return _NameChange(
      name,
    );
  }

  _DescriptionChange descriptionChange(String description) {
    return _DescriptionChange(
      description,
    );
  }

  _CoordinatesChange coordinatesChange({@required double latitude, @required double longitude}) {
    return _CoordinatesChange(
      latitude: latitude,
      longitude: longitude,
    );
  }

  _DifficultyChange difficultyChange(int difficulty) {
    return _DifficultyChange(
      difficulty,
    );
  }

  _ObjectivesChange objectivesChange(List<PrimitiveObjective> objectives) {
    return _ObjectivesChange(
      objectives,
    );
  }

  _RewardsChange rewardsChange(List<PrimitiveReward> rewards) {
    return _RewardsChange(
      rewards,
    );
  }

  _TagsChange tagsChange(Set<Tag> tags) {
    return _TagsChange(
      tags,
    );
  }

  _Submit submit() {
    return const _Submit();
  }
}

// ignore: unused_element
const $ExperienceManagementFormEvent = _$ExperienceManagementFormEventTearOff();

mixin _$ExperienceManagementFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result nameChange(String name),
    @required Result descriptionChange(String description),
    @required Result coordinatesChange(double latitude, double longitude),
    @required Result difficultyChange(int difficulty),
    @required Result objectivesChange(List<PrimitiveObjective> objectives),
    @required Result rewardsChange(List<PrimitiveReward> rewards),
    @required Result tagsChange(Set<Tag> tags),
    @required Result submit(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result nameChange(String name),
    Result descriptionChange(String description),
    Result coordinatesChange(double latitude, double longitude),
    Result difficultyChange(int difficulty),
    Result objectivesChange(List<PrimitiveObjective> objectives),
    Result rewardsChange(List<PrimitiveReward> rewards),
    Result tagsChange(Set<Tag> tags),
    Result submit(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChange(_NameChange value),
    @required Result descriptionChange(_DescriptionChange value),
    @required Result coordinatesChange(_CoordinatesChange value),
    @required Result difficultyChange(_DifficultyChange value),
    @required Result objectivesChange(_ObjectivesChange value),
    @required Result rewardsChange(_RewardsChange value),
    @required Result tagsChange(_TagsChange value),
    @required Result submit(_Submit value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChange(_NameChange value),
    Result descriptionChange(_DescriptionChange value),
    Result coordinatesChange(_CoordinatesChange value),
    Result difficultyChange(_DifficultyChange value),
    Result objectivesChange(_ObjectivesChange value),
    Result rewardsChange(_RewardsChange value),
    Result tagsChange(_TagsChange value),
    Result submit(_Submit value),
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
  factory _$InitializedCopyWith(_Initialized value, $Res Function(_Initialized) then) = __$InitializedCopyWithImpl<$Res>;

  $Res call({Option<Experience> experienceOption});
}

class __$InitializedCopyWithImpl<$Res> extends _$ExperienceManagementFormEventCopyWithImpl<$Res> implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(_Initialized _value, $Res Function(_Initialized) _then) : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object experienceOption = freezed,
  }) {
    return _then(_Initialized(
      experienceOption == freezed ? _value.experienceOption : experienceOption as Option<Experience>,
    ));
  }
}

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.experienceOption) : assert(experienceOption != null);

  @override
  final Option<Experience> experienceOption;

  @override
  String toString() {
    return 'ExperienceManagementFormEvent.initialized(experienceOption: $experienceOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized && (identical(other.experienceOption, experienceOption) || const DeepCollectionEquality().equals(other.experienceOption, experienceOption)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experienceOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith => __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result nameChange(String name),
    @required Result descriptionChange(String description),
    @required Result coordinatesChange(double latitude, double longitude),
    @required Result difficultyChange(int difficulty),
    @required Result objectivesChange(List<PrimitiveObjective> objectives),
    @required Result rewardsChange(List<PrimitiveReward> rewards),
    @required Result tagsChange(Set<Tag> tags),
    @required Result submit(),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(coordinatesChange != null);
    assert(difficultyChange != null);
    assert(objectivesChange != null);
    assert(rewardsChange != null);
    assert(tagsChange != null);
    assert(submit != null);
    return initialized(experienceOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result nameChange(String name),
    Result descriptionChange(String description),
    Result coordinatesChange(double latitude, double longitude),
    Result difficultyChange(int difficulty),
    Result objectivesChange(List<PrimitiveObjective> objectives),
    Result rewardsChange(List<PrimitiveReward> rewards),
    Result tagsChange(Set<Tag> tags),
    Result submit(),
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
    @required Result nameChange(_NameChange value),
    @required Result descriptionChange(_DescriptionChange value),
    @required Result coordinatesChange(_CoordinatesChange value),
    @required Result difficultyChange(_DifficultyChange value),
    @required Result objectivesChange(_ObjectivesChange value),
    @required Result rewardsChange(_RewardsChange value),
    @required Result tagsChange(_TagsChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(coordinatesChange != null);
    assert(difficultyChange != null);
    assert(objectivesChange != null);
    assert(rewardsChange != null);
    assert(tagsChange != null);
    assert(submit != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChange(_NameChange value),
    Result descriptionChange(_DescriptionChange value),
    Result coordinatesChange(_CoordinatesChange value),
    Result difficultyChange(_DifficultyChange value),
    Result objectivesChange(_ObjectivesChange value),
    Result rewardsChange(_RewardsChange value),
    Result tagsChange(_TagsChange value),
    Result submit(_Submit value),
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
  const factory _Initialized(Option<Experience> experienceOption) = _$_Initialized;

  Option<Experience> get experienceOption;

  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$NameChangeCopyWith<$Res> {
  factory _$NameChangeCopyWith(_NameChange value, $Res Function(_NameChange) then) = __$NameChangeCopyWithImpl<$Res>;

  $Res call({String name});
}

class __$NameChangeCopyWithImpl<$Res> extends _$ExperienceManagementFormEventCopyWithImpl<$Res> implements _$NameChangeCopyWith<$Res> {
  __$NameChangeCopyWithImpl(_NameChange _value, $Res Function(_NameChange) _then) : super(_value, (v) => _then(v as _NameChange));

  @override
  _NameChange get _value => super._value as _NameChange;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_NameChange(
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$_NameChange implements _NameChange {
  const _$_NameChange(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'ExperienceManagementFormEvent.nameChange(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NameChange && (identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$NameChangeCopyWith<_NameChange> get copyWith => __$NameChangeCopyWithImpl<_NameChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result nameChange(String name),
    @required Result descriptionChange(String description),
    @required Result coordinatesChange(double latitude, double longitude),
    @required Result difficultyChange(int difficulty),
    @required Result objectivesChange(List<PrimitiveObjective> objectives),
    @required Result rewardsChange(List<PrimitiveReward> rewards),
    @required Result tagsChange(Set<Tag> tags),
    @required Result submit(),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(coordinatesChange != null);
    assert(difficultyChange != null);
    assert(objectivesChange != null);
    assert(rewardsChange != null);
    assert(tagsChange != null);
    assert(submit != null);
    return nameChange(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result nameChange(String name),
    Result descriptionChange(String description),
    Result coordinatesChange(double latitude, double longitude),
    Result difficultyChange(int difficulty),
    Result objectivesChange(List<PrimitiveObjective> objectives),
    Result rewardsChange(List<PrimitiveReward> rewards),
    Result tagsChange(Set<Tag> tags),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChange != null) {
      return nameChange(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChange(_NameChange value),
    @required Result descriptionChange(_DescriptionChange value),
    @required Result coordinatesChange(_CoordinatesChange value),
    @required Result difficultyChange(_DifficultyChange value),
    @required Result objectivesChange(_ObjectivesChange value),
    @required Result rewardsChange(_RewardsChange value),
    @required Result tagsChange(_TagsChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(coordinatesChange != null);
    assert(difficultyChange != null);
    assert(objectivesChange != null);
    assert(rewardsChange != null);
    assert(tagsChange != null);
    assert(submit != null);
    return nameChange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChange(_NameChange value),
    Result descriptionChange(_DescriptionChange value),
    Result coordinatesChange(_CoordinatesChange value),
    Result difficultyChange(_DifficultyChange value),
    Result objectivesChange(_ObjectivesChange value),
    Result rewardsChange(_RewardsChange value),
    Result tagsChange(_TagsChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChange != null) {
      return nameChange(this);
    }
    return orElse();
  }
}

abstract class _NameChange implements ExperienceManagementFormEvent {
  const factory _NameChange(String name) = _$_NameChange;

  String get name;

  _$NameChangeCopyWith<_NameChange> get copyWith;
}

abstract class _$DescriptionChangeCopyWith<$Res> {
  factory _$DescriptionChangeCopyWith(_DescriptionChange value, $Res Function(_DescriptionChange) then) = __$DescriptionChangeCopyWithImpl<$Res>;

  $Res call({String description});
}

class __$DescriptionChangeCopyWithImpl<$Res> extends _$ExperienceManagementFormEventCopyWithImpl<$Res> implements _$DescriptionChangeCopyWith<$Res> {
  __$DescriptionChangeCopyWithImpl(_DescriptionChange _value, $Res Function(_DescriptionChange) _then) : super(_value, (v) => _then(v as _DescriptionChange));

  @override
  _DescriptionChange get _value => super._value as _DescriptionChange;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(_DescriptionChange(
      description == freezed ? _value.description : description as String,
    ));
  }
}

class _$_DescriptionChange implements _DescriptionChange {
  const _$_DescriptionChange(this.description) : assert(description != null);

  @override
  final String description;

  @override
  String toString() {
    return 'ExperienceManagementFormEvent.descriptionChange(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DescriptionChange && (identical(other.description, description) || const DeepCollectionEquality().equals(other.description, description)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @override
  _$DescriptionChangeCopyWith<_DescriptionChange> get copyWith => __$DescriptionChangeCopyWithImpl<_DescriptionChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result nameChange(String name),
    @required Result descriptionChange(String description),
    @required Result coordinatesChange(double latitude, double longitude),
    @required Result difficultyChange(int difficulty),
    @required Result objectivesChange(List<PrimitiveObjective> objectives),
    @required Result rewardsChange(List<PrimitiveReward> rewards),
    @required Result tagsChange(Set<Tag> tags),
    @required Result submit(),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(coordinatesChange != null);
    assert(difficultyChange != null);
    assert(objectivesChange != null);
    assert(rewardsChange != null);
    assert(tagsChange != null);
    assert(submit != null);
    return descriptionChange(description);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result nameChange(String name),
    Result descriptionChange(String description),
    Result coordinatesChange(double latitude, double longitude),
    Result difficultyChange(int difficulty),
    Result objectivesChange(List<PrimitiveObjective> objectives),
    Result rewardsChange(List<PrimitiveReward> rewards),
    Result tagsChange(Set<Tag> tags),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChange != null) {
      return descriptionChange(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChange(_NameChange value),
    @required Result descriptionChange(_DescriptionChange value),
    @required Result coordinatesChange(_CoordinatesChange value),
    @required Result difficultyChange(_DifficultyChange value),
    @required Result objectivesChange(_ObjectivesChange value),
    @required Result rewardsChange(_RewardsChange value),
    @required Result tagsChange(_TagsChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(coordinatesChange != null);
    assert(difficultyChange != null);
    assert(objectivesChange != null);
    assert(rewardsChange != null);
    assert(tagsChange != null);
    assert(submit != null);
    return descriptionChange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChange(_NameChange value),
    Result descriptionChange(_DescriptionChange value),
    Result coordinatesChange(_CoordinatesChange value),
    Result difficultyChange(_DifficultyChange value),
    Result objectivesChange(_ObjectivesChange value),
    Result rewardsChange(_RewardsChange value),
    Result tagsChange(_TagsChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChange != null) {
      return descriptionChange(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChange implements ExperienceManagementFormEvent {
  const factory _DescriptionChange(String description) = _$_DescriptionChange;

  String get description;

  _$DescriptionChangeCopyWith<_DescriptionChange> get copyWith;
}

abstract class _$CoordinatesChangeCopyWith<$Res> {
  factory _$CoordinatesChangeCopyWith(_CoordinatesChange value, $Res Function(_CoordinatesChange) then) = __$CoordinatesChangeCopyWithImpl<$Res>;

  $Res call({double latitude, double longitude});
}

class __$CoordinatesChangeCopyWithImpl<$Res> extends _$ExperienceManagementFormEventCopyWithImpl<$Res> implements _$CoordinatesChangeCopyWith<$Res> {
  __$CoordinatesChangeCopyWithImpl(_CoordinatesChange _value, $Res Function(_CoordinatesChange) _then) : super(_value, (v) => _then(v as _CoordinatesChange));

  @override
  _CoordinatesChange get _value => super._value as _CoordinatesChange;

  @override
  $Res call({
    Object latitude = freezed,
    Object longitude = freezed,
  }) {
    return _then(_CoordinatesChange(
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
    ));
  }
}

class _$_CoordinatesChange implements _CoordinatesChange {
  const _$_CoordinatesChange({@required this.latitude, @required this.longitude})
      : assert(latitude != null),
        assert(longitude != null);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'ExperienceManagementFormEvent.coordinatesChange(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CoordinatesChange &&
            (identical(other.latitude, latitude) || const DeepCollectionEquality().equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) || const DeepCollectionEquality().equals(other.longitude, longitude)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(latitude) ^ const DeepCollectionEquality().hash(longitude);

  @override
  _$CoordinatesChangeCopyWith<_CoordinatesChange> get copyWith => __$CoordinatesChangeCopyWithImpl<_CoordinatesChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result nameChange(String name),
    @required Result descriptionChange(String description),
    @required Result coordinatesChange(double latitude, double longitude),
    @required Result difficultyChange(int difficulty),
    @required Result objectivesChange(List<PrimitiveObjective> objectives),
    @required Result rewardsChange(List<PrimitiveReward> rewards),
    @required Result tagsChange(Set<Tag> tags),
    @required Result submit(),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(coordinatesChange != null);
    assert(difficultyChange != null);
    assert(objectivesChange != null);
    assert(rewardsChange != null);
    assert(tagsChange != null);
    assert(submit != null);
    return coordinatesChange(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result nameChange(String name),
    Result descriptionChange(String description),
    Result coordinatesChange(double latitude, double longitude),
    Result difficultyChange(int difficulty),
    Result objectivesChange(List<PrimitiveObjective> objectives),
    Result rewardsChange(List<PrimitiveReward> rewards),
    Result tagsChange(Set<Tag> tags),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (coordinatesChange != null) {
      return coordinatesChange(latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChange(_NameChange value),
    @required Result descriptionChange(_DescriptionChange value),
    @required Result coordinatesChange(_CoordinatesChange value),
    @required Result difficultyChange(_DifficultyChange value),
    @required Result objectivesChange(_ObjectivesChange value),
    @required Result rewardsChange(_RewardsChange value),
    @required Result tagsChange(_TagsChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(coordinatesChange != null);
    assert(difficultyChange != null);
    assert(objectivesChange != null);
    assert(rewardsChange != null);
    assert(tagsChange != null);
    assert(submit != null);
    return coordinatesChange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChange(_NameChange value),
    Result descriptionChange(_DescriptionChange value),
    Result coordinatesChange(_CoordinatesChange value),
    Result difficultyChange(_DifficultyChange value),
    Result objectivesChange(_ObjectivesChange value),
    Result rewardsChange(_RewardsChange value),
    Result tagsChange(_TagsChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (coordinatesChange != null) {
      return coordinatesChange(this);
    }
    return orElse();
  }
}

abstract class _CoordinatesChange implements ExperienceManagementFormEvent {
  const factory _CoordinatesChange({@required double latitude, @required double longitude}) = _$_CoordinatesChange;

  double get latitude;

  double get longitude;

  _$CoordinatesChangeCopyWith<_CoordinatesChange> get copyWith;
}

abstract class _$DifficultyChangeCopyWith<$Res> {
  factory _$DifficultyChangeCopyWith(_DifficultyChange value, $Res Function(_DifficultyChange) then) = __$DifficultyChangeCopyWithImpl<$Res>;

  $Res call({int difficulty});
}

class __$DifficultyChangeCopyWithImpl<$Res> extends _$ExperienceManagementFormEventCopyWithImpl<$Res> implements _$DifficultyChangeCopyWith<$Res> {
  __$DifficultyChangeCopyWithImpl(_DifficultyChange _value, $Res Function(_DifficultyChange) _then) : super(_value, (v) => _then(v as _DifficultyChange));

  @override
  _DifficultyChange get _value => super._value as _DifficultyChange;

  @override
  $Res call({
    Object difficulty = freezed,
  }) {
    return _then(_DifficultyChange(
      difficulty == freezed ? _value.difficulty : difficulty as int,
    ));
  }
}

class _$_DifficultyChange implements _DifficultyChange {
  const _$_DifficultyChange(this.difficulty) : assert(difficulty != null);

  @override
  final int difficulty;

  @override
  String toString() {
    return 'ExperienceManagementFormEvent.difficultyChange(difficulty: $difficulty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DifficultyChange && (identical(other.difficulty, difficulty) || const DeepCollectionEquality().equals(other.difficulty, difficulty)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(difficulty);

  @override
  _$DifficultyChangeCopyWith<_DifficultyChange> get copyWith => __$DifficultyChangeCopyWithImpl<_DifficultyChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result nameChange(String name),
    @required Result descriptionChange(String description),
    @required Result coordinatesChange(double latitude, double longitude),
    @required Result difficultyChange(int difficulty),
    @required Result objectivesChange(List<PrimitiveObjective> objectives),
    @required Result rewardsChange(List<PrimitiveReward> rewards),
    @required Result tagsChange(Set<Tag> tags),
    @required Result submit(),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(coordinatesChange != null);
    assert(difficultyChange != null);
    assert(objectivesChange != null);
    assert(rewardsChange != null);
    assert(tagsChange != null);
    assert(submit != null);
    return difficultyChange(difficulty);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result nameChange(String name),
    Result descriptionChange(String description),
    Result coordinatesChange(double latitude, double longitude),
    Result difficultyChange(int difficulty),
    Result objectivesChange(List<PrimitiveObjective> objectives),
    Result rewardsChange(List<PrimitiveReward> rewards),
    Result tagsChange(Set<Tag> tags),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (difficultyChange != null) {
      return difficultyChange(difficulty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChange(_NameChange value),
    @required Result descriptionChange(_DescriptionChange value),
    @required Result coordinatesChange(_CoordinatesChange value),
    @required Result difficultyChange(_DifficultyChange value),
    @required Result objectivesChange(_ObjectivesChange value),
    @required Result rewardsChange(_RewardsChange value),
    @required Result tagsChange(_TagsChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(coordinatesChange != null);
    assert(difficultyChange != null);
    assert(objectivesChange != null);
    assert(rewardsChange != null);
    assert(tagsChange != null);
    assert(submit != null);
    return difficultyChange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChange(_NameChange value),
    Result descriptionChange(_DescriptionChange value),
    Result coordinatesChange(_CoordinatesChange value),
    Result difficultyChange(_DifficultyChange value),
    Result objectivesChange(_ObjectivesChange value),
    Result rewardsChange(_RewardsChange value),
    Result tagsChange(_TagsChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (difficultyChange != null) {
      return difficultyChange(this);
    }
    return orElse();
  }
}

abstract class _DifficultyChange implements ExperienceManagementFormEvent {
  const factory _DifficultyChange(int difficulty) = _$_DifficultyChange;

  int get difficulty;

  _$DifficultyChangeCopyWith<_DifficultyChange> get copyWith;
}

abstract class _$ObjectivesChangeCopyWith<$Res> {
  factory _$ObjectivesChangeCopyWith(_ObjectivesChange value, $Res Function(_ObjectivesChange) then) = __$ObjectivesChangeCopyWithImpl<$Res>;

  $Res call({List<PrimitiveObjective> objectives});
}

class __$ObjectivesChangeCopyWithImpl<$Res> extends _$ExperienceManagementFormEventCopyWithImpl<$Res> implements _$ObjectivesChangeCopyWith<$Res> {
  __$ObjectivesChangeCopyWithImpl(_ObjectivesChange _value, $Res Function(_ObjectivesChange) _then) : super(_value, (v) => _then(v as _ObjectivesChange));

  @override
  _ObjectivesChange get _value => super._value as _ObjectivesChange;

  @override
  $Res call({
    Object objectives = freezed,
  }) {
    return _then(_ObjectivesChange(
      objectives == freezed ? _value.objectives : objectives as List<PrimitiveObjective>,
    ));
  }
}

class _$_ObjectivesChange implements _ObjectivesChange {
  const _$_ObjectivesChange(this.objectives) : assert(objectives != null);

  @override
  final List<PrimitiveObjective> objectives;

  @override
  String toString() {
    return 'ExperienceManagementFormEvent.objectivesChange(objectives: $objectives)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ObjectivesChange && (identical(other.objectives, objectives) || const DeepCollectionEquality().equals(other.objectives, objectives)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(objectives);

  @override
  _$ObjectivesChangeCopyWith<_ObjectivesChange> get copyWith => __$ObjectivesChangeCopyWithImpl<_ObjectivesChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result nameChange(String name),
    @required Result descriptionChange(String description),
    @required Result coordinatesChange(double latitude, double longitude),
    @required Result difficultyChange(int difficulty),
    @required Result objectivesChange(List<PrimitiveObjective> objectives),
    @required Result rewardsChange(List<PrimitiveReward> rewards),
    @required Result tagsChange(Set<Tag> tags),
    @required Result submit(),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(coordinatesChange != null);
    assert(difficultyChange != null);
    assert(objectivesChange != null);
    assert(rewardsChange != null);
    assert(tagsChange != null);
    assert(submit != null);
    return objectivesChange(objectives);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result nameChange(String name),
    Result descriptionChange(String description),
    Result coordinatesChange(double latitude, double longitude),
    Result difficultyChange(int difficulty),
    Result objectivesChange(List<PrimitiveObjective> objectives),
    Result rewardsChange(List<PrimitiveReward> rewards),
    Result tagsChange(Set<Tag> tags),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (objectivesChange != null) {
      return objectivesChange(objectives);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChange(_NameChange value),
    @required Result descriptionChange(_DescriptionChange value),
    @required Result coordinatesChange(_CoordinatesChange value),
    @required Result difficultyChange(_DifficultyChange value),
    @required Result objectivesChange(_ObjectivesChange value),
    @required Result rewardsChange(_RewardsChange value),
    @required Result tagsChange(_TagsChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(coordinatesChange != null);
    assert(difficultyChange != null);
    assert(objectivesChange != null);
    assert(rewardsChange != null);
    assert(tagsChange != null);
    assert(submit != null);
    return objectivesChange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChange(_NameChange value),
    Result descriptionChange(_DescriptionChange value),
    Result coordinatesChange(_CoordinatesChange value),
    Result difficultyChange(_DifficultyChange value),
    Result objectivesChange(_ObjectivesChange value),
    Result rewardsChange(_RewardsChange value),
    Result tagsChange(_TagsChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (objectivesChange != null) {
      return objectivesChange(this);
    }
    return orElse();
  }
}

abstract class _ObjectivesChange implements ExperienceManagementFormEvent {
  const factory _ObjectivesChange(List<PrimitiveObjective> objectives) = _$_ObjectivesChange;

  List<PrimitiveObjective> get objectives;

  _$ObjectivesChangeCopyWith<_ObjectivesChange> get copyWith;
}

abstract class _$RewardsChangeCopyWith<$Res> {
  factory _$RewardsChangeCopyWith(_RewardsChange value, $Res Function(_RewardsChange) then) = __$RewardsChangeCopyWithImpl<$Res>;

  $Res call({List<PrimitiveReward> rewards});
}

class __$RewardsChangeCopyWithImpl<$Res> extends _$ExperienceManagementFormEventCopyWithImpl<$Res> implements _$RewardsChangeCopyWith<$Res> {
  __$RewardsChangeCopyWithImpl(_RewardsChange _value, $Res Function(_RewardsChange) _then) : super(_value, (v) => _then(v as _RewardsChange));

  @override
  _RewardsChange get _value => super._value as _RewardsChange;

  @override
  $Res call({
    Object rewards = freezed,
  }) {
    return _then(_RewardsChange(
      rewards == freezed ? _value.rewards : rewards as List<PrimitiveReward>,
    ));
  }
}

class _$_RewardsChange implements _RewardsChange {
  const _$_RewardsChange(this.rewards) : assert(rewards != null);

  @override
  final List<PrimitiveReward> rewards;

  @override
  String toString() {
    return 'ExperienceManagementFormEvent.rewardsChange(rewards: $rewards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RewardsChange && (identical(other.rewards, rewards) || const DeepCollectionEquality().equals(other.rewards, rewards)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(rewards);

  @override
  _$RewardsChangeCopyWith<_RewardsChange> get copyWith => __$RewardsChangeCopyWithImpl<_RewardsChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result nameChange(String name),
    @required Result descriptionChange(String description),
    @required Result coordinatesChange(double latitude, double longitude),
    @required Result difficultyChange(int difficulty),
    @required Result objectivesChange(List<PrimitiveObjective> objectives),
    @required Result rewardsChange(List<PrimitiveReward> rewards),
    @required Result tagsChange(Set<Tag> tags),
    @required Result submit(),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(coordinatesChange != null);
    assert(difficultyChange != null);
    assert(objectivesChange != null);
    assert(rewardsChange != null);
    assert(tagsChange != null);
    assert(submit != null);
    return rewardsChange(rewards);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result nameChange(String name),
    Result descriptionChange(String description),
    Result coordinatesChange(double latitude, double longitude),
    Result difficultyChange(int difficulty),
    Result objectivesChange(List<PrimitiveObjective> objectives),
    Result rewardsChange(List<PrimitiveReward> rewards),
    Result tagsChange(Set<Tag> tags),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rewardsChange != null) {
      return rewardsChange(rewards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChange(_NameChange value),
    @required Result descriptionChange(_DescriptionChange value),
    @required Result coordinatesChange(_CoordinatesChange value),
    @required Result difficultyChange(_DifficultyChange value),
    @required Result objectivesChange(_ObjectivesChange value),
    @required Result rewardsChange(_RewardsChange value),
    @required Result tagsChange(_TagsChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(coordinatesChange != null);
    assert(difficultyChange != null);
    assert(objectivesChange != null);
    assert(rewardsChange != null);
    assert(tagsChange != null);
    assert(submit != null);
    return rewardsChange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChange(_NameChange value),
    Result descriptionChange(_DescriptionChange value),
    Result coordinatesChange(_CoordinatesChange value),
    Result difficultyChange(_DifficultyChange value),
    Result objectivesChange(_ObjectivesChange value),
    Result rewardsChange(_RewardsChange value),
    Result tagsChange(_TagsChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rewardsChange != null) {
      return rewardsChange(this);
    }
    return orElse();
  }
}

abstract class _RewardsChange implements ExperienceManagementFormEvent {
  const factory _RewardsChange(List<PrimitiveReward> rewards) = _$_RewardsChange;

  List<PrimitiveReward> get rewards;

  _$RewardsChangeCopyWith<_RewardsChange> get copyWith;
}

abstract class _$TagsChangeCopyWith<$Res> {
  factory _$TagsChangeCopyWith(_TagsChange value, $Res Function(_TagsChange) then) = __$TagsChangeCopyWithImpl<$Res>;

  $Res call({Set<Tag> tags});
}

class __$TagsChangeCopyWithImpl<$Res> extends _$ExperienceManagementFormEventCopyWithImpl<$Res> implements _$TagsChangeCopyWith<$Res> {
  __$TagsChangeCopyWithImpl(_TagsChange _value, $Res Function(_TagsChange) _then) : super(_value, (v) => _then(v as _TagsChange));

  @override
  _TagsChange get _value => super._value as _TagsChange;

  @override
  $Res call({
    Object tags = freezed,
  }) {
    return _then(_TagsChange(
      tags == freezed ? _value.tags : tags as Set<Tag>,
    ));
  }
}

class _$_TagsChange implements _TagsChange {
  const _$_TagsChange(this.tags) : assert(tags != null);

  @override
  final Set<Tag> tags;

  @override
  String toString() {
    return 'ExperienceManagementFormEvent.tagsChange(tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TagsChange && (identical(other.tags, tags) || const DeepCollectionEquality().equals(other.tags, tags)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(tags);

  @override
  _$TagsChangeCopyWith<_TagsChange> get copyWith => __$TagsChangeCopyWithImpl<_TagsChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result nameChange(String name),
    @required Result descriptionChange(String description),
    @required Result coordinatesChange(double latitude, double longitude),
    @required Result difficultyChange(int difficulty),
    @required Result objectivesChange(List<PrimitiveObjective> objectives),
    @required Result rewardsChange(List<PrimitiveReward> rewards),
    @required Result tagsChange(Set<Tag> tags),
    @required Result submit(),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(coordinatesChange != null);
    assert(difficultyChange != null);
    assert(objectivesChange != null);
    assert(rewardsChange != null);
    assert(tagsChange != null);
    assert(submit != null);
    return tagsChange(tags);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result nameChange(String name),
    Result descriptionChange(String description),
    Result coordinatesChange(double latitude, double longitude),
    Result difficultyChange(int difficulty),
    Result objectivesChange(List<PrimitiveObjective> objectives),
    Result rewardsChange(List<PrimitiveReward> rewards),
    Result tagsChange(Set<Tag> tags),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tagsChange != null) {
      return tagsChange(tags);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChange(_NameChange value),
    @required Result descriptionChange(_DescriptionChange value),
    @required Result coordinatesChange(_CoordinatesChange value),
    @required Result difficultyChange(_DifficultyChange value),
    @required Result objectivesChange(_ObjectivesChange value),
    @required Result rewardsChange(_RewardsChange value),
    @required Result tagsChange(_TagsChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(coordinatesChange != null);
    assert(difficultyChange != null);
    assert(objectivesChange != null);
    assert(rewardsChange != null);
    assert(tagsChange != null);
    assert(submit != null);
    return tagsChange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChange(_NameChange value),
    Result descriptionChange(_DescriptionChange value),
    Result coordinatesChange(_CoordinatesChange value),
    Result difficultyChange(_DifficultyChange value),
    Result objectivesChange(_ObjectivesChange value),
    Result rewardsChange(_RewardsChange value),
    Result tagsChange(_TagsChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tagsChange != null) {
      return tagsChange(this);
    }
    return orElse();
  }
}

abstract class _TagsChange implements ExperienceManagementFormEvent {
  const factory _TagsChange(Set<Tag> tags) = _$_TagsChange;

  Set<Tag> get tags;

  _$TagsChangeCopyWith<_TagsChange> get copyWith;
}

abstract class _$SubmitCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) = __$SubmitCopyWithImpl<$Res>;
}

class __$SubmitCopyWithImpl<$Res> extends _$ExperienceManagementFormEventCopyWithImpl<$Res> implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(_Submit _value, $Res Function(_Submit) _then) : super(_value, (v) => _then(v as _Submit));

  @override
  _Submit get _value => super._value as _Submit;
}

class _$_Submit implements _Submit {
  const _$_Submit();

  @override
  String toString() {
    return 'ExperienceManagementFormEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Submit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result nameChange(String name),
    @required Result descriptionChange(String description),
    @required Result coordinatesChange(double latitude, double longitude),
    @required Result difficultyChange(int difficulty),
    @required Result objectivesChange(List<PrimitiveObjective> objectives),
    @required Result rewardsChange(List<PrimitiveReward> rewards),
    @required Result tagsChange(Set<Tag> tags),
    @required Result submit(),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(coordinatesChange != null);
    assert(difficultyChange != null);
    assert(objectivesChange != null);
    assert(rewardsChange != null);
    assert(tagsChange != null);
    assert(submit != null);
    return submit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result nameChange(String name),
    Result descriptionChange(String description),
    Result coordinatesChange(double latitude, double longitude),
    Result difficultyChange(int difficulty),
    Result objectivesChange(List<PrimitiveObjective> objectives),
    Result rewardsChange(List<PrimitiveReward> rewards),
    Result tagsChange(Set<Tag> tags),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChange(_NameChange value),
    @required Result descriptionChange(_DescriptionChange value),
    @required Result coordinatesChange(_CoordinatesChange value),
    @required Result difficultyChange(_DifficultyChange value),
    @required Result objectivesChange(_ObjectivesChange value),
    @required Result rewardsChange(_RewardsChange value),
    @required Result tagsChange(_TagsChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(coordinatesChange != null);
    assert(difficultyChange != null);
    assert(objectivesChange != null);
    assert(rewardsChange != null);
    assert(tagsChange != null);
    assert(submit != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChange(_NameChange value),
    Result descriptionChange(_DescriptionChange value),
    Result coordinatesChange(_CoordinatesChange value),
    Result difficultyChange(_DifficultyChange value),
    Result objectivesChange(_ObjectivesChange value),
    Result rewardsChange(_RewardsChange value),
    Result tagsChange(_TagsChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements ExperienceManagementFormEvent {
  const factory _Submit() = _$_Submit;
}

class _$ExperienceManagementFormStateTearOff {
  const _$ExperienceManagementFormStateTearOff();

  _ExperienceManagementFormState call(
      {@required Experience experience, @required bool showErrorMessages, @required bool isEditing, @required bool isSubmitting, @required Option<Either<Failure, Unit>> failureOrSuccessOption}) {
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

  $ExperienceManagementFormStateCopyWith<ExperienceManagementFormState> get copyWith;
}

abstract class $ExperienceManagementFormStateCopyWith<$Res> {
  factory $ExperienceManagementFormStateCopyWith(ExperienceManagementFormState value, $Res Function(ExperienceManagementFormState) then) = _$ExperienceManagementFormStateCopyWithImpl<$Res>;

  $Res call({Experience experience, bool showErrorMessages, bool isEditing, bool isSubmitting, Option<Either<Failure, Unit>> failureOrSuccessOption});

  $ExperienceCopyWith<$Res> get experience;
}

class _$ExperienceManagementFormStateCopyWithImpl<$Res> implements $ExperienceManagementFormStateCopyWith<$Res> {
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
      experience: experience == freezed ? _value.experience : experience as Experience,
      showErrorMessages: showErrorMessages == freezed ? _value.showErrorMessages : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSubmitting: isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed ? _value.failureOrSuccessOption : failureOrSuccessOption as Option<Either<Failure, Unit>>,
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

abstract class _$ExperienceManagementFormStateCopyWith<$Res> implements $ExperienceManagementFormStateCopyWith<$Res> {
  factory _$ExperienceManagementFormStateCopyWith(_ExperienceManagementFormState value, $Res Function(_ExperienceManagementFormState) then) = __$ExperienceManagementFormStateCopyWithImpl<$Res>;

  @override
  $Res call({Experience experience, bool showErrorMessages, bool isEditing, bool isSubmitting, Option<Either<Failure, Unit>> failureOrSuccessOption});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

class __$ExperienceManagementFormStateCopyWithImpl<$Res> extends _$ExperienceManagementFormStateCopyWithImpl<$Res> implements _$ExperienceManagementFormStateCopyWith<$Res> {
  __$ExperienceManagementFormStateCopyWithImpl(_ExperienceManagementFormState _value, $Res Function(_ExperienceManagementFormState) _then)
      : super(_value, (v) => _then(v as _ExperienceManagementFormState));

  @override
  _ExperienceManagementFormState get _value => super._value as _ExperienceManagementFormState;

  @override
  $Res call({
    Object experience = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_ExperienceManagementFormState(
      experience: experience == freezed ? _value.experience : experience as Experience,
      showErrorMessages: showErrorMessages == freezed ? _value.showErrorMessages : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSubmitting: isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed ? _value.failureOrSuccessOption : failureOrSuccessOption as Option<Either<Failure, Unit>>,
    ));
  }
}

class _$_ExperienceManagementFormState implements _ExperienceManagementFormState {
  const _$_ExperienceManagementFormState({@required this.experience, @required this.showErrorMessages, @required this.isEditing, @required this.isSubmitting, @required this.failureOrSuccessOption})
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
            (identical(other.experience, experience) || const DeepCollectionEquality().equals(other.experience, experience)) &&
            (identical(other.showErrorMessages, showErrorMessages) || const DeepCollectionEquality().equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) || const DeepCollectionEquality().equals(other.isEditing, isEditing)) &&
            (identical(other.isSubmitting, isSubmitting) || const DeepCollectionEquality().equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) || const DeepCollectionEquality().equals(other.failureOrSuccessOption, failureOrSuccessOption)));
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
  _$ExperienceManagementFormStateCopyWith<_ExperienceManagementFormState> get copyWith => __$ExperienceManagementFormStateCopyWithImpl<_ExperienceManagementFormState>(this, _$identity);
}

abstract class _ExperienceManagementFormState implements ExperienceManagementFormState {
  const factory _ExperienceManagementFormState(
      {@required Experience experience,
      @required bool showErrorMessages,
      @required bool isEditing,
      @required bool isSubmitting,
      @required Option<Either<Failure, Unit>> failureOrSuccessOption}) = _$_ExperienceManagementFormState;

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
  _$ExperienceManagementFormStateCopyWith<_ExperienceManagementFormState> get copyWith;
}
