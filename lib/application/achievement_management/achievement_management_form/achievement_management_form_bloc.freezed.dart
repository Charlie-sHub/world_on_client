// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'achievement_management_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AchievementManagementFormEventTearOff {
  const _$AchievementManagementFormEventTearOff();

  _Initialized initialized(Option<Achievement> achievementOption) {
    return _Initialized(
      achievementOption,
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

  _ExperiencePointsChange experiencePointsChange(int experiencePoints) {
    return _ExperiencePointsChange(
      experiencePoints,
    );
  }

  _TagsChange tagsChange(KtSet<Tag> tags) {
    return _TagsChange(
      tags,
    );
  }

  _Submit submit() {
    return const _Submit();
  }
}

// ignore: unused_element
const $AchievementManagementFormEvent =
    _$AchievementManagementFormEventTearOff();

mixin _$AchievementManagementFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Achievement> achievementOption),
    @required Result nameChange(String name),
    @required Result descriptionChange(String description),
    @required Result experiencePointsChange(int experiencePoints),
    @required Result tagsChange(KtSet<Tag> tags),
    @required Result submit(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Achievement> achievementOption),
    Result nameChange(String name),
    Result descriptionChange(String description),
    Result experiencePointsChange(int experiencePoints),
    Result tagsChange(KtSet<Tag> tags),
    Result submit(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChange(_NameChange value),
    @required Result descriptionChange(_DescriptionChange value),
    @required Result experiencePointsChange(_ExperiencePointsChange value),
    @required Result tagsChange(_TagsChange value),
    @required Result submit(_Submit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChange(_NameChange value),
    Result descriptionChange(_DescriptionChange value),
    Result experiencePointsChange(_ExperiencePointsChange value),
    Result tagsChange(_TagsChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  });
}

abstract class $AchievementManagementFormEventCopyWith<$Res> {
  factory $AchievementManagementFormEventCopyWith(
          AchievementManagementFormEvent value,
          $Res Function(AchievementManagementFormEvent) then) =
      _$AchievementManagementFormEventCopyWithImpl<$Res>;
}

class _$AchievementManagementFormEventCopyWithImpl<$Res>
    implements $AchievementManagementFormEventCopyWith<$Res> {
  _$AchievementManagementFormEventCopyWithImpl(this._value, this._then);

  final AchievementManagementFormEvent _value;
  // ignore: unused_field
  final $Res Function(AchievementManagementFormEvent) _then;
}

abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Achievement> achievementOption});
}

class __$InitializedCopyWithImpl<$Res>
    extends _$AchievementManagementFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object achievementOption = freezed,
  }) {
    return _then(_Initialized(
      achievementOption == freezed
          ? _value.achievementOption
          : achievementOption as Option<Achievement>,
    ));
  }
}

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.achievementOption)
      : assert(achievementOption != null);

  @override
  final Option<Achievement> achievementOption;

  @override
  String toString() {
    return 'AchievementManagementFormEvent.initialized(achievementOption: $achievementOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.achievementOption, achievementOption) ||
                const DeepCollectionEquality()
                    .equals(other.achievementOption, achievementOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(achievementOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Achievement> achievementOption),
    @required Result nameChange(String name),
    @required Result descriptionChange(String description),
    @required Result experiencePointsChange(int experiencePoints),
    @required Result tagsChange(KtSet<Tag> tags),
    @required Result submit(),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(experiencePointsChange != null);
    assert(tagsChange != null);
    assert(submit != null);
    return initialized(achievementOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Achievement> achievementOption),
    Result nameChange(String name),
    Result descriptionChange(String description),
    Result experiencePointsChange(int experiencePoints),
    Result tagsChange(KtSet<Tag> tags),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(achievementOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChange(_NameChange value),
    @required Result descriptionChange(_DescriptionChange value),
    @required Result experiencePointsChange(_ExperiencePointsChange value),
    @required Result tagsChange(_TagsChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(experiencePointsChange != null);
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
    Result experiencePointsChange(_ExperiencePointsChange value),
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

abstract class _Initialized implements AchievementManagementFormEvent {
  const factory _Initialized(Option<Achievement> achievementOption) =
      _$_Initialized;

  Option<Achievement> get achievementOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$NameChangeCopyWith<$Res> {
  factory _$NameChangeCopyWith(
          _NameChange value, $Res Function(_NameChange) then) =
      __$NameChangeCopyWithImpl<$Res>;
  $Res call({String name});
}

class __$NameChangeCopyWithImpl<$Res>
    extends _$AchievementManagementFormEventCopyWithImpl<$Res>
    implements _$NameChangeCopyWith<$Res> {
  __$NameChangeCopyWithImpl(
      _NameChange _value, $Res Function(_NameChange) _then)
      : super(_value, (v) => _then(v as _NameChange));

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
    return 'AchievementManagementFormEvent.nameChange(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChange &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$NameChangeCopyWith<_NameChange> get copyWith =>
      __$NameChangeCopyWithImpl<_NameChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Achievement> achievementOption),
    @required Result nameChange(String name),
    @required Result descriptionChange(String description),
    @required Result experiencePointsChange(int experiencePoints),
    @required Result tagsChange(KtSet<Tag> tags),
    @required Result submit(),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(experiencePointsChange != null);
    assert(tagsChange != null);
    assert(submit != null);
    return nameChange(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Achievement> achievementOption),
    Result nameChange(String name),
    Result descriptionChange(String description),
    Result experiencePointsChange(int experiencePoints),
    Result tagsChange(KtSet<Tag> tags),
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
    @required Result experiencePointsChange(_ExperiencePointsChange value),
    @required Result tagsChange(_TagsChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(experiencePointsChange != null);
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
    Result experiencePointsChange(_ExperiencePointsChange value),
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

abstract class _NameChange implements AchievementManagementFormEvent {
  const factory _NameChange(String name) = _$_NameChange;

  String get name;
  _$NameChangeCopyWith<_NameChange> get copyWith;
}

abstract class _$DescriptionChangeCopyWith<$Res> {
  factory _$DescriptionChangeCopyWith(
          _DescriptionChange value, $Res Function(_DescriptionChange) then) =
      __$DescriptionChangeCopyWithImpl<$Res>;
  $Res call({String description});
}

class __$DescriptionChangeCopyWithImpl<$Res>
    extends _$AchievementManagementFormEventCopyWithImpl<$Res>
    implements _$DescriptionChangeCopyWith<$Res> {
  __$DescriptionChangeCopyWithImpl(
      _DescriptionChange _value, $Res Function(_DescriptionChange) _then)
      : super(_value, (v) => _then(v as _DescriptionChange));

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
    return 'AchievementManagementFormEvent.descriptionChange(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DescriptionChange &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @override
  _$DescriptionChangeCopyWith<_DescriptionChange> get copyWith =>
      __$DescriptionChangeCopyWithImpl<_DescriptionChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Achievement> achievementOption),
    @required Result nameChange(String name),
    @required Result descriptionChange(String description),
    @required Result experiencePointsChange(int experiencePoints),
    @required Result tagsChange(KtSet<Tag> tags),
    @required Result submit(),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(experiencePointsChange != null);
    assert(tagsChange != null);
    assert(submit != null);
    return descriptionChange(description);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Achievement> achievementOption),
    Result nameChange(String name),
    Result descriptionChange(String description),
    Result experiencePointsChange(int experiencePoints),
    Result tagsChange(KtSet<Tag> tags),
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
    @required Result experiencePointsChange(_ExperiencePointsChange value),
    @required Result tagsChange(_TagsChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(experiencePointsChange != null);
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
    Result experiencePointsChange(_ExperiencePointsChange value),
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

abstract class _DescriptionChange implements AchievementManagementFormEvent {
  const factory _DescriptionChange(String description) = _$_DescriptionChange;

  String get description;
  _$DescriptionChangeCopyWith<_DescriptionChange> get copyWith;
}

abstract class _$ExperiencePointsChangeCopyWith<$Res> {
  factory _$ExperiencePointsChangeCopyWith(_ExperiencePointsChange value,
          $Res Function(_ExperiencePointsChange) then) =
      __$ExperiencePointsChangeCopyWithImpl<$Res>;
  $Res call({int experiencePoints});
}

class __$ExperiencePointsChangeCopyWithImpl<$Res>
    extends _$AchievementManagementFormEventCopyWithImpl<$Res>
    implements _$ExperiencePointsChangeCopyWith<$Res> {
  __$ExperiencePointsChangeCopyWithImpl(_ExperiencePointsChange _value,
      $Res Function(_ExperiencePointsChange) _then)
      : super(_value, (v) => _then(v as _ExperiencePointsChange));

  @override
  _ExperiencePointsChange get _value => super._value as _ExperiencePointsChange;

  @override
  $Res call({
    Object experiencePoints = freezed,
  }) {
    return _then(_ExperiencePointsChange(
      experiencePoints == freezed
          ? _value.experiencePoints
          : experiencePoints as int,
    ));
  }
}

class _$_ExperiencePointsChange implements _ExperiencePointsChange {
  const _$_ExperiencePointsChange(this.experiencePoints)
      : assert(experiencePoints != null);

  @override
  final int experiencePoints;

  @override
  String toString() {
    return 'AchievementManagementFormEvent.experiencePointsChange(experiencePoints: $experiencePoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExperiencePointsChange &&
            (identical(other.experiencePoints, experiencePoints) ||
                const DeepCollectionEquality()
                    .equals(other.experiencePoints, experiencePoints)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(experiencePoints);

  @override
  _$ExperiencePointsChangeCopyWith<_ExperiencePointsChange> get copyWith =>
      __$ExperiencePointsChangeCopyWithImpl<_ExperiencePointsChange>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Achievement> achievementOption),
    @required Result nameChange(String name),
    @required Result descriptionChange(String description),
    @required Result experiencePointsChange(int experiencePoints),
    @required Result tagsChange(KtSet<Tag> tags),
    @required Result submit(),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(experiencePointsChange != null);
    assert(tagsChange != null);
    assert(submit != null);
    return experiencePointsChange(experiencePoints);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Achievement> achievementOption),
    Result nameChange(String name),
    Result descriptionChange(String description),
    Result experiencePointsChange(int experiencePoints),
    Result tagsChange(KtSet<Tag> tags),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (experiencePointsChange != null) {
      return experiencePointsChange(experiencePoints);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChange(_NameChange value),
    @required Result descriptionChange(_DescriptionChange value),
    @required Result experiencePointsChange(_ExperiencePointsChange value),
    @required Result tagsChange(_TagsChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(experiencePointsChange != null);
    assert(tagsChange != null);
    assert(submit != null);
    return experiencePointsChange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChange(_NameChange value),
    Result descriptionChange(_DescriptionChange value),
    Result experiencePointsChange(_ExperiencePointsChange value),
    Result tagsChange(_TagsChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (experiencePointsChange != null) {
      return experiencePointsChange(this);
    }
    return orElse();
  }
}

abstract class _ExperiencePointsChange
    implements AchievementManagementFormEvent {
  const factory _ExperiencePointsChange(int experiencePoints) =
      _$_ExperiencePointsChange;

  int get experiencePoints;
  _$ExperiencePointsChangeCopyWith<_ExperiencePointsChange> get copyWith;
}

abstract class _$TagsChangeCopyWith<$Res> {
  factory _$TagsChangeCopyWith(
          _TagsChange value, $Res Function(_TagsChange) then) =
      __$TagsChangeCopyWithImpl<$Res>;
  $Res call({KtSet<Tag> tags});
}

class __$TagsChangeCopyWithImpl<$Res>
    extends _$AchievementManagementFormEventCopyWithImpl<$Res>
    implements _$TagsChangeCopyWith<$Res> {
  __$TagsChangeCopyWithImpl(
      _TagsChange _value, $Res Function(_TagsChange) _then)
      : super(_value, (v) => _then(v as _TagsChange));

  @override
  _TagsChange get _value => super._value as _TagsChange;

  @override
  $Res call({
    Object tags = freezed,
  }) {
    return _then(_TagsChange(
      tags == freezed ? _value.tags : tags as KtSet<Tag>,
    ));
  }
}

class _$_TagsChange implements _TagsChange {
  const _$_TagsChange(this.tags) : assert(tags != null);

  @override
  final KtSet<Tag> tags;

  @override
  String toString() {
    return 'AchievementManagementFormEvent.tagsChange(tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TagsChange &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tags);

  @override
  _$TagsChangeCopyWith<_TagsChange> get copyWith =>
      __$TagsChangeCopyWithImpl<_TagsChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Achievement> achievementOption),
    @required Result nameChange(String name),
    @required Result descriptionChange(String description),
    @required Result experiencePointsChange(int experiencePoints),
    @required Result tagsChange(KtSet<Tag> tags),
    @required Result submit(),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(experiencePointsChange != null);
    assert(tagsChange != null);
    assert(submit != null);
    return tagsChange(tags);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Achievement> achievementOption),
    Result nameChange(String name),
    Result descriptionChange(String description),
    Result experiencePointsChange(int experiencePoints),
    Result tagsChange(KtSet<Tag> tags),
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
    @required Result experiencePointsChange(_ExperiencePointsChange value),
    @required Result tagsChange(_TagsChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(experiencePointsChange != null);
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
    Result experiencePointsChange(_ExperiencePointsChange value),
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

abstract class _TagsChange implements AchievementManagementFormEvent {
  const factory _TagsChange(KtSet<Tag> tags) = _$_TagsChange;

  KtSet<Tag> get tags;
  _$TagsChangeCopyWith<_TagsChange> get copyWith;
}

abstract class _$SubmitCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
      __$SubmitCopyWithImpl<$Res>;
}

class __$SubmitCopyWithImpl<$Res>
    extends _$AchievementManagementFormEventCopyWithImpl<$Res>
    implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(_Submit _value, $Res Function(_Submit) _then)
      : super(_value, (v) => _then(v as _Submit));

  @override
  _Submit get _value => super._value as _Submit;
}

class _$_Submit implements _Submit {
  const _$_Submit();

  @override
  String toString() {
    return 'AchievementManagementFormEvent.submit()';
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
    @required Result initialized(Option<Achievement> achievementOption),
    @required Result nameChange(String name),
    @required Result descriptionChange(String description),
    @required Result experiencePointsChange(int experiencePoints),
    @required Result tagsChange(KtSet<Tag> tags),
    @required Result submit(),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(experiencePointsChange != null);
    assert(tagsChange != null);
    assert(submit != null);
    return submit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Achievement> achievementOption),
    Result nameChange(String name),
    Result descriptionChange(String description),
    Result experiencePointsChange(int experiencePoints),
    Result tagsChange(KtSet<Tag> tags),
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
    @required Result experiencePointsChange(_ExperiencePointsChange value),
    @required Result tagsChange(_TagsChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialized != null);
    assert(nameChange != null);
    assert(descriptionChange != null);
    assert(experiencePointsChange != null);
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
    Result experiencePointsChange(_ExperiencePointsChange value),
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

abstract class _Submit implements AchievementManagementFormEvent {
  const factory _Submit() = _$_Submit;
}

class _$AchievementManagementFormStateTearOff {
  const _$AchievementManagementFormStateTearOff();

  _AchievementManagementFormState call(
      {@required Achievement achievement, @required bool showErrorMessage, @required bool isEditing,
      @required bool isSubmitting,
      @required Option<Either<Failure, Unit>> failureOrSuccessOption}) {
    return _AchievementManagementFormState(
      achievement: achievement,
      showErrorMessage: showErrorMessage,
      isEditing: isEditing,
      isSubmitting: isSubmitting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $AchievementManagementFormState =
    _$AchievementManagementFormStateTearOff();

mixin _$AchievementManagementFormState {
  Achievement get achievement;

  bool get showErrorMessage;
  bool get isEditing;
  bool get isSubmitting;
  Option<Either<Failure, Unit>> get failureOrSuccessOption;

  $AchievementManagementFormStateCopyWith<AchievementManagementFormState>
      get copyWith;
}

abstract class $AchievementManagementFormStateCopyWith<$Res> {
  factory $AchievementManagementFormStateCopyWith(
          AchievementManagementFormState value,
          $Res Function(AchievementManagementFormState) then) =
      _$AchievementManagementFormStateCopyWithImpl<$Res>;
  $Res call(
      {Achievement achievement,
        bool showErrorMessage,
      bool isEditing,
      bool isSubmitting,
      Option<Either<Failure, Unit>> failureOrSuccessOption});

  $AchievementCopyWith<$Res> get achievement;
}

class _$AchievementManagementFormStateCopyWithImpl<$Res>
    implements $AchievementManagementFormStateCopyWith<$Res> {
  _$AchievementManagementFormStateCopyWithImpl(this._value, this._then);

  final AchievementManagementFormState _value;
  // ignore: unused_field
  final $Res Function(AchievementManagementFormState) _then;

  @override
  $Res call({
    Object achievement = freezed,
    Object showErrorMessage = freezed,
    Object isEditing = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      achievement: achievement == freezed
          ? _value.achievement
          : achievement as Achievement,
      showErrorMessage: showErrorMessage == freezed
        ? _value.showErrorMessage
        : showErrorMessage as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption as Option<Either<Failure, Unit>>,
    ));
  }

  @override
  $AchievementCopyWith<$Res> get achievement {
    if (_value.achievement == null) {
      return null;
    }
    return $AchievementCopyWith<$Res>(_value.achievement, (value) {
      return _then(_value.copyWith(achievement: value));
    });
  }
}

abstract class _$AchievementManagementFormStateCopyWith<$Res>
    implements $AchievementManagementFormStateCopyWith<$Res> {
  factory _$AchievementManagementFormStateCopyWith(
          _AchievementManagementFormState value,
          $Res Function(_AchievementManagementFormState) then) =
      __$AchievementManagementFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Achievement achievement,
        bool showErrorMessage,
      bool isEditing,
      bool isSubmitting,
      Option<Either<Failure, Unit>> failureOrSuccessOption});

  @override
  $AchievementCopyWith<$Res> get achievement;
}

class __$AchievementManagementFormStateCopyWithImpl<$Res>
    extends _$AchievementManagementFormStateCopyWithImpl<$Res>
    implements _$AchievementManagementFormStateCopyWith<$Res> {
  __$AchievementManagementFormStateCopyWithImpl(
      _AchievementManagementFormState _value,
      $Res Function(_AchievementManagementFormState) _then)
      : super(_value, (v) => _then(v as _AchievementManagementFormState));

  @override
  _AchievementManagementFormState get _value =>
      super._value as _AchievementManagementFormState;

  @override
  $Res call({
    Object achievement = freezed,
    Object showErrorMessage = freezed,
    Object isEditing = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_AchievementManagementFormState(
      achievement: achievement == freezed
          ? _value.achievement
          : achievement as Achievement,
      showErrorMessage: showErrorMessage == freezed
        ? _value.showErrorMessage
        : showErrorMessage as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption as Option<Either<Failure, Unit>>,
    ));
  }
}

class _$_AchievementManagementFormState
    implements _AchievementManagementFormState {
  const _$_AchievementManagementFormState(
      {@required this.achievement,
        @required this.showErrorMessage,
      @required this.isEditing,
      @required this.isSubmitting,
      @required this.failureOrSuccessOption})
      : assert(achievement != null),
      assert(showErrorMessage != null),
        assert(isEditing != null),
        assert(isSubmitting != null),
        assert(failureOrSuccessOption != null);

  @override
  final Achievement achievement;
  @override
  final bool showErrorMessage;
  @override
  final bool isEditing;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Failure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'AchievementManagementFormState(achievement: $achievement, showErrorMessage: $showErrorMessage, isEditing: $isEditing, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AchievementManagementFormState &&
            (identical(other.achievement, achievement) ||
                const DeepCollectionEquality()
                    .equals(other.achievement, achievement)) &&
          (identical(other.showErrorMessage, showErrorMessage) ||
                const DeepCollectionEquality()
                  .equals(other.showErrorMessage, showErrorMessage)) &&
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
      const DeepCollectionEquality().hash(achievement) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @override
  _$AchievementManagementFormStateCopyWith<_AchievementManagementFormState>
      get copyWith => __$AchievementManagementFormStateCopyWithImpl<
          _AchievementManagementFormState>(this, _$identity);
}

abstract class _AchievementManagementFormState
    implements AchievementManagementFormState {
  const factory _AchievementManagementFormState(
          {@required Achievement achievement,
            @required bool showErrorMessage,
          @required bool isEditing,
          @required bool isSubmitting,
          @required Option<Either<Failure, Unit>> failureOrSuccessOption}) =
      _$_AchievementManagementFormState;

  @override
  Achievement get achievement;
  @override
  bool get showErrorMessage;
  @override
  bool get isEditing;
  @override
  bool get isSubmitting;
  @override
  Option<Either<Failure, Unit>> get failureOrSuccessOption;
  @override
  _$AchievementManagementFormStateCopyWith<_AchievementManagementFormState>
      get copyWith;
}
