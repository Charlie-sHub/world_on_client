// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'experience_management_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExperienceManagementFormEventTearOff {
  const _$ExperienceManagementFormEventTearOff();

  _Initialized initialized(Option<Experience> experienceOption) {
    return _Initialized(
      experienceOption,
    );
  }

  _TitleChanged titleChanged(String title) {
    return _TitleChanged(
      title,
    );
  }

  _DescriptionChanged descriptionChanged(String description) {
    return _DescriptionChanged(
      description,
    );
  }

  _ImageDeleted imageDeleted(String imageURL) {
    return _ImageDeleted(
      imageURL,
    );
  }

  _ImagesChanged imagesChanged(List<Asset> imageAssets) {
    return _ImagesChanged(
      imageAssets,
    );
  }

  _CoordinatesChanged coordinatesChanged({required double latitude, required double longitude}) {
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

  _ObjectivesChanged objectivesChanged(KtList<Objective> objectives) {
    return _ObjectivesChanged(
      objectives,
    );
  }

  _RewardsChanged rewardsChanged(KtSet<Reward> rewards) {
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

/// @nodoc
const $ExperienceManagementFormEvent = _$ExperienceManagementFormEventTearOff();

/// @nodoc
mixin _$ExperienceManagementFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Experience> experienceOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String imageURL) imageDeleted,
    required TResult Function(List<Asset> imageAssets) imagesChanged,
    required TResult Function(double latitude, double longitude) coordinatesChanged,
    required TResult Function(int difficulty) difficultyChanged,
    required TResult Function(KtList<Objective> objectives) objectivesChanged,
    required TResult Function(KtSet<Reward> rewards) rewardsChanged,
    required TResult Function(KtSet<Tag> tags) tagsChanged,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Experience> experienceOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String imageURL)? imageDeleted,
    TResult Function(List<Asset> imageAssets)? imagesChanged,
    TResult Function(double latitude, double longitude)? coordinatesChanged,
    TResult Function(int difficulty)? difficultyChanged,
    TResult Function(KtList<Objective> objectives)? objectivesChanged,
    TResult Function(KtSet<Reward> rewards)? rewardsChanged,
    TResult Function(KtSet<Tag> tags)? tagsChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_ImagesChanged value) imagesChanged,
    required TResult Function(_CoordinatesChanged value) coordinatesChanged,
    required TResult Function(_DifficultyChanged value) difficultyChanged,
    required TResult Function(_ObjectivesChanged value) objectivesChanged,
    required TResult Function(_RewardsChanged value) rewardsChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_Submitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_ImagesChanged value)? imagesChanged,
    TResult Function(_CoordinatesChanged value)? coordinatesChanged,
    TResult Function(_DifficultyChanged value)? difficultyChanged,
    TResult Function(_ObjectivesChanged value)? objectivesChanged,
    TResult Function(_RewardsChanged value)? rewardsChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceManagementFormEventCopyWith<$Res> {
  factory $ExperienceManagementFormEventCopyWith(
          ExperienceManagementFormEvent value, $Res Function(ExperienceManagementFormEvent) then) =
      _$ExperienceManagementFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExperienceManagementFormEventCopyWithImpl<$Res>
    implements $ExperienceManagementFormEventCopyWith<$Res> {
  _$ExperienceManagementFormEventCopyWithImpl(this._value, this._then);

  final ExperienceManagementFormEvent _value;

  // ignore: unused_field
  final $Res Function(ExperienceManagementFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(_Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;

  $Res call({Option<Experience> experienceOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$ExperienceManagementFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(_Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? experienceOption = freezed,
  }) {
    return _then(_Initialized(
      experienceOption == freezed
          ? _value.experienceOption
          : experienceOption // ignore: cast_nullable_to_non_nullable
              as Option<Experience>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.experienceOption);

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
                const DeepCollectionEquality().equals(other.experienceOption, experienceOption)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experienceOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Experience> experienceOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String imageURL) imageDeleted,
    required TResult Function(List<Asset> imageAssets) imagesChanged,
    required TResult Function(double latitude, double longitude) coordinatesChanged,
    required TResult Function(int difficulty) difficultyChanged,
    required TResult Function(KtList<Objective> objectives) objectivesChanged,
    required TResult Function(KtSet<Reward> rewards) rewardsChanged,
    required TResult Function(KtSet<Tag> tags) tagsChanged,
    required TResult Function() submitted,
  }) {
    return initialized(experienceOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Experience> experienceOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String imageURL)? imageDeleted,
    TResult Function(List<Asset> imageAssets)? imagesChanged,
    TResult Function(double latitude, double longitude)? coordinatesChanged,
    TResult Function(int difficulty)? difficultyChanged,
    TResult Function(KtList<Objective> objectives)? objectivesChanged,
    TResult Function(KtSet<Reward> rewards)? rewardsChanged,
    TResult Function(KtSet<Tag> tags)? tagsChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(experienceOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_ImagesChanged value) imagesChanged,
    required TResult Function(_CoordinatesChanged value) coordinatesChanged,
    required TResult Function(_DifficultyChanged value) difficultyChanged,
    required TResult Function(_ObjectivesChanged value) objectivesChanged,
    required TResult Function(_RewardsChanged value) rewardsChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_ImagesChanged value)? imagesChanged,
    TResult Function(_CoordinatesChanged value)? coordinatesChanged,
    TResult Function(_DifficultyChanged value)? difficultyChanged,
    TResult Function(_ObjectivesChanged value)? objectivesChanged,
    TResult Function(_RewardsChanged value)? rewardsChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ExperienceManagementFormEvent {
  const factory _Initialized(Option<Experience> experienceOption) = _$_Initialized;

  Option<Experience> get experienceOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TitleChangedCopyWith<$Res> {
  factory _$TitleChangedCopyWith(_TitleChanged value, $Res Function(_TitleChanged) then) =
      __$TitleChangedCopyWithImpl<$Res>;

  $Res call({String title});
}

/// @nodoc
class __$TitleChangedCopyWithImpl<$Res> extends _$ExperienceManagementFormEventCopyWithImpl<$Res>
    implements _$TitleChangedCopyWith<$Res> {
  __$TitleChangedCopyWithImpl(_TitleChanged _value, $Res Function(_TitleChanged) _then)
      : super(_value, (v) => _then(v as _TitleChanged));

  @override
  _TitleChanged get _value => super._value as _TitleChanged;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_TitleChanged(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'ExperienceManagementFormEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TitleChanged &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      __$TitleChangedCopyWithImpl<_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Experience> experienceOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String imageURL) imageDeleted,
    required TResult Function(List<Asset> imageAssets) imagesChanged,
    required TResult Function(double latitude, double longitude) coordinatesChanged,
    required TResult Function(int difficulty) difficultyChanged,
    required TResult Function(KtList<Objective> objectives) objectivesChanged,
    required TResult Function(KtSet<Reward> rewards) rewardsChanged,
    required TResult Function(KtSet<Tag> tags) tagsChanged,
    required TResult Function() submitted,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Experience> experienceOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String imageURL)? imageDeleted,
    TResult Function(List<Asset> imageAssets)? imagesChanged,
    TResult Function(double latitude, double longitude)? coordinatesChanged,
    TResult Function(int difficulty)? difficultyChanged,
    TResult Function(KtList<Objective> objectives)? objectivesChanged,
    TResult Function(KtSet<Reward> rewards)? rewardsChanged,
    TResult Function(KtSet<Tag> tags)? tagsChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_ImagesChanged value) imagesChanged,
    required TResult Function(_CoordinatesChanged value) coordinatesChanged,
    required TResult Function(_DifficultyChanged value) difficultyChanged,
    required TResult Function(_ObjectivesChanged value) objectivesChanged,
    required TResult Function(_RewardsChanged value) rewardsChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_ImagesChanged value)? imagesChanged,
    TResult Function(_CoordinatesChanged value)? coordinatesChanged,
    TResult Function(_DifficultyChanged value)? difficultyChanged,
    TResult Function(_ObjectivesChanged value)? objectivesChanged,
    TResult Function(_RewardsChanged value)? rewardsChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements ExperienceManagementFormEvent {
  const factory _TitleChanged(String title) = _$_TitleChanged;

  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$TitleChangedCopyWith<_TitleChanged> get copyWith => throw _privateConstructorUsedError;
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
    extends _$ExperienceManagementFormEventCopyWithImpl<$Res>
    implements _$DescriptionChangedCopyWith<$Res> {
  __$DescriptionChangedCopyWithImpl(
      _DescriptionChanged _value, $Res Function(_DescriptionChanged) _then)
      : super(_value, (v) => _then(v as _DescriptionChanged));

  @override
  _DescriptionChanged get _value => super._value as _DescriptionChanged;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_DescriptionChanged(
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.description);

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
                const DeepCollectionEquality().equals(other.description, description)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Experience> experienceOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String imageURL) imageDeleted,
    required TResult Function(List<Asset> imageAssets) imagesChanged,
    required TResult Function(double latitude, double longitude) coordinatesChanged,
    required TResult Function(int difficulty) difficultyChanged,
    required TResult Function(KtList<Objective> objectives) objectivesChanged,
    required TResult Function(KtSet<Reward> rewards) rewardsChanged,
    required TResult Function(KtSet<Tag> tags) tagsChanged,
    required TResult Function() submitted,
  }) {
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Experience> experienceOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String imageURL)? imageDeleted,
    TResult Function(List<Asset> imageAssets)? imagesChanged,
    TResult Function(double latitude, double longitude)? coordinatesChanged,
    TResult Function(int difficulty)? difficultyChanged,
    TResult Function(KtList<Objective> objectives)? objectivesChanged,
    TResult Function(KtSet<Reward> rewards)? rewardsChanged,
    TResult Function(KtSet<Tag> tags)? tagsChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_ImagesChanged value) imagesChanged,
    required TResult Function(_CoordinatesChanged value) coordinatesChanged,
    required TResult Function(_DifficultyChanged value) difficultyChanged,
    required TResult Function(_ObjectivesChanged value) objectivesChanged,
    required TResult Function(_RewardsChanged value) rewardsChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_ImagesChanged value)? imagesChanged,
    TResult Function(_CoordinatesChanged value)? coordinatesChanged,
    TResult Function(_DifficultyChanged value)? difficultyChanged,
    TResult Function(_ObjectivesChanged value)? objectivesChanged,
    TResult Function(_RewardsChanged value)? rewardsChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements ExperienceManagementFormEvent {
  const factory _DescriptionChanged(String description) = _$_DescriptionChanged;

  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ImageDeletedCopyWith<$Res> {
  factory _$ImageDeletedCopyWith(_ImageDeleted value, $Res Function(_ImageDeleted) then) =
      __$ImageDeletedCopyWithImpl<$Res>;

  $Res call({String imageURL});
}

/// @nodoc
class __$ImageDeletedCopyWithImpl<$Res> extends _$ExperienceManagementFormEventCopyWithImpl<$Res>
    implements _$ImageDeletedCopyWith<$Res> {
  __$ImageDeletedCopyWithImpl(_ImageDeleted _value, $Res Function(_ImageDeleted) _then)
      : super(_value, (v) => _then(v as _ImageDeleted));

  @override
  _ImageDeleted get _value => super._value as _ImageDeleted;

  @override
  $Res call({
    Object? imageURL = freezed,
  }) {
    return _then(_ImageDeleted(
      imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ImageDeleted implements _ImageDeleted {
  const _$_ImageDeleted(this.imageURL);

  @override
  final String imageURL;

  @override
  String toString() {
    return 'ExperienceManagementFormEvent.imageDeleted(imageURL: $imageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageDeleted &&
            (identical(other.imageURL, imageURL) ||
                const DeepCollectionEquality().equals(other.imageURL, imageURL)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageURL);

  @JsonKey(ignore: true)
  @override
  _$ImageDeletedCopyWith<_ImageDeleted> get copyWith =>
      __$ImageDeletedCopyWithImpl<_ImageDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Experience> experienceOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String imageURL) imageDeleted,
    required TResult Function(List<Asset> imageAssets) imagesChanged,
    required TResult Function(double latitude, double longitude) coordinatesChanged,
    required TResult Function(int difficulty) difficultyChanged,
    required TResult Function(KtList<Objective> objectives) objectivesChanged,
    required TResult Function(KtSet<Reward> rewards) rewardsChanged,
    required TResult Function(KtSet<Tag> tags) tagsChanged,
    required TResult Function() submitted,
  }) {
    return imageDeleted(imageURL);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Experience> experienceOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String imageURL)? imageDeleted,
    TResult Function(List<Asset> imageAssets)? imagesChanged,
    TResult Function(double latitude, double longitude)? coordinatesChanged,
    TResult Function(int difficulty)? difficultyChanged,
    TResult Function(KtList<Objective> objectives)? objectivesChanged,
    TResult Function(KtSet<Reward> rewards)? rewardsChanged,
    TResult Function(KtSet<Tag> tags)? tagsChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (imageDeleted != null) {
      return imageDeleted(imageURL);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_ImagesChanged value) imagesChanged,
    required TResult Function(_CoordinatesChanged value) coordinatesChanged,
    required TResult Function(_DifficultyChanged value) difficultyChanged,
    required TResult Function(_ObjectivesChanged value) objectivesChanged,
    required TResult Function(_RewardsChanged value) rewardsChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return imageDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_ImagesChanged value)? imagesChanged,
    TResult Function(_CoordinatesChanged value)? coordinatesChanged,
    TResult Function(_DifficultyChanged value)? difficultyChanged,
    TResult Function(_ObjectivesChanged value)? objectivesChanged,
    TResult Function(_RewardsChanged value)? rewardsChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (imageDeleted != null) {
      return imageDeleted(this);
    }
    return orElse();
  }
}

abstract class _ImageDeleted implements ExperienceManagementFormEvent {
  const factory _ImageDeleted(String imageURL) = _$_ImageDeleted;

  String get imageURL => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$ImageDeletedCopyWith<_ImageDeleted> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ImagesChangedCopyWith<$Res> {
  factory _$ImagesChangedCopyWith(_ImagesChanged value, $Res Function(_ImagesChanged) then) =
      __$ImagesChangedCopyWithImpl<$Res>;

  $Res call({List<Asset> imageAssets});
}

/// @nodoc
class __$ImagesChangedCopyWithImpl<$Res> extends _$ExperienceManagementFormEventCopyWithImpl<$Res>
    implements _$ImagesChangedCopyWith<$Res> {
  __$ImagesChangedCopyWithImpl(_ImagesChanged _value, $Res Function(_ImagesChanged) _then)
      : super(_value, (v) => _then(v as _ImagesChanged));

  @override
  _ImagesChanged get _value => super._value as _ImagesChanged;

  @override
  $Res call({
    Object? imageAssets = freezed,
  }) {
    return _then(_ImagesChanged(
      imageAssets == freezed
          ? _value.imageAssets
          : imageAssets // ignore: cast_nullable_to_non_nullable
              as List<Asset>,
    ));
  }
}

/// @nodoc

class _$_ImagesChanged implements _ImagesChanged {
  const _$_ImagesChanged(this.imageAssets);

  @override
  final List<Asset> imageAssets;

  @override
  String toString() {
    return 'ExperienceManagementFormEvent.imagesChanged(imageAssets: $imageAssets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImagesChanged &&
            (identical(other.imageAssets, imageAssets) ||
                const DeepCollectionEquality().equals(other.imageAssets, imageAssets)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageAssets);

  @JsonKey(ignore: true)
  @override
  _$ImagesChangedCopyWith<_ImagesChanged> get copyWith =>
      __$ImagesChangedCopyWithImpl<_ImagesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Experience> experienceOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String imageURL) imageDeleted,
    required TResult Function(List<Asset> imageAssets) imagesChanged,
    required TResult Function(double latitude, double longitude) coordinatesChanged,
    required TResult Function(int difficulty) difficultyChanged,
    required TResult Function(KtList<Objective> objectives) objectivesChanged,
    required TResult Function(KtSet<Reward> rewards) rewardsChanged,
    required TResult Function(KtSet<Tag> tags) tagsChanged,
    required TResult Function() submitted,
  }) {
    return imagesChanged(imageAssets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Experience> experienceOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String imageURL)? imageDeleted,
    TResult Function(List<Asset> imageAssets)? imagesChanged,
    TResult Function(double latitude, double longitude)? coordinatesChanged,
    TResult Function(int difficulty)? difficultyChanged,
    TResult Function(KtList<Objective> objectives)? objectivesChanged,
    TResult Function(KtSet<Reward> rewards)? rewardsChanged,
    TResult Function(KtSet<Tag> tags)? tagsChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (imagesChanged != null) {
      return imagesChanged(imageAssets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_ImagesChanged value) imagesChanged,
    required TResult Function(_CoordinatesChanged value) coordinatesChanged,
    required TResult Function(_DifficultyChanged value) difficultyChanged,
    required TResult Function(_ObjectivesChanged value) objectivesChanged,
    required TResult Function(_RewardsChanged value) rewardsChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return imagesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_ImagesChanged value)? imagesChanged,
    TResult Function(_CoordinatesChanged value)? coordinatesChanged,
    TResult Function(_DifficultyChanged value)? difficultyChanged,
    TResult Function(_ObjectivesChanged value)? objectivesChanged,
    TResult Function(_RewardsChanged value)? rewardsChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (imagesChanged != null) {
      return imagesChanged(this);
    }
    return orElse();
  }
}

abstract class _ImagesChanged implements ExperienceManagementFormEvent {
  const factory _ImagesChanged(List<Asset> imageAssets) = _$_ImagesChanged;

  List<Asset> get imageAssets => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$ImagesChangedCopyWith<_ImagesChanged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CoordinatesChangedCopyWith<$Res> {
  factory _$CoordinatesChangedCopyWith(
          _CoordinatesChanged value, $Res Function(_CoordinatesChanged) then) =
      __$CoordinatesChangedCopyWithImpl<$Res>;

  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$CoordinatesChangedCopyWithImpl<$Res>
    extends _$ExperienceManagementFormEventCopyWithImpl<$Res>
    implements _$CoordinatesChangedCopyWith<$Res> {
  __$CoordinatesChangedCopyWithImpl(
      _CoordinatesChanged _value, $Res Function(_CoordinatesChanged) _then)
      : super(_value, (v) => _then(v as _CoordinatesChanged));

  @override
  _CoordinatesChanged get _value => super._value as _CoordinatesChanged;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_CoordinatesChanged(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_CoordinatesChanged implements _CoordinatesChanged {
  const _$_CoordinatesChanged({required this.latitude, required this.longitude});

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
                const DeepCollectionEquality().equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality().equals(other.longitude, longitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude);

  @JsonKey(ignore: true)
  @override
  _$CoordinatesChangedCopyWith<_CoordinatesChanged> get copyWith =>
      __$CoordinatesChangedCopyWithImpl<_CoordinatesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Experience> experienceOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String imageURL) imageDeleted,
    required TResult Function(List<Asset> imageAssets) imagesChanged,
    required TResult Function(double latitude, double longitude) coordinatesChanged,
    required TResult Function(int difficulty) difficultyChanged,
    required TResult Function(KtList<Objective> objectives) objectivesChanged,
    required TResult Function(KtSet<Reward> rewards) rewardsChanged,
    required TResult Function(KtSet<Tag> tags) tagsChanged,
    required TResult Function() submitted,
  }) {
    return coordinatesChanged(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Experience> experienceOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String imageURL)? imageDeleted,
    TResult Function(List<Asset> imageAssets)? imagesChanged,
    TResult Function(double latitude, double longitude)? coordinatesChanged,
    TResult Function(int difficulty)? difficultyChanged,
    TResult Function(KtList<Objective> objectives)? objectivesChanged,
    TResult Function(KtSet<Reward> rewards)? rewardsChanged,
    TResult Function(KtSet<Tag> tags)? tagsChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (coordinatesChanged != null) {
      return coordinatesChanged(latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_ImagesChanged value) imagesChanged,
    required TResult Function(_CoordinatesChanged value) coordinatesChanged,
    required TResult Function(_DifficultyChanged value) difficultyChanged,
    required TResult Function(_ObjectivesChanged value) objectivesChanged,
    required TResult Function(_RewardsChanged value) rewardsChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return coordinatesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_ImagesChanged value)? imagesChanged,
    TResult Function(_CoordinatesChanged value)? coordinatesChanged,
    TResult Function(_DifficultyChanged value)? difficultyChanged,
    TResult Function(_ObjectivesChanged value)? objectivesChanged,
    TResult Function(_RewardsChanged value)? rewardsChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (coordinatesChanged != null) {
      return coordinatesChanged(this);
    }
    return orElse();
  }
}

abstract class _CoordinatesChanged implements ExperienceManagementFormEvent {
  const factory _CoordinatesChanged({required double latitude, required double longitude}) =
      _$_CoordinatesChanged;

  double get latitude => throw _privateConstructorUsedError;

  double get longitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$CoordinatesChangedCopyWith<_CoordinatesChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DifficultyChangedCopyWith<$Res> {
  factory _$DifficultyChangedCopyWith(
          _DifficultyChanged value, $Res Function(_DifficultyChanged) then) =
      __$DifficultyChangedCopyWithImpl<$Res>;

  $Res call({int difficulty});
}

/// @nodoc
class __$DifficultyChangedCopyWithImpl<$Res>
    extends _$ExperienceManagementFormEventCopyWithImpl<$Res>
    implements _$DifficultyChangedCopyWith<$Res> {
  __$DifficultyChangedCopyWithImpl(
      _DifficultyChanged _value, $Res Function(_DifficultyChanged) _then)
      : super(_value, (v) => _then(v as _DifficultyChanged));

  @override
  _DifficultyChanged get _value => super._value as _DifficultyChanged;

  @override
  $Res call({
    Object? difficulty = freezed,
  }) {
    return _then(_DifficultyChanged(
      difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DifficultyChanged implements _DifficultyChanged {
  const _$_DifficultyChanged(this.difficulty);

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
                const DeepCollectionEquality().equals(other.difficulty, difficulty)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(difficulty);

  @JsonKey(ignore: true)
  @override
  _$DifficultyChangedCopyWith<_DifficultyChanged> get copyWith =>
      __$DifficultyChangedCopyWithImpl<_DifficultyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Experience> experienceOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String imageURL) imageDeleted,
    required TResult Function(List<Asset> imageAssets) imagesChanged,
    required TResult Function(double latitude, double longitude) coordinatesChanged,
    required TResult Function(int difficulty) difficultyChanged,
    required TResult Function(KtList<Objective> objectives) objectivesChanged,
    required TResult Function(KtSet<Reward> rewards) rewardsChanged,
    required TResult Function(KtSet<Tag> tags) tagsChanged,
    required TResult Function() submitted,
  }) {
    return difficultyChanged(difficulty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Experience> experienceOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String imageURL)? imageDeleted,
    TResult Function(List<Asset> imageAssets)? imagesChanged,
    TResult Function(double latitude, double longitude)? coordinatesChanged,
    TResult Function(int difficulty)? difficultyChanged,
    TResult Function(KtList<Objective> objectives)? objectivesChanged,
    TResult Function(KtSet<Reward> rewards)? rewardsChanged,
    TResult Function(KtSet<Tag> tags)? tagsChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (difficultyChanged != null) {
      return difficultyChanged(difficulty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_ImagesChanged value) imagesChanged,
    required TResult Function(_CoordinatesChanged value) coordinatesChanged,
    required TResult Function(_DifficultyChanged value) difficultyChanged,
    required TResult Function(_ObjectivesChanged value) objectivesChanged,
    required TResult Function(_RewardsChanged value) rewardsChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return difficultyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_ImagesChanged value)? imagesChanged,
    TResult Function(_CoordinatesChanged value)? coordinatesChanged,
    TResult Function(_DifficultyChanged value)? difficultyChanged,
    TResult Function(_ObjectivesChanged value)? objectivesChanged,
    TResult Function(_RewardsChanged value)? rewardsChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (difficultyChanged != null) {
      return difficultyChanged(this);
    }
    return orElse();
  }
}

abstract class _DifficultyChanged implements ExperienceManagementFormEvent {
  const factory _DifficultyChanged(int difficulty) = _$_DifficultyChanged;

  int get difficulty => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$DifficultyChangedCopyWith<_DifficultyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ObjectivesChangedCopyWith<$Res> {
  factory _$ObjectivesChangedCopyWith(
          _ObjectivesChanged value, $Res Function(_ObjectivesChanged) then) =
      __$ObjectivesChangedCopyWithImpl<$Res>;

  $Res call({KtList<Objective> objectives});
}

/// @nodoc
class __$ObjectivesChangedCopyWithImpl<$Res>
    extends _$ExperienceManagementFormEventCopyWithImpl<$Res>
    implements _$ObjectivesChangedCopyWith<$Res> {
  __$ObjectivesChangedCopyWithImpl(
      _ObjectivesChanged _value, $Res Function(_ObjectivesChanged) _then)
      : super(_value, (v) => _then(v as _ObjectivesChanged));

  @override
  _ObjectivesChanged get _value => super._value as _ObjectivesChanged;

  @override
  $Res call({
    Object? objectives = freezed,
  }) {
    return _then(_ObjectivesChanged(
      objectives == freezed
          ? _value.objectives
          : objectives // ignore: cast_nullable_to_non_nullable
              as KtList<Objective>,
    ));
  }
}

/// @nodoc

class _$_ObjectivesChanged implements _ObjectivesChanged {
  const _$_ObjectivesChanged(this.objectives);

  @override
  final KtList<Objective> objectives;

  @override
  String toString() {
    return 'ExperienceManagementFormEvent.objectivesChanged(objectives: $objectives)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ObjectivesChanged &&
            (identical(other.objectives, objectives) ||
                const DeepCollectionEquality().equals(other.objectives, objectives)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(objectives);

  @JsonKey(ignore: true)
  @override
  _$ObjectivesChangedCopyWith<_ObjectivesChanged> get copyWith =>
      __$ObjectivesChangedCopyWithImpl<_ObjectivesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Experience> experienceOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String imageURL) imageDeleted,
    required TResult Function(List<Asset> imageAssets) imagesChanged,
    required TResult Function(double latitude, double longitude) coordinatesChanged,
    required TResult Function(int difficulty) difficultyChanged,
    required TResult Function(KtList<Objective> objectives) objectivesChanged,
    required TResult Function(KtSet<Reward> rewards) rewardsChanged,
    required TResult Function(KtSet<Tag> tags) tagsChanged,
    required TResult Function() submitted,
  }) {
    return objectivesChanged(objectives);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Experience> experienceOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String imageURL)? imageDeleted,
    TResult Function(List<Asset> imageAssets)? imagesChanged,
    TResult Function(double latitude, double longitude)? coordinatesChanged,
    TResult Function(int difficulty)? difficultyChanged,
    TResult Function(KtList<Objective> objectives)? objectivesChanged,
    TResult Function(KtSet<Reward> rewards)? rewardsChanged,
    TResult Function(KtSet<Tag> tags)? tagsChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (objectivesChanged != null) {
      return objectivesChanged(objectives);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_ImagesChanged value) imagesChanged,
    required TResult Function(_CoordinatesChanged value) coordinatesChanged,
    required TResult Function(_DifficultyChanged value) difficultyChanged,
    required TResult Function(_ObjectivesChanged value) objectivesChanged,
    required TResult Function(_RewardsChanged value) rewardsChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return objectivesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_ImagesChanged value)? imagesChanged,
    TResult Function(_CoordinatesChanged value)? coordinatesChanged,
    TResult Function(_DifficultyChanged value)? difficultyChanged,
    TResult Function(_ObjectivesChanged value)? objectivesChanged,
    TResult Function(_RewardsChanged value)? rewardsChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (objectivesChanged != null) {
      return objectivesChanged(this);
    }
    return orElse();
  }
}

abstract class _ObjectivesChanged implements ExperienceManagementFormEvent {
  const factory _ObjectivesChanged(KtList<Objective> objectives) = _$_ObjectivesChanged;

  KtList<Objective> get objectives => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$ObjectivesChangedCopyWith<_ObjectivesChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RewardsChangedCopyWith<$Res> {
  factory _$RewardsChangedCopyWith(_RewardsChanged value, $Res Function(_RewardsChanged) then) =
      __$RewardsChangedCopyWithImpl<$Res>;

  $Res call({KtSet<Reward> rewards});
}

/// @nodoc
class __$RewardsChangedCopyWithImpl<$Res> extends _$ExperienceManagementFormEventCopyWithImpl<$Res>
    implements _$RewardsChangedCopyWith<$Res> {
  __$RewardsChangedCopyWithImpl(_RewardsChanged _value, $Res Function(_RewardsChanged) _then)
      : super(_value, (v) => _then(v as _RewardsChanged));

  @override
  _RewardsChanged get _value => super._value as _RewardsChanged;

  @override
  $Res call({
    Object? rewards = freezed,
  }) {
    return _then(_RewardsChanged(
      rewards == freezed
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as KtSet<Reward>,
    ));
  }
}

/// @nodoc

class _$_RewardsChanged implements _RewardsChanged {
  const _$_RewardsChanged(this.rewards);

  @override
  final KtSet<Reward> rewards;

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
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(rewards);

  @JsonKey(ignore: true)
  @override
  _$RewardsChangedCopyWith<_RewardsChanged> get copyWith =>
      __$RewardsChangedCopyWithImpl<_RewardsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Experience> experienceOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String imageURL) imageDeleted,
    required TResult Function(List<Asset> imageAssets) imagesChanged,
    required TResult Function(double latitude, double longitude) coordinatesChanged,
    required TResult Function(int difficulty) difficultyChanged,
    required TResult Function(KtList<Objective> objectives) objectivesChanged,
    required TResult Function(KtSet<Reward> rewards) rewardsChanged,
    required TResult Function(KtSet<Tag> tags) tagsChanged,
    required TResult Function() submitted,
  }) {
    return rewardsChanged(rewards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Experience> experienceOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String imageURL)? imageDeleted,
    TResult Function(List<Asset> imageAssets)? imagesChanged,
    TResult Function(double latitude, double longitude)? coordinatesChanged,
    TResult Function(int difficulty)? difficultyChanged,
    TResult Function(KtList<Objective> objectives)? objectivesChanged,
    TResult Function(KtSet<Reward> rewards)? rewardsChanged,
    TResult Function(KtSet<Tag> tags)? tagsChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (rewardsChanged != null) {
      return rewardsChanged(rewards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_ImagesChanged value) imagesChanged,
    required TResult Function(_CoordinatesChanged value) coordinatesChanged,
    required TResult Function(_DifficultyChanged value) difficultyChanged,
    required TResult Function(_ObjectivesChanged value) objectivesChanged,
    required TResult Function(_RewardsChanged value) rewardsChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return rewardsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_ImagesChanged value)? imagesChanged,
    TResult Function(_CoordinatesChanged value)? coordinatesChanged,
    TResult Function(_DifficultyChanged value)? difficultyChanged,
    TResult Function(_ObjectivesChanged value)? objectivesChanged,
    TResult Function(_RewardsChanged value)? rewardsChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (rewardsChanged != null) {
      return rewardsChanged(this);
    }
    return orElse();
  }
}

abstract class _RewardsChanged implements ExperienceManagementFormEvent {
  const factory _RewardsChanged(KtSet<Reward> rewards) = _$_RewardsChanged;

  KtSet<Reward> get rewards => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$RewardsChangedCopyWith<_RewardsChanged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TagsChangedCopyWith<$Res> {
  factory _$TagsChangedCopyWith(_TagsChanged value, $Res Function(_TagsChanged) then) =
      __$TagsChangedCopyWithImpl<$Res>;

  $Res call({KtSet<Tag> tags});
}

/// @nodoc
class __$TagsChangedCopyWithImpl<$Res> extends _$ExperienceManagementFormEventCopyWithImpl<$Res>
    implements _$TagsChangedCopyWith<$Res> {
  __$TagsChangedCopyWithImpl(_TagsChanged _value, $Res Function(_TagsChanged) _then)
      : super(_value, (v) => _then(v as _TagsChanged));

  @override
  _TagsChanged get _value => super._value as _TagsChanged;

  @override
  $Res call({
    Object? tags = freezed,
  }) {
    return _then(_TagsChanged(
      tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as KtSet<Tag>,
    ));
  }
}

/// @nodoc

class _$_TagsChanged implements _TagsChanged {
  const _$_TagsChanged(this.tags);

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
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(tags);

  @JsonKey(ignore: true)
  @override
  _$TagsChangedCopyWith<_TagsChanged> get copyWith =>
      __$TagsChangedCopyWithImpl<_TagsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Experience> experienceOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String imageURL) imageDeleted,
    required TResult Function(List<Asset> imageAssets) imagesChanged,
    required TResult Function(double latitude, double longitude) coordinatesChanged,
    required TResult Function(int difficulty) difficultyChanged,
    required TResult Function(KtList<Objective> objectives) objectivesChanged,
    required TResult Function(KtSet<Reward> rewards) rewardsChanged,
    required TResult Function(KtSet<Tag> tags) tagsChanged,
    required TResult Function() submitted,
  }) {
    return tagsChanged(tags);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Experience> experienceOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String imageURL)? imageDeleted,
    TResult Function(List<Asset> imageAssets)? imagesChanged,
    TResult Function(double latitude, double longitude)? coordinatesChanged,
    TResult Function(int difficulty)? difficultyChanged,
    TResult Function(KtList<Objective> objectives)? objectivesChanged,
    TResult Function(KtSet<Reward> rewards)? rewardsChanged,
    TResult Function(KtSet<Tag> tags)? tagsChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (tagsChanged != null) {
      return tagsChanged(tags);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_ImagesChanged value) imagesChanged,
    required TResult Function(_CoordinatesChanged value) coordinatesChanged,
    required TResult Function(_DifficultyChanged value) difficultyChanged,
    required TResult Function(_ObjectivesChanged value) objectivesChanged,
    required TResult Function(_RewardsChanged value) rewardsChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return tagsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_ImagesChanged value)? imagesChanged,
    TResult Function(_CoordinatesChanged value)? coordinatesChanged,
    TResult Function(_DifficultyChanged value)? difficultyChanged,
    TResult Function(_ObjectivesChanged value)? objectivesChanged,
    TResult Function(_RewardsChanged value)? rewardsChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (tagsChanged != null) {
      return tagsChanged(this);
    }
    return orElse();
  }
}

abstract class _TagsChanged implements ExperienceManagementFormEvent {
  const factory _TagsChanged(KtSet<Tag> tags) = _$_TagsChanged;

  KtSet<Tag> get tags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$TagsChangedCopyWith<_TagsChanged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(_Submitted value, $Res Function(_Submitted) then) =
      __$SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmittedCopyWithImpl<$Res> extends _$ExperienceManagementFormEventCopyWithImpl<$Res>
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
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Experience> experienceOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String imageURL) imageDeleted,
    required TResult Function(List<Asset> imageAssets) imagesChanged,
    required TResult Function(double latitude, double longitude) coordinatesChanged,
    required TResult Function(int difficulty) difficultyChanged,
    required TResult Function(KtList<Objective> objectives) objectivesChanged,
    required TResult Function(KtSet<Reward> rewards) rewardsChanged,
    required TResult Function(KtSet<Tag> tags) tagsChanged,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Experience> experienceOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String imageURL)? imageDeleted,
    TResult Function(List<Asset> imageAssets)? imagesChanged,
    TResult Function(double latitude, double longitude)? coordinatesChanged,
    TResult Function(int difficulty)? difficultyChanged,
    TResult Function(KtList<Objective> objectives)? objectivesChanged,
    TResult Function(KtSet<Reward> rewards)? rewardsChanged,
    TResult Function(KtSet<Tag> tags)? tagsChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_ImagesChanged value) imagesChanged,
    required TResult Function(_CoordinatesChanged value) coordinatesChanged,
    required TResult Function(_DifficultyChanged value) difficultyChanged,
    required TResult Function(_ObjectivesChanged value) objectivesChanged,
    required TResult Function(_RewardsChanged value) rewardsChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_ImagesChanged value)? imagesChanged,
    TResult Function(_CoordinatesChanged value)? coordinatesChanged,
    TResult Function(_DifficultyChanged value)? difficultyChanged,
    TResult Function(_ObjectivesChanged value)? objectivesChanged,
    TResult Function(_RewardsChanged value)? rewardsChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements ExperienceManagementFormEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
class _$ExperienceManagementFormStateTearOff {
  const _$ExperienceManagementFormStateTearOff();

  _ExperienceManagementFormState call(
      {required Experience experience,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSubmitting,
      required bool loadedCoordinates,
      required Option<Either<Failure, Unit>> failureOrSuccessOption}) {
    return _ExperienceManagementFormState(
      experience: experience,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSubmitting: isSubmitting,
      loadedCoordinates: loadedCoordinates,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $ExperienceManagementFormState = _$ExperienceManagementFormStateTearOff();

/// @nodoc
mixin _$ExperienceManagementFormState {
  Experience get experience => throw _privateConstructorUsedError;

  bool get showErrorMessages => throw _privateConstructorUsedError;

  bool get isEditing => throw _privateConstructorUsedError;

  bool get isSubmitting => throw _privateConstructorUsedError;

  bool get loadedCoordinates => throw _privateConstructorUsedError;

  Option<Either<Failure, Unit>> get failureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExperienceManagementFormStateCopyWith<ExperienceManagementFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceManagementFormStateCopyWith<$Res> {
  factory $ExperienceManagementFormStateCopyWith(
          ExperienceManagementFormState value, $Res Function(ExperienceManagementFormState) then) =
      _$ExperienceManagementFormStateCopyWithImpl<$Res>;

  $Res call(
      {Experience experience,
      bool showErrorMessages,
      bool isEditing,
      bool isSubmitting,
      bool loadedCoordinates,
      Option<Either<Failure, Unit>> failureOrSuccessOption});

  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class _$ExperienceManagementFormStateCopyWithImpl<$Res>
    implements $ExperienceManagementFormStateCopyWith<$Res> {
  _$ExperienceManagementFormStateCopyWithImpl(this._value, this._then);

  final ExperienceManagementFormState _value;

  // ignore: unused_field
  final $Res Function(ExperienceManagementFormState) _then;

  @override
  $Res call({
    Object? experience = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSubmitting = freezed,
    Object? loadedCoordinates = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      experience: experience == freezed
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as Experience,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      loadedCoordinates: loadedCoordinates == freezed
          ? _value.loadedCoordinates
          : loadedCoordinates // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
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
abstract class _$ExperienceManagementFormStateCopyWith<$Res>
    implements $ExperienceManagementFormStateCopyWith<$Res> {
  factory _$ExperienceManagementFormStateCopyWith(_ExperienceManagementFormState value,
          $Res Function(_ExperienceManagementFormState) then) =
      __$ExperienceManagementFormStateCopyWithImpl<$Res>;

  @override
  $Res call(
      {Experience experience,
      bool showErrorMessages,
      bool isEditing,
      bool isSubmitting,
      bool loadedCoordinates,
      Option<Either<Failure, Unit>> failureOrSuccessOption});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class __$ExperienceManagementFormStateCopyWithImpl<$Res>
    extends _$ExperienceManagementFormStateCopyWithImpl<$Res>
    implements _$ExperienceManagementFormStateCopyWith<$Res> {
  __$ExperienceManagementFormStateCopyWithImpl(
      _ExperienceManagementFormState _value, $Res Function(_ExperienceManagementFormState) _then)
      : super(_value, (v) => _then(v as _ExperienceManagementFormState));

  @override
  _ExperienceManagementFormState get _value => super._value as _ExperienceManagementFormState;

  @override
  $Res call({
    Object? experience = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSubmitting = freezed,
    Object? loadedCoordinates = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_ExperienceManagementFormState(
      experience: experience == freezed
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as Experience,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      loadedCoordinates: loadedCoordinates == freezed
          ? _value.loadedCoordinates
          : loadedCoordinates // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ExperienceManagementFormState implements _ExperienceManagementFormState {
  const _$_ExperienceManagementFormState(
      {required this.experience,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSubmitting,
      required this.loadedCoordinates,
      required this.failureOrSuccessOption});

  @override
  final Experience experience;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSubmitting;
  @override
  final bool loadedCoordinates;
  @override
  final Option<Either<Failure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'ExperienceManagementFormState(experience: $experience, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSubmitting: $isSubmitting, loadedCoordinates: $loadedCoordinates, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExperienceManagementFormState &&
            (identical(other.experience, experience) ||
                const DeepCollectionEquality().equals(other.experience, experience)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality().equals(other.isEditing, isEditing)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality().equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.loadedCoordinates, loadedCoordinates) ||
                const DeepCollectionEquality()
                    .equals(other.loadedCoordinates, loadedCoordinates)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(experience) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(loadedCoordinates) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$ExperienceManagementFormStateCopyWith<_ExperienceManagementFormState> get copyWith =>
      __$ExperienceManagementFormStateCopyWithImpl<_ExperienceManagementFormState>(
          this, _$identity);
}

abstract class _ExperienceManagementFormState implements ExperienceManagementFormState {
  const factory _ExperienceManagementFormState(
          {required Experience experience,
          required bool showErrorMessages,
          required bool isEditing,
          required bool isSubmitting,
          required bool loadedCoordinates,
          required Option<Either<Failure, Unit>> failureOrSuccessOption}) =
      _$_ExperienceManagementFormState;

  @override
  Experience get experience => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;

  @override
  bool get loadedCoordinates => throw _privateConstructorUsedError;

  @override
  Option<Either<Failure, Unit>> get failureOrSuccessOption => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$ExperienceManagementFormStateCopyWith<_ExperienceManagementFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
