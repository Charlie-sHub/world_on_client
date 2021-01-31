// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'achievement_management_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AchievementManagementFormEventTearOff {
  const _$AchievementManagementFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<Achievement> achievementOption) {
    return _Initialized(
      achievementOption,
    );
  }

// ignore: unused_element
  _NameChanged nameChanged(String name) {
    return _NameChanged(
      name,
    );
  }

// ignore: unused_element
  _DescriptionChanged descriptionChanged(String description) {
    return _DescriptionChanged(
      description,
    );
  }

// ignore: unused_element
  _ExperiencePointsChanged experiencePointsChanged(int experiencePoints) {
    return _ExperiencePointsChanged(
      experiencePoints,
    );
  }

// ignore: unused_element
  _TagsChanged tagsChanged(KtSet<Tag> tags) {
    return _TagsChanged(
      tags,
    );
  }

// ignore: unused_element
  _ImageChanged imageChanged(File image) {
    return _ImageChanged(
      image,
    );
  }

// ignore: unused_element
  _Submitted submitted() {
    return const _Submitted();
  }
}

/// @nodoc
// ignore: unused_element
const $AchievementManagementFormEvent =
    _$AchievementManagementFormEventTearOff();

/// @nodoc
mixin _$AchievementManagementFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Achievement> achievementOption),
    @required TResult nameChanged(String name),
    @required TResult descriptionChanged(String description),
    @required TResult experiencePointsChanged(int experiencePoints),
    @required TResult tagsChanged(KtSet<Tag> tags),
    @required TResult imageChanged(File image),
    @required TResult submitted(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Achievement> achievementOption),
    TResult nameChanged(String name),
    TResult descriptionChanged(String description),
    TResult experiencePointsChanged(int experiencePoints),
    TResult tagsChanged(KtSet<Tag> tags),
    TResult imageChanged(File image),
    TResult submitted(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult experiencePointsChanged(_ExperiencePointsChanged value),
    @required TResult tagsChanged(_TagsChanged value),
    @required TResult imageChanged(_ImageChanged value),
    @required TResult submitted(_Submitted value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult experiencePointsChanged(_ExperiencePointsChanged value),
    TResult tagsChanged(_TagsChanged value),
    TResult imageChanged(_ImageChanged value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AchievementManagementFormEventCopyWith<$Res> {
  factory $AchievementManagementFormEventCopyWith(
          AchievementManagementFormEvent value,
          $Res Function(AchievementManagementFormEvent) then) =
      _$AchievementManagementFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AchievementManagementFormEventCopyWithImpl<$Res>
    implements $AchievementManagementFormEventCopyWith<$Res> {
  _$AchievementManagementFormEventCopyWithImpl(this._value, this._then);

  final AchievementManagementFormEvent _value;
  // ignore: unused_field
  final $Res Function(AchievementManagementFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Achievement> achievementOption});
}

/// @nodoc
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

/// @nodoc
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

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Achievement> achievementOption),
    @required TResult nameChanged(String name),
    @required TResult descriptionChanged(String description),
    @required TResult experiencePointsChanged(int experiencePoints),
    @required TResult tagsChanged(KtSet<Tag> tags),
    @required TResult imageChanged(File image),
    @required TResult submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(experiencePointsChanged != null);
    assert(tagsChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return initialized(achievementOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Achievement> achievementOption),
    TResult nameChanged(String name),
    TResult descriptionChanged(String description),
    TResult experiencePointsChanged(int experiencePoints),
    TResult tagsChanged(KtSet<Tag> tags),
    TResult imageChanged(File image),
    TResult submitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(achievementOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult experiencePointsChanged(_ExperiencePointsChanged value),
    @required TResult tagsChanged(_TagsChanged value),
    @required TResult imageChanged(_ImageChanged value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(experiencePointsChanged != null);
    assert(tagsChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult experiencePointsChanged(_ExperiencePointsChanged value),
    TResult tagsChanged(_TagsChanged value),
    TResult imageChanged(_ImageChanged value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
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
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res>
    extends _$AchievementManagementFormEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
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

/// @nodoc
class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'AchievementManagementFormEvent.nameChanged(name: $name)';
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

  @JsonKey(ignore: true)
  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Achievement> achievementOption),
    @required TResult nameChanged(String name),
    @required TResult descriptionChanged(String description),
    @required TResult experiencePointsChanged(int experiencePoints),
    @required TResult tagsChanged(KtSet<Tag> tags),
    @required TResult imageChanged(File image),
    @required TResult submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(experiencePointsChanged != null);
    assert(tagsChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Achievement> achievementOption),
    TResult nameChanged(String name),
    TResult descriptionChanged(String description),
    TResult experiencePointsChanged(int experiencePoints),
    TResult tagsChanged(KtSet<Tag> tags),
    TResult imageChanged(File image),
    TResult submitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult experiencePointsChanged(_ExperiencePointsChanged value),
    @required TResult tagsChanged(_TagsChanged value),
    @required TResult imageChanged(_ImageChanged value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(experiencePointsChanged != null);
    assert(tagsChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult experiencePointsChanged(_ExperiencePointsChanged value),
    TResult tagsChanged(_TagsChanged value),
    TResult imageChanged(_ImageChanged value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements AchievementManagementFormEvent {
  const factory _NameChanged(String name) = _$_NameChanged;

  String get name;
  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith;
}

/// @nodoc
abstract class _$DescriptionChangedCopyWith<$Res> {
  factory _$DescriptionChangedCopyWith(
          _DescriptionChanged value, $Res Function(_DescriptionChanged) then) =
      __$DescriptionChangedCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class __$DescriptionChangedCopyWithImpl<$Res>
    extends _$AchievementManagementFormEventCopyWithImpl<$Res>
    implements _$DescriptionChangedCopyWith<$Res> {
  __$DescriptionChangedCopyWithImpl(
      _DescriptionChanged _value, $Res Function(_DescriptionChanged) _then)
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

/// @nodoc
class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.description) : assert(description != null);

  @override
  final String description;

  @override
  String toString() {
    return 'AchievementManagementFormEvent.descriptionChanged(description: $description)';
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

  @JsonKey(ignore: true)
  @override
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Achievement> achievementOption),
    @required TResult nameChanged(String name),
    @required TResult descriptionChanged(String description),
    @required TResult experiencePointsChanged(int experiencePoints),
    @required TResult tagsChanged(KtSet<Tag> tags),
    @required TResult imageChanged(File image),
    @required TResult submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(experiencePointsChanged != null);
    assert(tagsChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Achievement> achievementOption),
    TResult nameChanged(String name),
    TResult descriptionChanged(String description),
    TResult experiencePointsChanged(int experiencePoints),
    TResult tagsChanged(KtSet<Tag> tags),
    TResult imageChanged(File image),
    TResult submitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult experiencePointsChanged(_ExperiencePointsChanged value),
    @required TResult tagsChanged(_TagsChanged value),
    @required TResult imageChanged(_ImageChanged value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(experiencePointsChanged != null);
    assert(tagsChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult experiencePointsChanged(_ExperiencePointsChanged value),
    TResult tagsChanged(_TagsChanged value),
    TResult imageChanged(_ImageChanged value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements AchievementManagementFormEvent {
  const factory _DescriptionChanged(String description) = _$_DescriptionChanged;

  String get description;
  @JsonKey(ignore: true)
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith;
}

/// @nodoc
abstract class _$ExperiencePointsChangedCopyWith<$Res> {
  factory _$ExperiencePointsChangedCopyWith(_ExperiencePointsChanged value,
          $Res Function(_ExperiencePointsChanged) then) =
      __$ExperiencePointsChangedCopyWithImpl<$Res>;
  $Res call({int experiencePoints});
}

/// @nodoc
class __$ExperiencePointsChangedCopyWithImpl<$Res>
    extends _$AchievementManagementFormEventCopyWithImpl<$Res>
    implements _$ExperiencePointsChangedCopyWith<$Res> {
  __$ExperiencePointsChangedCopyWithImpl(_ExperiencePointsChanged _value,
      $Res Function(_ExperiencePointsChanged) _then)
      : super(_value, (v) => _then(v as _ExperiencePointsChanged));

  @override
  _ExperiencePointsChanged get _value =>
      super._value as _ExperiencePointsChanged;

  @override
  $Res call({
    Object experiencePoints = freezed,
  }) {
    return _then(_ExperiencePointsChanged(
      experiencePoints == freezed
          ? _value.experiencePoints
          : experiencePoints as int,
    ));
  }
}

/// @nodoc
class _$_ExperiencePointsChanged implements _ExperiencePointsChanged {
  const _$_ExperiencePointsChanged(this.experiencePoints)
      : assert(experiencePoints != null);

  @override
  final int experiencePoints;

  @override
  String toString() {
    return 'AchievementManagementFormEvent.experiencePointsChanged(experiencePoints: $experiencePoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExperiencePointsChanged &&
            (identical(other.experiencePoints, experiencePoints) ||
                const DeepCollectionEquality()
                    .equals(other.experiencePoints, experiencePoints)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(experiencePoints);

  @JsonKey(ignore: true)
  @override
  _$ExperiencePointsChangedCopyWith<_ExperiencePointsChanged> get copyWith =>
      __$ExperiencePointsChangedCopyWithImpl<_ExperiencePointsChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Achievement> achievementOption),
    @required TResult nameChanged(String name),
    @required TResult descriptionChanged(String description),
    @required TResult experiencePointsChanged(int experiencePoints),
    @required TResult tagsChanged(KtSet<Tag> tags),
    @required TResult imageChanged(File image),
    @required TResult submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(experiencePointsChanged != null);
    assert(tagsChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return experiencePointsChanged(experiencePoints);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Achievement> achievementOption),
    TResult nameChanged(String name),
    TResult descriptionChanged(String description),
    TResult experiencePointsChanged(int experiencePoints),
    TResult tagsChanged(KtSet<Tag> tags),
    TResult imageChanged(File image),
    TResult submitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (experiencePointsChanged != null) {
      return experiencePointsChanged(experiencePoints);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult experiencePointsChanged(_ExperiencePointsChanged value),
    @required TResult tagsChanged(_TagsChanged value),
    @required TResult imageChanged(_ImageChanged value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(experiencePointsChanged != null);
    assert(tagsChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return experiencePointsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult experiencePointsChanged(_ExperiencePointsChanged value),
    TResult tagsChanged(_TagsChanged value),
    TResult imageChanged(_ImageChanged value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (experiencePointsChanged != null) {
      return experiencePointsChanged(this);
    }
    return orElse();
  }
}

abstract class _ExperiencePointsChanged
    implements AchievementManagementFormEvent {
  const factory _ExperiencePointsChanged(int experiencePoints) =
      _$_ExperiencePointsChanged;

  int get experiencePoints;
  @JsonKey(ignore: true)
  _$ExperiencePointsChangedCopyWith<_ExperiencePointsChanged> get copyWith;
}

/// @nodoc
abstract class _$TagsChangedCopyWith<$Res> {
  factory _$TagsChangedCopyWith(
          _TagsChanged value, $Res Function(_TagsChanged) then) =
      __$TagsChangedCopyWithImpl<$Res>;
  $Res call({KtSet<Tag> tags});
}

/// @nodoc
class __$TagsChangedCopyWithImpl<$Res>
    extends _$AchievementManagementFormEventCopyWithImpl<$Res>
    implements _$TagsChangedCopyWith<$Res> {
  __$TagsChangedCopyWithImpl(
      _TagsChanged _value, $Res Function(_TagsChanged) _then)
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

/// @nodoc
class _$_TagsChanged implements _TagsChanged {
  const _$_TagsChanged(this.tags) : assert(tags != null);

  @override
  final KtSet<Tag> tags;

  @override
  String toString() {
    return 'AchievementManagementFormEvent.tagsChanged(tags: $tags)';
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

  @JsonKey(ignore: true)
  @override
  _$TagsChangedCopyWith<_TagsChanged> get copyWith =>
      __$TagsChangedCopyWithImpl<_TagsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Achievement> achievementOption),
    @required TResult nameChanged(String name),
    @required TResult descriptionChanged(String description),
    @required TResult experiencePointsChanged(int experiencePoints),
    @required TResult tagsChanged(KtSet<Tag> tags),
    @required TResult imageChanged(File image),
    @required TResult submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(experiencePointsChanged != null);
    assert(tagsChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return tagsChanged(tags);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Achievement> achievementOption),
    TResult nameChanged(String name),
    TResult descriptionChanged(String description),
    TResult experiencePointsChanged(int experiencePoints),
    TResult tagsChanged(KtSet<Tag> tags),
    TResult imageChanged(File image),
    TResult submitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tagsChanged != null) {
      return tagsChanged(tags);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult experiencePointsChanged(_ExperiencePointsChanged value),
    @required TResult tagsChanged(_TagsChanged value),
    @required TResult imageChanged(_ImageChanged value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(experiencePointsChanged != null);
    assert(tagsChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return tagsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult experiencePointsChanged(_ExperiencePointsChanged value),
    TResult tagsChanged(_TagsChanged value),
    TResult imageChanged(_ImageChanged value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tagsChanged != null) {
      return tagsChanged(this);
    }
    return orElse();
  }
}

abstract class _TagsChanged implements AchievementManagementFormEvent {
  const factory _TagsChanged(KtSet<Tag> tags) = _$_TagsChanged;

  KtSet<Tag> get tags;
  @JsonKey(ignore: true)
  _$TagsChangedCopyWith<_TagsChanged> get copyWith;
}

/// @nodoc
abstract class _$ImageChangedCopyWith<$Res> {
  factory _$ImageChangedCopyWith(
          _ImageChanged value, $Res Function(_ImageChanged) then) =
      __$ImageChangedCopyWithImpl<$Res>;
  $Res call({File image});
}

/// @nodoc
class __$ImageChangedCopyWithImpl<$Res>
    extends _$AchievementManagementFormEventCopyWithImpl<$Res>
    implements _$ImageChangedCopyWith<$Res> {
  __$ImageChangedCopyWithImpl(
      _ImageChanged _value, $Res Function(_ImageChanged) _then)
      : super(_value, (v) => _then(v as _ImageChanged));

  @override
  _ImageChanged get _value => super._value as _ImageChanged;

  @override
  $Res call({
    Object image = freezed,
  }) {
    return _then(_ImageChanged(
      image == freezed ? _value.image : image as File,
    ));
  }
}

/// @nodoc
class _$_ImageChanged implements _ImageChanged {
  const _$_ImageChanged(this.image) : assert(image != null);

  @override
  final File image;

  @override
  String toString() {
    return 'AchievementManagementFormEvent.imageChanged(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageChanged &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$ImageChangedCopyWith<_ImageChanged> get copyWith =>
      __$ImageChangedCopyWithImpl<_ImageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Achievement> achievementOption),
    @required TResult nameChanged(String name),
    @required TResult descriptionChanged(String description),
    @required TResult experiencePointsChanged(int experiencePoints),
    @required TResult tagsChanged(KtSet<Tag> tags),
    @required TResult imageChanged(File image),
    @required TResult submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(experiencePointsChanged != null);
    assert(tagsChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return imageChanged(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Achievement> achievementOption),
    TResult nameChanged(String name),
    TResult descriptionChanged(String description),
    TResult experiencePointsChanged(int experiencePoints),
    TResult tagsChanged(KtSet<Tag> tags),
    TResult imageChanged(File image),
    TResult submitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageChanged != null) {
      return imageChanged(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult experiencePointsChanged(_ExperiencePointsChanged value),
    @required TResult tagsChanged(_TagsChanged value),
    @required TResult imageChanged(_ImageChanged value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(experiencePointsChanged != null);
    assert(tagsChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return imageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult experiencePointsChanged(_ExperiencePointsChanged value),
    TResult tagsChanged(_TagsChanged value),
    TResult imageChanged(_ImageChanged value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageChanged != null) {
      return imageChanged(this);
    }
    return orElse();
  }
}

abstract class _ImageChanged implements AchievementManagementFormEvent {
  const factory _ImageChanged(File image) = _$_ImageChanged;

  File get image;
  @JsonKey(ignore: true)
  _$ImageChangedCopyWith<_ImageChanged> get copyWith;
}

/// @nodoc
abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(
          _Submitted value, $Res Function(_Submitted) then) =
      __$SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmittedCopyWithImpl<$Res>
    extends _$AchievementManagementFormEventCopyWithImpl<$Res>
    implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(_Submitted _value, $Res Function(_Submitted) _then)
      : super(_value, (v) => _then(v as _Submitted));

  @override
  _Submitted get _value => super._value as _Submitted;
}

/// @nodoc
class _$_Submitted implements _Submitted {
  const _$_Submitted();

  @override
  String toString() {
    return 'AchievementManagementFormEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Achievement> achievementOption),
    @required TResult nameChanged(String name),
    @required TResult descriptionChanged(String description),
    @required TResult experiencePointsChanged(int experiencePoints),
    @required TResult tagsChanged(KtSet<Tag> tags),
    @required TResult imageChanged(File image),
    @required TResult submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(experiencePointsChanged != null);
    assert(tagsChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Achievement> achievementOption),
    TResult nameChanged(String name),
    TResult descriptionChanged(String description),
    TResult experiencePointsChanged(int experiencePoints),
    TResult tagsChanged(KtSet<Tag> tags),
    TResult imageChanged(File image),
    TResult submitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult experiencePointsChanged(_ExperiencePointsChanged value),
    @required TResult tagsChanged(_TagsChanged value),
    @required TResult imageChanged(_ImageChanged value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(experiencePointsChanged != null);
    assert(tagsChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult experiencePointsChanged(_ExperiencePointsChanged value),
    TResult tagsChanged(_TagsChanged value),
    TResult imageChanged(_ImageChanged value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements AchievementManagementFormEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
class _$AchievementManagementFormStateTearOff {
  const _$AchievementManagementFormStateTearOff();

// ignore: unused_element
  _AchievementManagementFormState call(
      {@required Achievement achievement,
      @required bool showErrorMessages,
      @required bool isEditing,
      @required bool isSubmitting,
      @required Option<Either<Failure, Unit>> failureOrSuccessOption}) {
    return _AchievementManagementFormState(
      achievement: achievement,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSubmitting: isSubmitting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AchievementManagementFormState =
    _$AchievementManagementFormStateTearOff();

/// @nodoc
mixin _$AchievementManagementFormState {
  Achievement get achievement;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSubmitting;
  Option<Either<Failure, Unit>> get failureOrSuccessOption;

  @JsonKey(ignore: true)
  $AchievementManagementFormStateCopyWith<AchievementManagementFormState>
      get copyWith;
}

/// @nodoc
abstract class $AchievementManagementFormStateCopyWith<$Res> {
  factory $AchievementManagementFormStateCopyWith(
          AchievementManagementFormState value,
          $Res Function(AchievementManagementFormState) then) =
      _$AchievementManagementFormStateCopyWithImpl<$Res>;
  $Res call(
      {Achievement achievement,
      bool showErrorMessages,
      bool isEditing,
      bool isSubmitting,
      Option<Either<Failure, Unit>> failureOrSuccessOption});

  $AchievementCopyWith<$Res> get achievement;
}

/// @nodoc
class _$AchievementManagementFormStateCopyWithImpl<$Res>
    implements $AchievementManagementFormStateCopyWith<$Res> {
  _$AchievementManagementFormStateCopyWithImpl(this._value, this._then);

  final AchievementManagementFormState _value;
  // ignore: unused_field
  final $Res Function(AchievementManagementFormState) _then;

  @override
  $Res call({
    Object achievement = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      achievement: achievement == freezed
          ? _value.achievement
          : achievement as Achievement,
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
  $AchievementCopyWith<$Res> get achievement {
    if (_value.achievement == null) {
      return null;
    }
    return $AchievementCopyWith<$Res>(_value.achievement, (value) {
      return _then(_value.copyWith(achievement: value));
    });
  }
}

/// @nodoc
abstract class _$AchievementManagementFormStateCopyWith<$Res>
    implements $AchievementManagementFormStateCopyWith<$Res> {
  factory _$AchievementManagementFormStateCopyWith(
          _AchievementManagementFormState value,
          $Res Function(_AchievementManagementFormState) then) =
      __$AchievementManagementFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Achievement achievement,
      bool showErrorMessages,
      bool isEditing,
      bool isSubmitting,
      Option<Either<Failure, Unit>> failureOrSuccessOption});

  @override
  $AchievementCopyWith<$Res> get achievement;
}

/// @nodoc
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
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_AchievementManagementFormState(
      achievement: achievement == freezed
          ? _value.achievement
          : achievement as Achievement,
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

/// @nodoc
class _$_AchievementManagementFormState
    implements _AchievementManagementFormState {
  const _$_AchievementManagementFormState(
      {@required this.achievement,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSubmitting,
      @required this.failureOrSuccessOption})
      : assert(achievement != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSubmitting != null),
        assert(failureOrSuccessOption != null);

  @override
  final Achievement achievement;
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
    return 'AchievementManagementFormState(achievement: $achievement, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AchievementManagementFormState &&
            (identical(other.achievement, achievement) ||
                const DeepCollectionEquality()
                    .equals(other.achievement, achievement)) &&
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
      const DeepCollectionEquality().hash(achievement) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$AchievementManagementFormStateCopyWith<_AchievementManagementFormState>
      get copyWith => __$AchievementManagementFormStateCopyWithImpl<
          _AchievementManagementFormState>(this, _$identity);
}

abstract class _AchievementManagementFormState
    implements AchievementManagementFormState {
  const factory _AchievementManagementFormState(
          {@required Achievement achievement,
          @required bool showErrorMessages,
          @required bool isEditing,
          @required bool isSubmitting,
          @required Option<Either<Failure, Unit>> failureOrSuccessOption}) =
      _$_AchievementManagementFormState;

  @override
  Achievement get achievement;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSubmitting;
  @override
  Option<Either<Failure, Unit>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$AchievementManagementFormStateCopyWith<_AchievementManagementFormState>
      get copyWith;
}
