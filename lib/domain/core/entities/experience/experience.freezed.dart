// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'experience.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExperienceTearOff {
  const _$ExperienceTearOff();

  _Experience call(
      {required UniqueId id,
      required Name title,
      required EntityDescription description,
      required Set<String> imageURLs,
      required Option<List<Asset>> imageAssetsOption,
      required Coordinates coordinates,
      required Location location,
      required SimpleUser creator,
      required Difficulty difficulty,
      required PastDate creationDate,
      required PastDate modificationDate,
      required ObjectiveList objectives,
      required RewardSet rewards,
      required TagSet tags,
      required Set<Comment> comments,
      required Set<UniqueId> likedBy,
      required Set<UniqueId> doneBy,
      required Set<UniqueId> toDoBy,
      required bool isPromoted}) {
    return _Experience(
      id: id,
      title: title,
      description: description,
      imageURLs: imageURLs,
      imageAssetsOption: imageAssetsOption,
      coordinates: coordinates,
      location: location,
      creator: creator,
      difficulty: difficulty,
      creationDate: creationDate,
      modificationDate: modificationDate,
      objectives: objectives,
      rewards: rewards,
      tags: tags,
      comments: comments,
      likedBy: likedBy,
      doneBy: doneBy,
      toDoBy: toDoBy,
      isPromoted: isPromoted,
    );
  }
}

/// @nodoc
const $Experience = _$ExperienceTearOff();

/// @nodoc
mixin _$Experience {
  UniqueId get id => throw _privateConstructorUsedError;
  Name get title => throw _privateConstructorUsedError;
  EntityDescription get description => throw _privateConstructorUsedError;
  Set<String> get imageURLs => throw _privateConstructorUsedError;
  Option<List<Asset>> get imageAssetsOption =>
      throw _privateConstructorUsedError;
  Coordinates get coordinates => throw _privateConstructorUsedError;
  Location get location => throw _privateConstructorUsedError;
  SimpleUser get creator => throw _privateConstructorUsedError;
  Difficulty get difficulty => throw _privateConstructorUsedError;
  PastDate get creationDate => throw _privateConstructorUsedError;
  PastDate get modificationDate => throw _privateConstructorUsedError;
  ObjectiveList get objectives => throw _privateConstructorUsedError;
  RewardSet get rewards => throw _privateConstructorUsedError;
  TagSet get tags => throw _privateConstructorUsedError;
  Set<Comment> get comments => throw _privateConstructorUsedError;
  Set<UniqueId> get likedBy => throw _privateConstructorUsedError;
  Set<UniqueId> get doneBy => throw _privateConstructorUsedError;
  Set<UniqueId> get toDoBy => throw _privateConstructorUsedError;
  bool get isPromoted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExperienceCopyWith<Experience> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceCopyWith<$Res> {
  factory $ExperienceCopyWith(
          Experience value, $Res Function(Experience) then) =
      _$ExperienceCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      Name title,
      EntityDescription description,
      Set<String> imageURLs,
      Option<List<Asset>> imageAssetsOption,
      Coordinates coordinates,
      Location location,
      SimpleUser creator,
      Difficulty difficulty,
      PastDate creationDate,
      PastDate modificationDate,
      ObjectiveList objectives,
      RewardSet rewards,
      TagSet tags,
      Set<Comment> comments,
      Set<UniqueId> likedBy,
      Set<UniqueId> doneBy,
      Set<UniqueId> toDoBy,
      bool isPromoted});

  $CoordinatesCopyWith<$Res> get coordinates;
  $LocationCopyWith<$Res> get location;
  $SimpleUserCopyWith<$Res> get creator;
}

/// @nodoc
class _$ExperienceCopyWithImpl<$Res> implements $ExperienceCopyWith<$Res> {
  _$ExperienceCopyWithImpl(this._value, this._then);

  final Experience _value;
  // ignore: unused_field
  final $Res Function(Experience) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? imageURLs = freezed,
    Object? imageAssetsOption = freezed,
    Object? coordinates = freezed,
    Object? location = freezed,
    Object? creator = freezed,
    Object? difficulty = freezed,
    Object? creationDate = freezed,
    Object? modificationDate = freezed,
    Object? objectives = freezed,
    Object? rewards = freezed,
    Object? tags = freezed,
    Object? comments = freezed,
    Object? likedBy = freezed,
    Object? doneBy = freezed,
    Object? toDoBy = freezed,
    Object? isPromoted = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Name,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as EntityDescription,
      imageURLs: imageURLs == freezed
          ? _value.imageURLs
          : imageURLs // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      imageAssetsOption: imageAssetsOption == freezed
          ? _value.imageAssetsOption
          : imageAssetsOption // ignore: cast_nullable_to_non_nullable
              as Option<List<Asset>>,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as SimpleUser,
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as Difficulty,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as PastDate,
      modificationDate: modificationDate == freezed
          ? _value.modificationDate
          : modificationDate // ignore: cast_nullable_to_non_nullable
              as PastDate,
      objectives: objectives == freezed
          ? _value.objectives
          : objectives // ignore: cast_nullable_to_non_nullable
              as ObjectiveList,
      rewards: rewards == freezed
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as RewardSet,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as TagSet,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as Set<Comment>,
      likedBy: likedBy == freezed
          ? _value.likedBy
          : likedBy // ignore: cast_nullable_to_non_nullable
              as Set<UniqueId>,
      doneBy: doneBy == freezed
          ? _value.doneBy
          : doneBy // ignore: cast_nullable_to_non_nullable
              as Set<UniqueId>,
      toDoBy: toDoBy == freezed
          ? _value.toDoBy
          : toDoBy // ignore: cast_nullable_to_non_nullable
              as Set<UniqueId>,
      isPromoted: isPromoted == freezed
          ? _value.isPromoted
          : isPromoted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $CoordinatesCopyWith<$Res> get coordinates {
    return $CoordinatesCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value));
    });
  }

  @override
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }

  @override
  $SimpleUserCopyWith<$Res> get creator {
    return $SimpleUserCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value));
    });
  }
}

/// @nodoc
abstract class _$ExperienceCopyWith<$Res> implements $ExperienceCopyWith<$Res> {
  factory _$ExperienceCopyWith(
          _Experience value, $Res Function(_Experience) then) =
      __$ExperienceCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      Name title,
      EntityDescription description,
      Set<String> imageURLs,
      Option<List<Asset>> imageAssetsOption,
      Coordinates coordinates,
      Location location,
      SimpleUser creator,
      Difficulty difficulty,
      PastDate creationDate,
      PastDate modificationDate,
      ObjectiveList objectives,
      RewardSet rewards,
      TagSet tags,
      Set<Comment> comments,
      Set<UniqueId> likedBy,
      Set<UniqueId> doneBy,
      Set<UniqueId> toDoBy,
      bool isPromoted});

  @override
  $CoordinatesCopyWith<$Res> get coordinates;
  @override
  $LocationCopyWith<$Res> get location;
  @override
  $SimpleUserCopyWith<$Res> get creator;
}

/// @nodoc
class __$ExperienceCopyWithImpl<$Res> extends _$ExperienceCopyWithImpl<$Res>
    implements _$ExperienceCopyWith<$Res> {
  __$ExperienceCopyWithImpl(
      _Experience _value, $Res Function(_Experience) _then)
      : super(_value, (v) => _then(v as _Experience));

  @override
  _Experience get _value => super._value as _Experience;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? imageURLs = freezed,
    Object? imageAssetsOption = freezed,
    Object? coordinates = freezed,
    Object? location = freezed,
    Object? creator = freezed,
    Object? difficulty = freezed,
    Object? creationDate = freezed,
    Object? modificationDate = freezed,
    Object? objectives = freezed,
    Object? rewards = freezed,
    Object? tags = freezed,
    Object? comments = freezed,
    Object? likedBy = freezed,
    Object? doneBy = freezed,
    Object? toDoBy = freezed,
    Object? isPromoted = freezed,
  }) {
    return _then(_Experience(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Name,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as EntityDescription,
      imageURLs: imageURLs == freezed
          ? _value.imageURLs
          : imageURLs // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      imageAssetsOption: imageAssetsOption == freezed
          ? _value.imageAssetsOption
          : imageAssetsOption // ignore: cast_nullable_to_non_nullable
              as Option<List<Asset>>,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as SimpleUser,
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as Difficulty,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as PastDate,
      modificationDate: modificationDate == freezed
          ? _value.modificationDate
          : modificationDate // ignore: cast_nullable_to_non_nullable
              as PastDate,
      objectives: objectives == freezed
          ? _value.objectives
          : objectives // ignore: cast_nullable_to_non_nullable
              as ObjectiveList,
      rewards: rewards == freezed
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as RewardSet,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as TagSet,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as Set<Comment>,
      likedBy: likedBy == freezed
          ? _value.likedBy
          : likedBy // ignore: cast_nullable_to_non_nullable
              as Set<UniqueId>,
      doneBy: doneBy == freezed
          ? _value.doneBy
          : doneBy // ignore: cast_nullable_to_non_nullable
              as Set<UniqueId>,
      toDoBy: toDoBy == freezed
          ? _value.toDoBy
          : toDoBy // ignore: cast_nullable_to_non_nullable
              as Set<UniqueId>,
      isPromoted: isPromoted == freezed
          ? _value.isPromoted
          : isPromoted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Experience extends _Experience {
  const _$_Experience(
      {required this.id,
      required this.title,
      required this.description,
      required this.imageURLs,
      required this.imageAssetsOption,
      required this.coordinates,
      required this.location,
      required this.creator,
      required this.difficulty,
      required this.creationDate,
      required this.modificationDate,
      required this.objectives,
      required this.rewards,
      required this.tags,
      required this.comments,
      required this.likedBy,
      required this.doneBy,
      required this.toDoBy,
      required this.isPromoted})
      : super._();

  @override
  final UniqueId id;
  @override
  final Name title;
  @override
  final EntityDescription description;
  @override
  final Set<String> imageURLs;
  @override
  final Option<List<Asset>> imageAssetsOption;
  @override
  final Coordinates coordinates;
  @override
  final Location location;
  @override
  final SimpleUser creator;
  @override
  final Difficulty difficulty;
  @override
  final PastDate creationDate;
  @override
  final PastDate modificationDate;
  @override
  final ObjectiveList objectives;
  @override
  final RewardSet rewards;
  @override
  final TagSet tags;
  @override
  final Set<Comment> comments;
  @override
  final Set<UniqueId> likedBy;
  @override
  final Set<UniqueId> doneBy;
  @override
  final Set<UniqueId> toDoBy;
  @override
  final bool isPromoted;

  @override
  String toString() {
    return 'Experience(id: $id, title: $title, description: $description, imageURLs: $imageURLs, imageAssetsOption: $imageAssetsOption, coordinates: $coordinates, location: $location, creator: $creator, difficulty: $difficulty, creationDate: $creationDate, modificationDate: $modificationDate, objectives: $objectives, rewards: $rewards, tags: $tags, comments: $comments, likedBy: $likedBy, doneBy: $doneBy, toDoBy: $toDoBy, isPromoted: $isPromoted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Experience &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.imageURLs, imageURLs) ||
                const DeepCollectionEquality()
                    .equals(other.imageURLs, imageURLs)) &&
            (identical(other.imageAssetsOption, imageAssetsOption) ||
                const DeepCollectionEquality()
                    .equals(other.imageAssetsOption, imageAssetsOption)) &&
            (identical(other.coordinates, coordinates) ||
                const DeepCollectionEquality()
                    .equals(other.coordinates, coordinates)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.creator, creator) ||
                const DeepCollectionEquality()
                    .equals(other.creator, creator)) &&
            (identical(other.difficulty, difficulty) ||
                const DeepCollectionEquality()
                    .equals(other.difficulty, difficulty)) &&
            (identical(other.creationDate, creationDate) ||
                const DeepCollectionEquality()
                    .equals(other.creationDate, creationDate)) &&
            (identical(other.modificationDate, modificationDate) ||
                const DeepCollectionEquality()
                    .equals(other.modificationDate, modificationDate)) &&
            (identical(other.objectives, objectives) ||
                const DeepCollectionEquality()
                    .equals(other.objectives, objectives)) &&
            (identical(other.rewards, rewards) ||
                const DeepCollectionEquality()
                    .equals(other.rewards, rewards)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
            (identical(other.likedBy, likedBy) ||
                const DeepCollectionEquality()
                    .equals(other.likedBy, likedBy)) &&
            (identical(other.doneBy, doneBy) ||
                const DeepCollectionEquality().equals(other.doneBy, doneBy)) &&
            (identical(other.toDoBy, toDoBy) ||
                const DeepCollectionEquality().equals(other.toDoBy, toDoBy)) &&
            (identical(other.isPromoted, isPromoted) ||
                const DeepCollectionEquality()
                    .equals(other.isPromoted, isPromoted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(imageURLs) ^
      const DeepCollectionEquality().hash(imageAssetsOption) ^
      const DeepCollectionEquality().hash(coordinates) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(creator) ^
      const DeepCollectionEquality().hash(difficulty) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(modificationDate) ^
      const DeepCollectionEquality().hash(objectives) ^
      const DeepCollectionEquality().hash(rewards) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(likedBy) ^
      const DeepCollectionEquality().hash(doneBy) ^
      const DeepCollectionEquality().hash(toDoBy) ^
      const DeepCollectionEquality().hash(isPromoted);

  @JsonKey(ignore: true)
  @override
  _$ExperienceCopyWith<_Experience> get copyWith =>
      __$ExperienceCopyWithImpl<_Experience>(this, _$identity);
}

abstract class _Experience extends Experience {
  const factory _Experience(
      {required UniqueId id,
      required Name title,
      required EntityDescription description,
      required Set<String> imageURLs,
      required Option<List<Asset>> imageAssetsOption,
      required Coordinates coordinates,
      required Location location,
      required SimpleUser creator,
      required Difficulty difficulty,
      required PastDate creationDate,
      required PastDate modificationDate,
      required ObjectiveList objectives,
      required RewardSet rewards,
      required TagSet tags,
      required Set<Comment> comments,
      required Set<UniqueId> likedBy,
      required Set<UniqueId> doneBy,
      required Set<UniqueId> toDoBy,
      required bool isPromoted}) = _$_Experience;
  const _Experience._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  Name get title => throw _privateConstructorUsedError;
  @override
  EntityDescription get description => throw _privateConstructorUsedError;
  @override
  Set<String> get imageURLs => throw _privateConstructorUsedError;
  @override
  Option<List<Asset>> get imageAssetsOption =>
      throw _privateConstructorUsedError;
  @override
  Coordinates get coordinates => throw _privateConstructorUsedError;
  @override
  Location get location => throw _privateConstructorUsedError;
  @override
  SimpleUser get creator => throw _privateConstructorUsedError;
  @override
  Difficulty get difficulty => throw _privateConstructorUsedError;
  @override
  PastDate get creationDate => throw _privateConstructorUsedError;
  @override
  PastDate get modificationDate => throw _privateConstructorUsedError;
  @override
  ObjectiveList get objectives => throw _privateConstructorUsedError;
  @override
  RewardSet get rewards => throw _privateConstructorUsedError;
  @override
  TagSet get tags => throw _privateConstructorUsedError;
  @override
  Set<Comment> get comments => throw _privateConstructorUsedError;
  @override
  Set<UniqueId> get likedBy => throw _privateConstructorUsedError;
  @override
  Set<UniqueId> get doneBy => throw _privateConstructorUsedError;
  @override
  Set<UniqueId> get toDoBy => throw _privateConstructorUsedError;
  @override
  bool get isPromoted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExperienceCopyWith<_Experience> get copyWith =>
      throw _privateConstructorUsedError;
}
