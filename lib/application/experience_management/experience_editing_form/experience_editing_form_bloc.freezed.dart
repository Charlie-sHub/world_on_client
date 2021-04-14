// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'experience_editing_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ExperienceEditingFormEventTearOff {
  const _$ExperienceEditingFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Experience experience) {
    return _Initialized(
      experience,
    );
  }

// ignore: unused_element
  _TitleChanged titleChanged(String title) {
    return _TitleChanged(
      title,
    );
  }

// ignore: unused_element
  _DescriptionChanged descriptionChanged(String description) {
    return _DescriptionChanged(
      description,
    );
  }

// ignore: unused_element
  _ImagesChanged imagesChanged(List<Asset> imageAssets) {
    return _ImagesChanged(
      imageAssets,
    );
  }

// ignore: unused_element
  _ImageDeleted imageDeleted(String imageURL) {
    return _ImageDeleted(
      imageURL,
    );
  }

// ignore: unused_element
  _CoordinatesChanged coordinatesChanged({@required double latitude, @required double longitude}) {
    return _CoordinatesChanged(
      latitude: latitude,
      longitude: longitude,
    );
  }

// ignore: unused_element
  _DifficultyChanged difficultyChanged(int difficulty) {
    return _DifficultyChanged(
      difficulty,
    );
  }

// ignore: unused_element
  _ObjectivesChanged objectivesChanged(KtList<Objective> objectives) {
    return _ObjectivesChanged(
      objectives,
    );
  }

// ignore: unused_element
  _RewardsChanged rewardsChanged(KtSet<Reward> rewards) {
    return _RewardsChanged(
      rewards,
    );
  }

// ignore: unused_element
  _TagsChanged tagsChanged(KtSet<Tag> tags) {
    return _TagsChanged(
      tags,
    );
  }

// ignore: unused_element
  _Submitted submitted() {
    return const _Submitted();
  }
}

/// @nodoc
// ignore: unused_element
const $ExperienceEditingFormEvent = _$ExperienceEditingFormEventTearOff();

/// @nodoc
mixin _$ExperienceEditingFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Experience experience),
    @required TResult titleChanged(String title),
    @required TResult descriptionChanged(String description),
    @required TResult imagesChanged(List<Asset> imageAssets),
    @required TResult imageDeleted(String imageURL),
    @required TResult coordinatesChanged(double latitude, double longitude),
    @required TResult difficultyChanged(int difficulty),
    @required TResult objectivesChanged(KtList<Objective> objectives),
    @required TResult rewardsChanged(KtSet<Reward> rewards),
    @required TResult tagsChanged(KtSet<Tag> tags),
    @required TResult submitted(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Experience experience),
    TResult titleChanged(String title),
    TResult descriptionChanged(String description),
    TResult imagesChanged(List<Asset> imageAssets),
    TResult imageDeleted(String imageURL),
    TResult coordinatesChanged(double latitude, double longitude),
    TResult difficultyChanged(int difficulty),
    TResult objectivesChanged(KtList<Objective> objectives),
    TResult rewardsChanged(KtSet<Reward> rewards),
    TResult tagsChanged(KtSet<Tag> tags),
    TResult submitted(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult imagesChanged(_ImagesChanged value),
    @required TResult imageDeleted(_ImageDeleted value),
    @required TResult coordinatesChanged(_CoordinatesChanged value),
    @required TResult difficultyChanged(_DifficultyChanged value),
    @required TResult objectivesChanged(_ObjectivesChanged value),
    @required TResult rewardsChanged(_RewardsChanged value),
    @required TResult tagsChanged(_TagsChanged value),
    @required TResult submitted(_Submitted value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult imagesChanged(_ImagesChanged value),
    TResult imageDeleted(_ImageDeleted value),
    TResult coordinatesChanged(_CoordinatesChanged value),
    TResult difficultyChanged(_DifficultyChanged value),
    TResult objectivesChanged(_ObjectivesChanged value),
    TResult rewardsChanged(_RewardsChanged value),
    TResult tagsChanged(_TagsChanged value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ExperienceEditingFormEventCopyWith<$Res> {
  factory $ExperienceEditingFormEventCopyWith(ExperienceEditingFormEvent value, $Res Function(ExperienceEditingFormEvent) then) = _$ExperienceEditingFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExperienceEditingFormEventCopyWithImpl<$Res> implements $ExperienceEditingFormEventCopyWith<$Res> {
  _$ExperienceEditingFormEventCopyWithImpl(this._value, this._then);

  final ExperienceEditingFormEvent _value;

  // ignore: unused_field
  final $Res Function(ExperienceEditingFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(_Initialized value, $Res Function(_Initialized) then) = __$InitializedCopyWithImpl<$Res>;

  $Res call({Experience experience});

  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$ExperienceEditingFormEventCopyWithImpl<$Res> implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(_Initialized _value, $Res Function(_Initialized) _then) : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object experience = freezed,
  }) {
    return _then(_Initialized(
      experience == freezed ? _value.experience : experience as Experience,
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

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.experience) : assert(experience != null);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'ExperienceEditingFormEvent.initialized(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialized && (identical(other.experience, experience) || const DeepCollectionEquality().equals(other.experience, experience)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experience);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith => __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Experience experience),
    @required TResult titleChanged(String title),
    @required TResult descriptionChanged(String description),
    @required TResult imagesChanged(List<Asset> imageAssets),
    @required TResult imageDeleted(String imageURL),
    @required TResult coordinatesChanged(double latitude, double longitude),
    @required TResult difficultyChanged(int difficulty),
    @required TResult objectivesChanged(KtList<Objective> objectives),
    @required TResult rewardsChanged(KtSet<Reward> rewards),
    @required TResult tagsChanged(KtSet<Tag> tags),
    @required TResult submitted(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(imagesChanged != null);
    assert(imageDeleted != null);
    assert(coordinatesChanged != null);
    assert(difficultyChanged != null);
    assert(objectivesChanged != null);
    assert(rewardsChanged != null);
    assert(tagsChanged != null);
    assert(submitted != null);
    return initialized(experience);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Experience experience),
    TResult titleChanged(String title),
    TResult descriptionChanged(String description),
    TResult imagesChanged(List<Asset> imageAssets),
    TResult imageDeleted(String imageURL),
    TResult coordinatesChanged(double latitude, double longitude),
    TResult difficultyChanged(int difficulty),
    TResult objectivesChanged(KtList<Objective> objectives),
    TResult rewardsChanged(KtSet<Reward> rewards),
    TResult tagsChanged(KtSet<Tag> tags),
    TResult submitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult imagesChanged(_ImagesChanged value),
    @required TResult imageDeleted(_ImageDeleted value),
    @required TResult coordinatesChanged(_CoordinatesChanged value),
    @required TResult difficultyChanged(_DifficultyChanged value),
    @required TResult objectivesChanged(_ObjectivesChanged value),
    @required TResult rewardsChanged(_RewardsChanged value),
    @required TResult tagsChanged(_TagsChanged value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(imagesChanged != null);
    assert(imageDeleted != null);
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
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult imagesChanged(_ImagesChanged value),
    TResult imageDeleted(_ImageDeleted value),
    TResult coordinatesChanged(_CoordinatesChanged value),
    TResult difficultyChanged(_DifficultyChanged value),
    TResult objectivesChanged(_ObjectivesChanged value),
    TResult rewardsChanged(_RewardsChanged value),
    TResult tagsChanged(_TagsChanged value),
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

abstract class _Initialized implements ExperienceEditingFormEvent {
  const factory _Initialized(Experience experience) = _$_Initialized;

  Experience get experience;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$TitleChangedCopyWith<$Res> {
  factory _$TitleChangedCopyWith(_TitleChanged value, $Res Function(_TitleChanged) then) = __$TitleChangedCopyWithImpl<$Res>;

  $Res call({String title});
}

/// @nodoc
class __$TitleChangedCopyWithImpl<$Res> extends _$ExperienceEditingFormEventCopyWithImpl<$Res> implements _$TitleChangedCopyWith<$Res> {
  __$TitleChangedCopyWithImpl(_TitleChanged _value, $Res Function(_TitleChanged) _then) : super(_value, (v) => _then(v as _TitleChanged));

  @override
  _TitleChanged get _value => super._value as _TitleChanged;

  @override
  $Res call({
    Object title = freezed,
  }) {
    return _then(_TitleChanged(
      title == freezed ? _value.title : title as String,
    ));
  }
}

/// @nodoc
class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.title) : assert(title != null);

  @override
  final String title;

  @override
  String toString() {
    return 'ExperienceEditingFormEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TitleChanged && (identical(other.title, title) || const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$TitleChangedCopyWith<_TitleChanged> get copyWith => __$TitleChangedCopyWithImpl<_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Experience experience),
    @required TResult titleChanged(String title),
    @required TResult descriptionChanged(String description),
    @required TResult imagesChanged(List<Asset> imageAssets),
    @required TResult imageDeleted(String imageURL),
    @required TResult coordinatesChanged(double latitude, double longitude),
    @required TResult difficultyChanged(int difficulty),
    @required TResult objectivesChanged(KtList<Objective> objectives),
    @required TResult rewardsChanged(KtSet<Reward> rewards),
    @required TResult tagsChanged(KtSet<Tag> tags),
    @required TResult submitted(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(imagesChanged != null);
    assert(imageDeleted != null);
    assert(coordinatesChanged != null);
    assert(difficultyChanged != null);
    assert(objectivesChanged != null);
    assert(rewardsChanged != null);
    assert(tagsChanged != null);
    assert(submitted != null);
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Experience experience),
    TResult titleChanged(String title),
    TResult descriptionChanged(String description),
    TResult imagesChanged(List<Asset> imageAssets),
    TResult imageDeleted(String imageURL),
    TResult coordinatesChanged(double latitude, double longitude),
    TResult difficultyChanged(int difficulty),
    TResult objectivesChanged(KtList<Objective> objectives),
    TResult rewardsChanged(KtSet<Reward> rewards),
    TResult tagsChanged(KtSet<Tag> tags),
    TResult submitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult imagesChanged(_ImagesChanged value),
    @required TResult imageDeleted(_ImageDeleted value),
    @required TResult coordinatesChanged(_CoordinatesChanged value),
    @required TResult difficultyChanged(_DifficultyChanged value),
    @required TResult objectivesChanged(_ObjectivesChanged value),
    @required TResult rewardsChanged(_RewardsChanged value),
    @required TResult tagsChanged(_TagsChanged value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(imagesChanged != null);
    assert(imageDeleted != null);
    assert(coordinatesChanged != null);
    assert(difficultyChanged != null);
    assert(objectivesChanged != null);
    assert(rewardsChanged != null);
    assert(tagsChanged != null);
    assert(submitted != null);
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult imagesChanged(_ImagesChanged value),
    TResult imageDeleted(_ImageDeleted value),
    TResult coordinatesChanged(_CoordinatesChanged value),
    TResult difficultyChanged(_DifficultyChanged value),
    TResult objectivesChanged(_ObjectivesChanged value),
    TResult rewardsChanged(_RewardsChanged value),
    TResult tagsChanged(_TagsChanged value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements ExperienceEditingFormEvent {
  const factory _TitleChanged(String title) = _$_TitleChanged;

  String get title;
  @JsonKey(ignore: true)
  _$TitleChangedCopyWith<_TitleChanged> get copyWith;
}

/// @nodoc
abstract class _$DescriptionChangedCopyWith<$Res> {
  factory _$DescriptionChangedCopyWith(_DescriptionChanged value, $Res Function(_DescriptionChanged) then) = __$DescriptionChangedCopyWithImpl<$Res>;

  $Res call({String description});
}

/// @nodoc
class __$DescriptionChangedCopyWithImpl<$Res> extends _$ExperienceEditingFormEventCopyWithImpl<$Res> implements _$DescriptionChangedCopyWith<$Res> {
  __$DescriptionChangedCopyWithImpl(_DescriptionChanged _value, $Res Function(_DescriptionChanged) _then) : super(_value, (v) => _then(v as _DescriptionChanged));

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
    return 'ExperienceEditingFormEvent.descriptionChanged(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DescriptionChanged && (identical(other.description, description) || const DeepCollectionEquality().equals(other.description, description)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith => __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Experience experience),
    @required TResult titleChanged(String title),
    @required TResult descriptionChanged(String description),
    @required TResult imagesChanged(List<Asset> imageAssets),
    @required TResult imageDeleted(String imageURL),
    @required TResult coordinatesChanged(double latitude, double longitude),
    @required TResult difficultyChanged(int difficulty),
    @required TResult objectivesChanged(KtList<Objective> objectives),
    @required TResult rewardsChanged(KtSet<Reward> rewards),
    @required TResult tagsChanged(KtSet<Tag> tags),
    @required TResult submitted(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(imagesChanged != null);
    assert(imageDeleted != null);
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
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Experience experience),
    TResult titleChanged(String title),
    TResult descriptionChanged(String description),
    TResult imagesChanged(List<Asset> imageAssets),
    TResult imageDeleted(String imageURL),
    TResult coordinatesChanged(double latitude, double longitude),
    TResult difficultyChanged(int difficulty),
    TResult objectivesChanged(KtList<Objective> objectives),
    TResult rewardsChanged(KtSet<Reward> rewards),
    TResult tagsChanged(KtSet<Tag> tags),
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
    @required TResult titleChanged(_TitleChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult imagesChanged(_ImagesChanged value),
    @required TResult imageDeleted(_ImageDeleted value),
    @required TResult coordinatesChanged(_CoordinatesChanged value),
    @required TResult difficultyChanged(_DifficultyChanged value),
    @required TResult objectivesChanged(_ObjectivesChanged value),
    @required TResult rewardsChanged(_RewardsChanged value),
    @required TResult tagsChanged(_TagsChanged value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(imagesChanged != null);
    assert(imageDeleted != null);
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
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult imagesChanged(_ImagesChanged value),
    TResult imageDeleted(_ImageDeleted value),
    TResult coordinatesChanged(_CoordinatesChanged value),
    TResult difficultyChanged(_DifficultyChanged value),
    TResult objectivesChanged(_ObjectivesChanged value),
    TResult rewardsChanged(_RewardsChanged value),
    TResult tagsChanged(_TagsChanged value),
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

abstract class _DescriptionChanged implements ExperienceEditingFormEvent {
  const factory _DescriptionChanged(String description) = _$_DescriptionChanged;

  String get description;
  @JsonKey(ignore: true)
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith;
}

/// @nodoc
abstract class _$ImagesChangedCopyWith<$Res> {
  factory _$ImagesChangedCopyWith(_ImagesChanged value, $Res Function(_ImagesChanged) then) = __$ImagesChangedCopyWithImpl<$Res>;

  $Res call({List<Asset> imageAssets});
}

/// @nodoc
class __$ImagesChangedCopyWithImpl<$Res> extends _$ExperienceEditingFormEventCopyWithImpl<$Res> implements _$ImagesChangedCopyWith<$Res> {
  __$ImagesChangedCopyWithImpl(_ImagesChanged _value, $Res Function(_ImagesChanged) _then) : super(_value, (v) => _then(v as _ImagesChanged));

  @override
  _ImagesChanged get _value => super._value as _ImagesChanged;

  @override
  $Res call({
    Object imageAssets = freezed,
  }) {
    return _then(_ImagesChanged(
      imageAssets == freezed ? _value.imageAssets : imageAssets as List<Asset>,
    ));
  }
}

/// @nodoc
class _$_ImagesChanged implements _ImagesChanged {
  const _$_ImagesChanged(this.imageAssets) : assert(imageAssets != null);

  @override
  final List<Asset> imageAssets;

  @override
  String toString() {
    return 'ExperienceEditingFormEvent.imagesChanged(imageAssets: $imageAssets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ImagesChanged && (identical(other.imageAssets, imageAssets) || const DeepCollectionEquality().equals(other.imageAssets, imageAssets)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageAssets);

  @JsonKey(ignore: true)
  @override
  _$ImagesChangedCopyWith<_ImagesChanged> get copyWith => __$ImagesChangedCopyWithImpl<_ImagesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Experience experience),
    @required TResult titleChanged(String title),
    @required TResult descriptionChanged(String description),
    @required TResult imagesChanged(List<Asset> imageAssets),
    @required TResult imageDeleted(String imageURL),
    @required TResult coordinatesChanged(double latitude, double longitude),
    @required TResult difficultyChanged(int difficulty),
    @required TResult objectivesChanged(KtList<Objective> objectives),
    @required TResult rewardsChanged(KtSet<Reward> rewards),
    @required TResult tagsChanged(KtSet<Tag> tags),
    @required TResult submitted(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(imagesChanged != null);
    assert(imageDeleted != null);
    assert(coordinatesChanged != null);
    assert(difficultyChanged != null);
    assert(objectivesChanged != null);
    assert(rewardsChanged != null);
    assert(tagsChanged != null);
    assert(submitted != null);
    return imagesChanged(imageAssets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Experience experience),
    TResult titleChanged(String title),
    TResult descriptionChanged(String description),
    TResult imagesChanged(List<Asset> imageAssets),
    TResult imageDeleted(String imageURL),
    TResult coordinatesChanged(double latitude, double longitude),
    TResult difficultyChanged(int difficulty),
    TResult objectivesChanged(KtList<Objective> objectives),
    TResult rewardsChanged(KtSet<Reward> rewards),
    TResult tagsChanged(KtSet<Tag> tags),
    TResult submitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imagesChanged != null) {
      return imagesChanged(imageAssets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult imagesChanged(_ImagesChanged value),
    @required TResult imageDeleted(_ImageDeleted value),
    @required TResult coordinatesChanged(_CoordinatesChanged value),
    @required TResult difficultyChanged(_DifficultyChanged value),
    @required TResult objectivesChanged(_ObjectivesChanged value),
    @required TResult rewardsChanged(_RewardsChanged value),
    @required TResult tagsChanged(_TagsChanged value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(imagesChanged != null);
    assert(imageDeleted != null);
    assert(coordinatesChanged != null);
    assert(difficultyChanged != null);
    assert(objectivesChanged != null);
    assert(rewardsChanged != null);
    assert(tagsChanged != null);
    assert(submitted != null);
    return imagesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult imagesChanged(_ImagesChanged value),
    TResult imageDeleted(_ImageDeleted value),
    TResult coordinatesChanged(_CoordinatesChanged value),
    TResult difficultyChanged(_DifficultyChanged value),
    TResult objectivesChanged(_ObjectivesChanged value),
    TResult rewardsChanged(_RewardsChanged value),
    TResult tagsChanged(_TagsChanged value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imagesChanged != null) {
      return imagesChanged(this);
    }
    return orElse();
  }
}

abstract class _ImagesChanged implements ExperienceEditingFormEvent {
  const factory _ImagesChanged(List<Asset> imageAssets) = _$_ImagesChanged;

  List<Asset> get imageAssets;
  @JsonKey(ignore: true)
  _$ImagesChangedCopyWith<_ImagesChanged> get copyWith;
}

/// @nodoc
abstract class _$ImageDeletedCopyWith<$Res> {
  factory _$ImageDeletedCopyWith(_ImageDeleted value, $Res Function(_ImageDeleted) then) = __$ImageDeletedCopyWithImpl<$Res>;

  $Res call({String imageURL});
}

/// @nodoc
class __$ImageDeletedCopyWithImpl<$Res> extends _$ExperienceEditingFormEventCopyWithImpl<$Res> implements _$ImageDeletedCopyWith<$Res> {
  __$ImageDeletedCopyWithImpl(_ImageDeleted _value, $Res Function(_ImageDeleted) _then) : super(_value, (v) => _then(v as _ImageDeleted));

  @override
  _ImageDeleted get _value => super._value as _ImageDeleted;

  @override
  $Res call({
    Object imageURL = freezed,
  }) {
    return _then(_ImageDeleted(
      imageURL == freezed ? _value.imageURL : imageURL as String,
    ));
  }
}

/// @nodoc
class _$_ImageDeleted implements _ImageDeleted {
  const _$_ImageDeleted(this.imageURL) : assert(imageURL != null);

  @override
  final String imageURL;

  @override
  String toString() {
    return 'ExperienceEditingFormEvent.imageDeleted(imageURL: $imageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ImageDeleted && (identical(other.imageURL, imageURL) || const DeepCollectionEquality().equals(other.imageURL, imageURL)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageURL);

  @JsonKey(ignore: true)
  @override
  _$ImageDeletedCopyWith<_ImageDeleted> get copyWith => __$ImageDeletedCopyWithImpl<_ImageDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Experience experience),
    @required TResult titleChanged(String title),
    @required TResult descriptionChanged(String description),
    @required TResult imagesChanged(List<Asset> imageAssets),
    @required TResult imageDeleted(String imageURL),
    @required TResult coordinatesChanged(double latitude, double longitude),
    @required TResult difficultyChanged(int difficulty),
    @required TResult objectivesChanged(KtList<Objective> objectives),
    @required TResult rewardsChanged(KtSet<Reward> rewards),
    @required TResult tagsChanged(KtSet<Tag> tags),
    @required TResult submitted(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(imagesChanged != null);
    assert(imageDeleted != null);
    assert(coordinatesChanged != null);
    assert(difficultyChanged != null);
    assert(objectivesChanged != null);
    assert(rewardsChanged != null);
    assert(tagsChanged != null);
    assert(submitted != null);
    return imageDeleted(imageURL);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Experience experience),
    TResult titleChanged(String title),
    TResult descriptionChanged(String description),
    TResult imagesChanged(List<Asset> imageAssets),
    TResult imageDeleted(String imageURL),
    TResult coordinatesChanged(double latitude, double longitude),
    TResult difficultyChanged(int difficulty),
    TResult objectivesChanged(KtList<Objective> objectives),
    TResult rewardsChanged(KtSet<Reward> rewards),
    TResult tagsChanged(KtSet<Tag> tags),
    TResult submitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageDeleted != null) {
      return imageDeleted(imageURL);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult imagesChanged(_ImagesChanged value),
    @required TResult imageDeleted(_ImageDeleted value),
    @required TResult coordinatesChanged(_CoordinatesChanged value),
    @required TResult difficultyChanged(_DifficultyChanged value),
    @required TResult objectivesChanged(_ObjectivesChanged value),
    @required TResult rewardsChanged(_RewardsChanged value),
    @required TResult tagsChanged(_TagsChanged value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(imagesChanged != null);
    assert(imageDeleted != null);
    assert(coordinatesChanged != null);
    assert(difficultyChanged != null);
    assert(objectivesChanged != null);
    assert(rewardsChanged != null);
    assert(tagsChanged != null);
    assert(submitted != null);
    return imageDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult imagesChanged(_ImagesChanged value),
    TResult imageDeleted(_ImageDeleted value),
    TResult coordinatesChanged(_CoordinatesChanged value),
    TResult difficultyChanged(_DifficultyChanged value),
    TResult objectivesChanged(_ObjectivesChanged value),
    TResult rewardsChanged(_RewardsChanged value),
    TResult tagsChanged(_TagsChanged value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageDeleted != null) {
      return imageDeleted(this);
    }
    return orElse();
  }
}

abstract class _ImageDeleted implements ExperienceEditingFormEvent {
  const factory _ImageDeleted(String imageURL) = _$_ImageDeleted;

  String get imageURL;
  @JsonKey(ignore: true)
  _$ImageDeletedCopyWith<_ImageDeleted> get copyWith;
}

/// @nodoc
abstract class _$CoordinatesChangedCopyWith<$Res> {
  factory _$CoordinatesChangedCopyWith(_CoordinatesChanged value, $Res Function(_CoordinatesChanged) then) = __$CoordinatesChangedCopyWithImpl<$Res>;

  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$CoordinatesChangedCopyWithImpl<$Res> extends _$ExperienceEditingFormEventCopyWithImpl<$Res> implements _$CoordinatesChangedCopyWith<$Res> {
  __$CoordinatesChangedCopyWithImpl(_CoordinatesChanged _value, $Res Function(_CoordinatesChanged) _then) : super(_value, (v) => _then(v as _CoordinatesChanged));

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

/// @nodoc
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
    return 'ExperienceEditingFormEvent.coordinatesChanged(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CoordinatesChanged &&
            (identical(other.latitude, latitude) || const DeepCollectionEquality().equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) || const DeepCollectionEquality().equals(other.longitude, longitude)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(latitude) ^ const DeepCollectionEquality().hash(longitude);

  @JsonKey(ignore: true)
  @override
  _$CoordinatesChangedCopyWith<_CoordinatesChanged> get copyWith => __$CoordinatesChangedCopyWithImpl<_CoordinatesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Experience experience),
    @required TResult titleChanged(String title),
    @required TResult descriptionChanged(String description),
    @required TResult imagesChanged(List<Asset> imageAssets),
    @required TResult imageDeleted(String imageURL),
    @required TResult coordinatesChanged(double latitude, double longitude),
    @required TResult difficultyChanged(int difficulty),
    @required TResult objectivesChanged(KtList<Objective> objectives),
    @required TResult rewardsChanged(KtSet<Reward> rewards),
    @required TResult tagsChanged(KtSet<Tag> tags),
    @required TResult submitted(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(imagesChanged != null);
    assert(imageDeleted != null);
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
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Experience experience),
    TResult titleChanged(String title),
    TResult descriptionChanged(String description),
    TResult imagesChanged(List<Asset> imageAssets),
    TResult imageDeleted(String imageURL),
    TResult coordinatesChanged(double latitude, double longitude),
    TResult difficultyChanged(int difficulty),
    TResult objectivesChanged(KtList<Objective> objectives),
    TResult rewardsChanged(KtSet<Reward> rewards),
    TResult tagsChanged(KtSet<Tag> tags),
    TResult submitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (coordinatesChanged != null) {
      return coordinatesChanged(latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult imagesChanged(_ImagesChanged value),
    @required TResult imageDeleted(_ImageDeleted value),
    @required TResult coordinatesChanged(_CoordinatesChanged value),
    @required TResult difficultyChanged(_DifficultyChanged value),
    @required TResult objectivesChanged(_ObjectivesChanged value),
    @required TResult rewardsChanged(_RewardsChanged value),
    @required TResult tagsChanged(_TagsChanged value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(imagesChanged != null);
    assert(imageDeleted != null);
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
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult imagesChanged(_ImagesChanged value),
    TResult imageDeleted(_ImageDeleted value),
    TResult coordinatesChanged(_CoordinatesChanged value),
    TResult difficultyChanged(_DifficultyChanged value),
    TResult objectivesChanged(_ObjectivesChanged value),
    TResult rewardsChanged(_RewardsChanged value),
    TResult tagsChanged(_TagsChanged value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (coordinatesChanged != null) {
      return coordinatesChanged(this);
    }
    return orElse();
  }
}

abstract class _CoordinatesChanged implements ExperienceEditingFormEvent {
  const factory _CoordinatesChanged({@required double latitude, @required double longitude}) = _$_CoordinatesChanged;

  double get latitude;

  double get longitude;

  @JsonKey(ignore: true)
  _$CoordinatesChangedCopyWith<_CoordinatesChanged> get copyWith;
}

/// @nodoc
abstract class _$DifficultyChangedCopyWith<$Res> {
  factory _$DifficultyChangedCopyWith(_DifficultyChanged value, $Res Function(_DifficultyChanged) then) = __$DifficultyChangedCopyWithImpl<$Res>;

  $Res call({int difficulty});
}

/// @nodoc
class __$DifficultyChangedCopyWithImpl<$Res> extends _$ExperienceEditingFormEventCopyWithImpl<$Res> implements _$DifficultyChangedCopyWith<$Res> {
  __$DifficultyChangedCopyWithImpl(_DifficultyChanged _value, $Res Function(_DifficultyChanged) _then) : super(_value, (v) => _then(v as _DifficultyChanged));

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

/// @nodoc
class _$_DifficultyChanged implements _DifficultyChanged {
  const _$_DifficultyChanged(this.difficulty) : assert(difficulty != null);

  @override
  final int difficulty;

  @override
  String toString() {
    return 'ExperienceEditingFormEvent.difficultyChanged(difficulty: $difficulty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DifficultyChanged && (identical(other.difficulty, difficulty) || const DeepCollectionEquality().equals(other.difficulty, difficulty)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(difficulty);

  @JsonKey(ignore: true)
  @override
  _$DifficultyChangedCopyWith<_DifficultyChanged> get copyWith => __$DifficultyChangedCopyWithImpl<_DifficultyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Experience experience),
    @required TResult titleChanged(String title),
    @required TResult descriptionChanged(String description),
    @required TResult imagesChanged(List<Asset> imageAssets),
    @required TResult imageDeleted(String imageURL),
    @required TResult coordinatesChanged(double latitude, double longitude),
    @required TResult difficultyChanged(int difficulty),
    @required TResult objectivesChanged(KtList<Objective> objectives),
    @required TResult rewardsChanged(KtSet<Reward> rewards),
    @required TResult tagsChanged(KtSet<Tag> tags),
    @required TResult submitted(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(imagesChanged != null);
    assert(imageDeleted != null);
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
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Experience experience),
    TResult titleChanged(String title),
    TResult descriptionChanged(String description),
    TResult imagesChanged(List<Asset> imageAssets),
    TResult imageDeleted(String imageURL),
    TResult coordinatesChanged(double latitude, double longitude),
    TResult difficultyChanged(int difficulty),
    TResult objectivesChanged(KtList<Objective> objectives),
    TResult rewardsChanged(KtSet<Reward> rewards),
    TResult tagsChanged(KtSet<Tag> tags),
    TResult submitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (difficultyChanged != null) {
      return difficultyChanged(difficulty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult imagesChanged(_ImagesChanged value),
    @required TResult imageDeleted(_ImageDeleted value),
    @required TResult coordinatesChanged(_CoordinatesChanged value),
    @required TResult difficultyChanged(_DifficultyChanged value),
    @required TResult objectivesChanged(_ObjectivesChanged value),
    @required TResult rewardsChanged(_RewardsChanged value),
    @required TResult tagsChanged(_TagsChanged value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(imagesChanged != null);
    assert(imageDeleted != null);
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
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult imagesChanged(_ImagesChanged value),
    TResult imageDeleted(_ImageDeleted value),
    TResult coordinatesChanged(_CoordinatesChanged value),
    TResult difficultyChanged(_DifficultyChanged value),
    TResult objectivesChanged(_ObjectivesChanged value),
    TResult rewardsChanged(_RewardsChanged value),
    TResult tagsChanged(_TagsChanged value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (difficultyChanged != null) {
      return difficultyChanged(this);
    }
    return orElse();
  }
}

abstract class _DifficultyChanged implements ExperienceEditingFormEvent {
  const factory _DifficultyChanged(int difficulty) = _$_DifficultyChanged;

  int get difficulty;
  @JsonKey(ignore: true)
  _$DifficultyChangedCopyWith<_DifficultyChanged> get copyWith;
}

/// @nodoc
abstract class _$ObjectivesChangedCopyWith<$Res> {
  factory _$ObjectivesChangedCopyWith(_ObjectivesChanged value, $Res Function(_ObjectivesChanged) then) = __$ObjectivesChangedCopyWithImpl<$Res>;

  $Res call({KtList<Objective> objectives});
}

/// @nodoc
class __$ObjectivesChangedCopyWithImpl<$Res> extends _$ExperienceEditingFormEventCopyWithImpl<$Res> implements _$ObjectivesChangedCopyWith<$Res> {
  __$ObjectivesChangedCopyWithImpl(_ObjectivesChanged _value, $Res Function(_ObjectivesChanged) _then) : super(_value, (v) => _then(v as _ObjectivesChanged));

  @override
  _ObjectivesChanged get _value => super._value as _ObjectivesChanged;

  @override
  $Res call({
    Object objectives = freezed,
  }) {
    return _then(_ObjectivesChanged(
      objectives == freezed ? _value.objectives : objectives as KtList<Objective>,
    ));
  }
}

/// @nodoc
class _$_ObjectivesChanged implements _ObjectivesChanged {
  const _$_ObjectivesChanged(this.objectives) : assert(objectives != null);

  @override
  final KtList<Objective> objectives;

  @override
  String toString() {
    return 'ExperienceEditingFormEvent.objectivesChanged(objectives: $objectives)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ObjectivesChanged && (identical(other.objectives, objectives) || const DeepCollectionEquality().equals(other.objectives, objectives)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(objectives);

  @JsonKey(ignore: true)
  @override
  _$ObjectivesChangedCopyWith<_ObjectivesChanged> get copyWith => __$ObjectivesChangedCopyWithImpl<_ObjectivesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Experience experience),
    @required TResult titleChanged(String title),
    @required TResult descriptionChanged(String description),
    @required TResult imagesChanged(List<Asset> imageAssets),
    @required TResult imageDeleted(String imageURL),
    @required TResult coordinatesChanged(double latitude, double longitude),
    @required TResult difficultyChanged(int difficulty),
    @required TResult objectivesChanged(KtList<Objective> objectives),
    @required TResult rewardsChanged(KtSet<Reward> rewards),
    @required TResult tagsChanged(KtSet<Tag> tags),
    @required TResult submitted(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(imagesChanged != null);
    assert(imageDeleted != null);
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
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Experience experience),
    TResult titleChanged(String title),
    TResult descriptionChanged(String description),
    TResult imagesChanged(List<Asset> imageAssets),
    TResult imageDeleted(String imageURL),
    TResult coordinatesChanged(double latitude, double longitude),
    TResult difficultyChanged(int difficulty),
    TResult objectivesChanged(KtList<Objective> objectives),
    TResult rewardsChanged(KtSet<Reward> rewards),
    TResult tagsChanged(KtSet<Tag> tags),
    TResult submitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (objectivesChanged != null) {
      return objectivesChanged(objectives);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult imagesChanged(_ImagesChanged value),
    @required TResult imageDeleted(_ImageDeleted value),
    @required TResult coordinatesChanged(_CoordinatesChanged value),
    @required TResult difficultyChanged(_DifficultyChanged value),
    @required TResult objectivesChanged(_ObjectivesChanged value),
    @required TResult rewardsChanged(_RewardsChanged value),
    @required TResult tagsChanged(_TagsChanged value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(imagesChanged != null);
    assert(imageDeleted != null);
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
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult imagesChanged(_ImagesChanged value),
    TResult imageDeleted(_ImageDeleted value),
    TResult coordinatesChanged(_CoordinatesChanged value),
    TResult difficultyChanged(_DifficultyChanged value),
    TResult objectivesChanged(_ObjectivesChanged value),
    TResult rewardsChanged(_RewardsChanged value),
    TResult tagsChanged(_TagsChanged value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (objectivesChanged != null) {
      return objectivesChanged(this);
    }
    return orElse();
  }
}

abstract class _ObjectivesChanged implements ExperienceEditingFormEvent {
  const factory _ObjectivesChanged(KtList<Objective> objectives) = _$_ObjectivesChanged;

  KtList<Objective> get objectives;

  @JsonKey(ignore: true)
  _$ObjectivesChangedCopyWith<_ObjectivesChanged> get copyWith;
}

/// @nodoc
abstract class _$RewardsChangedCopyWith<$Res> {
  factory _$RewardsChangedCopyWith(_RewardsChanged value, $Res Function(_RewardsChanged) then) = __$RewardsChangedCopyWithImpl<$Res>;

  $Res call({KtSet<Reward> rewards});
}

/// @nodoc
class __$RewardsChangedCopyWithImpl<$Res> extends _$ExperienceEditingFormEventCopyWithImpl<$Res> implements _$RewardsChangedCopyWith<$Res> {
  __$RewardsChangedCopyWithImpl(_RewardsChanged _value, $Res Function(_RewardsChanged) _then) : super(_value, (v) => _then(v as _RewardsChanged));

  @override
  _RewardsChanged get _value => super._value as _RewardsChanged;

  @override
  $Res call({
    Object rewards = freezed,
  }) {
    return _then(_RewardsChanged(
      rewards == freezed ? _value.rewards : rewards as KtSet<Reward>,
    ));
  }
}

/// @nodoc
class _$_RewardsChanged implements _RewardsChanged {
  const _$_RewardsChanged(this.rewards) : assert(rewards != null);

  @override
  final KtSet<Reward> rewards;

  @override
  String toString() {
    return 'ExperienceEditingFormEvent.rewardsChanged(rewards: $rewards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RewardsChanged && (identical(other.rewards, rewards) || const DeepCollectionEquality().equals(other.rewards, rewards)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(rewards);

  @JsonKey(ignore: true)
  @override
  _$RewardsChangedCopyWith<_RewardsChanged> get copyWith => __$RewardsChangedCopyWithImpl<_RewardsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Experience experience),
    @required TResult titleChanged(String title),
    @required TResult descriptionChanged(String description),
    @required TResult imagesChanged(List<Asset> imageAssets),
    @required TResult imageDeleted(String imageURL),
    @required TResult coordinatesChanged(double latitude, double longitude),
    @required TResult difficultyChanged(int difficulty),
    @required TResult objectivesChanged(KtList<Objective> objectives),
    @required TResult rewardsChanged(KtSet<Reward> rewards),
    @required TResult tagsChanged(KtSet<Tag> tags),
    @required TResult submitted(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(imagesChanged != null);
    assert(imageDeleted != null);
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
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Experience experience),
    TResult titleChanged(String title),
    TResult descriptionChanged(String description),
    TResult imagesChanged(List<Asset> imageAssets),
    TResult imageDeleted(String imageURL),
    TResult coordinatesChanged(double latitude, double longitude),
    TResult difficultyChanged(int difficulty),
    TResult objectivesChanged(KtList<Objective> objectives),
    TResult rewardsChanged(KtSet<Reward> rewards),
    TResult tagsChanged(KtSet<Tag> tags),
    TResult submitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (rewardsChanged != null) {
      return rewardsChanged(rewards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult imagesChanged(_ImagesChanged value),
    @required TResult imageDeleted(_ImageDeleted value),
    @required TResult coordinatesChanged(_CoordinatesChanged value),
    @required TResult difficultyChanged(_DifficultyChanged value),
    @required TResult objectivesChanged(_ObjectivesChanged value),
    @required TResult rewardsChanged(_RewardsChanged value),
    @required TResult tagsChanged(_TagsChanged value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(imagesChanged != null);
    assert(imageDeleted != null);
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
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult imagesChanged(_ImagesChanged value),
    TResult imageDeleted(_ImageDeleted value),
    TResult coordinatesChanged(_CoordinatesChanged value),
    TResult difficultyChanged(_DifficultyChanged value),
    TResult objectivesChanged(_ObjectivesChanged value),
    TResult rewardsChanged(_RewardsChanged value),
    TResult tagsChanged(_TagsChanged value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (rewardsChanged != null) {
      return rewardsChanged(this);
    }
    return orElse();
  }
}

abstract class _RewardsChanged implements ExperienceEditingFormEvent {
  const factory _RewardsChanged(KtSet<Reward> rewards) = _$_RewardsChanged;

  KtSet<Reward> get rewards;
  @JsonKey(ignore: true)
  _$RewardsChangedCopyWith<_RewardsChanged> get copyWith;
}

/// @nodoc
abstract class _$TagsChangedCopyWith<$Res> {
  factory _$TagsChangedCopyWith(_TagsChanged value, $Res Function(_TagsChanged) then) = __$TagsChangedCopyWithImpl<$Res>;

  $Res call({KtSet<Tag> tags});
}

/// @nodoc
class __$TagsChangedCopyWithImpl<$Res> extends _$ExperienceEditingFormEventCopyWithImpl<$Res> implements _$TagsChangedCopyWith<$Res> {
  __$TagsChangedCopyWithImpl(_TagsChanged _value, $Res Function(_TagsChanged) _then) : super(_value, (v) => _then(v as _TagsChanged));

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
    return 'ExperienceEditingFormEvent.tagsChanged(tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TagsChanged && (identical(other.tags, tags) || const DeepCollectionEquality().equals(other.tags, tags)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(tags);

  @JsonKey(ignore: true)
  @override
  _$TagsChangedCopyWith<_TagsChanged> get copyWith => __$TagsChangedCopyWithImpl<_TagsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Experience experience),
    @required TResult titleChanged(String title),
    @required TResult descriptionChanged(String description),
    @required TResult imagesChanged(List<Asset> imageAssets),
    @required TResult imageDeleted(String imageURL),
    @required TResult coordinatesChanged(double latitude, double longitude),
    @required TResult difficultyChanged(int difficulty),
    @required TResult objectivesChanged(KtList<Objective> objectives),
    @required TResult rewardsChanged(KtSet<Reward> rewards),
    @required TResult tagsChanged(KtSet<Tag> tags),
    @required TResult submitted(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(imagesChanged != null);
    assert(imageDeleted != null);
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
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Experience experience),
    TResult titleChanged(String title),
    TResult descriptionChanged(String description),
    TResult imagesChanged(List<Asset> imageAssets),
    TResult imageDeleted(String imageURL),
    TResult coordinatesChanged(double latitude, double longitude),
    TResult difficultyChanged(int difficulty),
    TResult objectivesChanged(KtList<Objective> objectives),
    TResult rewardsChanged(KtSet<Reward> rewards),
    TResult tagsChanged(KtSet<Tag> tags),
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
    @required TResult titleChanged(_TitleChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult imagesChanged(_ImagesChanged value),
    @required TResult imageDeleted(_ImageDeleted value),
    @required TResult coordinatesChanged(_CoordinatesChanged value),
    @required TResult difficultyChanged(_DifficultyChanged value),
    @required TResult objectivesChanged(_ObjectivesChanged value),
    @required TResult rewardsChanged(_RewardsChanged value),
    @required TResult tagsChanged(_TagsChanged value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(imagesChanged != null);
    assert(imageDeleted != null);
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
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult imagesChanged(_ImagesChanged value),
    TResult imageDeleted(_ImageDeleted value),
    TResult coordinatesChanged(_CoordinatesChanged value),
    TResult difficultyChanged(_DifficultyChanged value),
    TResult objectivesChanged(_ObjectivesChanged value),
    TResult rewardsChanged(_RewardsChanged value),
    TResult tagsChanged(_TagsChanged value),
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

abstract class _TagsChanged implements ExperienceEditingFormEvent {
  const factory _TagsChanged(KtSet<Tag> tags) = _$_TagsChanged;

  KtSet<Tag> get tags;
  @JsonKey(ignore: true)
  _$TagsChangedCopyWith<_TagsChanged> get copyWith;
}

/// @nodoc
abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(_Submitted value, $Res Function(_Submitted) then) = __$SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmittedCopyWithImpl<$Res> extends _$ExperienceEditingFormEventCopyWithImpl<$Res> implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(_Submitted _value, $Res Function(_Submitted) _then) : super(_value, (v) => _then(v as _Submitted));

  @override
  _Submitted get _value => super._value as _Submitted;
}

/// @nodoc
class _$_Submitted implements _Submitted {
  const _$_Submitted();

  @override
  String toString() {
    return 'ExperienceEditingFormEvent.submitted()';
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
    @required TResult initialized(Experience experience),
    @required TResult titleChanged(String title),
    @required TResult descriptionChanged(String description),
    @required TResult imagesChanged(List<Asset> imageAssets),
    @required TResult imageDeleted(String imageURL),
    @required TResult coordinatesChanged(double latitude, double longitude),
    @required TResult difficultyChanged(int difficulty),
    @required TResult objectivesChanged(KtList<Objective> objectives),
    @required TResult rewardsChanged(KtSet<Reward> rewards),
    @required TResult tagsChanged(KtSet<Tag> tags),
    @required TResult submitted(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(imagesChanged != null);
    assert(imageDeleted != null);
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
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Experience experience),
    TResult titleChanged(String title),
    TResult descriptionChanged(String description),
    TResult imagesChanged(List<Asset> imageAssets),
    TResult imageDeleted(String imageURL),
    TResult coordinatesChanged(double latitude, double longitude),
    TResult difficultyChanged(int difficulty),
    TResult objectivesChanged(KtList<Objective> objectives),
    TResult rewardsChanged(KtSet<Reward> rewards),
    TResult tagsChanged(KtSet<Tag> tags),
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
    @required TResult titleChanged(_TitleChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult imagesChanged(_ImagesChanged value),
    @required TResult imageDeleted(_ImageDeleted value),
    @required TResult coordinatesChanged(_CoordinatesChanged value),
    @required TResult difficultyChanged(_DifficultyChanged value),
    @required TResult objectivesChanged(_ObjectivesChanged value),
    @required TResult rewardsChanged(_RewardsChanged value),
    @required TResult tagsChanged(_TagsChanged value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(imagesChanged != null);
    assert(imageDeleted != null);
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
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult imagesChanged(_ImagesChanged value),
    TResult imageDeleted(_ImageDeleted value),
    TResult coordinatesChanged(_CoordinatesChanged value),
    TResult difficultyChanged(_DifficultyChanged value),
    TResult objectivesChanged(_ObjectivesChanged value),
    TResult rewardsChanged(_RewardsChanged value),
    TResult tagsChanged(_TagsChanged value),
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

abstract class _Submitted implements ExperienceEditingFormEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
class _$ExperienceEditingFormStateTearOff {
  const _$ExperienceEditingFormStateTearOff();

// ignore: unused_element
  _ExperienceEditingFormState call(
      {@required Experience experience,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required bool loadedCoordinates,
      @required Option<Either<Failure, Unit>> failureOrSuccessOption}) {
    return _ExperienceEditingFormState(
      experience: experience,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      loadedCoordinates: loadedCoordinates,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ExperienceEditingFormState = _$ExperienceEditingFormStateTearOff();

/// @nodoc
mixin _$ExperienceEditingFormState {
  Experience get experience;
  bool get showErrorMessages;
  bool get isSubmitting;
  bool get loadedCoordinates;
  Option<Either<Failure, Unit>> get failureOrSuccessOption;

  @JsonKey(ignore: true)
  $ExperienceEditingFormStateCopyWith<ExperienceEditingFormState> get copyWith;
}

/// @nodoc
abstract class $ExperienceEditingFormStateCopyWith<$Res> {
  factory $ExperienceEditingFormStateCopyWith(ExperienceEditingFormState value, $Res Function(ExperienceEditingFormState) then) = _$ExperienceEditingFormStateCopyWithImpl<$Res>;

  $Res call({Experience experience, bool showErrorMessages, bool isSubmitting, bool loadedCoordinates, Option<Either<Failure, Unit>> failureOrSuccessOption});

  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class _$ExperienceEditingFormStateCopyWithImpl<$Res> implements $ExperienceEditingFormStateCopyWith<$Res> {
  _$ExperienceEditingFormStateCopyWithImpl(this._value, this._then);

  final ExperienceEditingFormState _value;

  // ignore: unused_field
  final $Res Function(ExperienceEditingFormState) _then;

  @override
  $Res call({
    Object experience = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object loadedCoordinates = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      experience: experience == freezed ? _value.experience : experience as Experience,
      showErrorMessages: showErrorMessages == freezed ? _value.showErrorMessages : showErrorMessages as bool,
      isSubmitting: isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      loadedCoordinates: loadedCoordinates == freezed ? _value.loadedCoordinates : loadedCoordinates as bool,
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

/// @nodoc
abstract class _$ExperienceEditingFormStateCopyWith<$Res> implements $ExperienceEditingFormStateCopyWith<$Res> {
  factory _$ExperienceEditingFormStateCopyWith(_ExperienceEditingFormState value, $Res Function(_ExperienceEditingFormState) then) = __$ExperienceEditingFormStateCopyWithImpl<$Res>;

  @override
  $Res call({Experience experience, bool showErrorMessages, bool isSubmitting, bool loadedCoordinates, Option<Either<Failure, Unit>> failureOrSuccessOption});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class __$ExperienceEditingFormStateCopyWithImpl<$Res> extends _$ExperienceEditingFormStateCopyWithImpl<$Res> implements _$ExperienceEditingFormStateCopyWith<$Res> {
  __$ExperienceEditingFormStateCopyWithImpl(_ExperienceEditingFormState _value, $Res Function(_ExperienceEditingFormState) _then) : super(_value, (v) => _then(v as _ExperienceEditingFormState));

  @override
  _ExperienceEditingFormState get _value => super._value as _ExperienceEditingFormState;

  @override
  $Res call({
    Object experience = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object loadedCoordinates = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_ExperienceEditingFormState(
      experience: experience == freezed ? _value.experience : experience as Experience,
      showErrorMessages: showErrorMessages == freezed ? _value.showErrorMessages : showErrorMessages as bool,
      isSubmitting: isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      loadedCoordinates: loadedCoordinates == freezed ? _value.loadedCoordinates : loadedCoordinates as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed ? _value.failureOrSuccessOption : failureOrSuccessOption as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_ExperienceEditingFormState implements _ExperienceEditingFormState {
  const _$_ExperienceEditingFormState(
      {@required this.experience, @required this.showErrorMessages, @required this.isSubmitting, @required this.loadedCoordinates, @required this.failureOrSuccessOption})
      : assert(experience != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(loadedCoordinates != null),
        assert(failureOrSuccessOption != null);

  @override
  final Experience experience;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final bool loadedCoordinates;
  @override
  final Option<Either<Failure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'ExperienceEditingFormState(experience: $experience, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, loadedCoordinates: $loadedCoordinates, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExperienceEditingFormState &&
            (identical(other.experience, experience) || const DeepCollectionEquality().equals(other.experience, experience)) &&
            (identical(other.showErrorMessages, showErrorMessages) || const DeepCollectionEquality().equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) || const DeepCollectionEquality().equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.loadedCoordinates, loadedCoordinates) || const DeepCollectionEquality().equals(other.loadedCoordinates, loadedCoordinates)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) || const DeepCollectionEquality().equals(other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(experience) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(loadedCoordinates) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$ExperienceEditingFormStateCopyWith<_ExperienceEditingFormState> get copyWith => __$ExperienceEditingFormStateCopyWithImpl<_ExperienceEditingFormState>(this, _$identity);
}

abstract class _ExperienceEditingFormState implements ExperienceEditingFormState {
  const factory _ExperienceEditingFormState(
      {@required Experience experience,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required bool loadedCoordinates,
      @required Option<Either<Failure, Unit>> failureOrSuccessOption}) = _$_ExperienceEditingFormState;

  @override
  Experience get experience;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  bool get loadedCoordinates;
  
  @override
  Option<Either<Failure, Unit>> get failureOrSuccessOption;

  @override
  @JsonKey(ignore: true)
  _$ExperienceEditingFormStateCopyWith<_ExperienceEditingFormState> get copyWith;
}
