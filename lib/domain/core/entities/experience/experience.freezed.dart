// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'experience.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExperienceTearOff {
  const _$ExperienceTearOff();

  _Experience call(
      {int id,
      @required Name name,
      @required EntityDescription description,
      @required Set<String> imageURLs,
      @required Coordinates coordinates,
      @required Location location,
      @required User creator,
      @required Difficulty difficulty,
      @required PastDate creationDate,
      @required PastDate modificationDate,
      @required ObjectiveSet objectives,
      @required RewardSet rewards,
      @required TagSet tags,
      @required Set<Comment> comments,
      @required Set<User> likedBy,
      @required Set<User> doneBy}) {
    return _Experience(
      id: id,
      name: name,
      description: description,
      imageURLs: imageURLs,
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
    );
  }
}

// ignore: unused_element
const $Experience = _$ExperienceTearOff();

mixin _$Experience {
  int get id;
  Name get name;
  EntityDescription get description;
  Set<String> get imageURLs;
  Coordinates get coordinates;
  Location get location;
  User get creator;
  Difficulty get difficulty;
  PastDate get creationDate;
  PastDate get modificationDate;
  ObjectiveSet get objectives;
  RewardSet get rewards;
  TagSet get tags;
  Set<Comment> get comments;
  Set<User> get likedBy;
  Set<User> get doneBy;

  $ExperienceCopyWith<Experience> get copyWith;
}

abstract class $ExperienceCopyWith<$Res> {
  factory $ExperienceCopyWith(
          Experience value, $Res Function(Experience) then) =
      _$ExperienceCopyWithImpl<$Res>;
  $Res call(
      {int id,
      Name name,
      EntityDescription description,
      Set<String> imageURLs,
      Coordinates coordinates,
      Location location,
      User creator,
      Difficulty difficulty,
      PastDate creationDate,
      PastDate modificationDate,
      ObjectiveSet objectives,
      RewardSet rewards,
      TagSet tags,
      Set<Comment> comments,
      Set<User> likedBy,
      Set<User> doneBy});

  $CoordinatesCopyWith<$Res> get coordinates;
  $LocationCopyWith<$Res> get location;
  $UserCopyWith<$Res> get creator;
}

class _$ExperienceCopyWithImpl<$Res> implements $ExperienceCopyWith<$Res> {
  _$ExperienceCopyWithImpl(this._value, this._then);

  final Experience _value;
  // ignore: unused_field
  final $Res Function(Experience) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object imageURLs = freezed,
    Object coordinates = freezed,
    Object location = freezed,
    Object creator = freezed,
    Object difficulty = freezed,
    Object creationDate = freezed,
    Object modificationDate = freezed,
    Object objectives = freezed,
    Object rewards = freezed,
    Object tags = freezed,
    Object comments = freezed,
    Object likedBy = freezed,
    Object doneBy = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as Name,
      description: description == freezed
          ? _value.description
          : description as EntityDescription,
      imageURLs:
          imageURLs == freezed ? _value.imageURLs : imageURLs as Set<String>,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates as Coordinates,
      location: location == freezed ? _value.location : location as Location,
      creator: creator == freezed ? _value.creator : creator as User,
      difficulty:
          difficulty == freezed ? _value.difficulty : difficulty as Difficulty,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate as PastDate,
      modificationDate: modificationDate == freezed
          ? _value.modificationDate
          : modificationDate as PastDate,
      objectives: objectives == freezed
          ? _value.objectives
          : objectives as ObjectiveSet,
      rewards: rewards == freezed ? _value.rewards : rewards as RewardSet,
      tags: tags == freezed ? _value.tags : tags as TagSet,
      comments:
          comments == freezed ? _value.comments : comments as Set<Comment>,
      likedBy: likedBy == freezed ? _value.likedBy : likedBy as Set<User>,
      doneBy: doneBy == freezed ? _value.doneBy : doneBy as Set<User>,
    ));
  }

  @override
  $CoordinatesCopyWith<$Res> get coordinates {
    if (_value.coordinates == null) {
      return null;
    }
    return $CoordinatesCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value));
    });
  }

  @override
  $LocationCopyWith<$Res> get location {
    if (_value.location == null) {
      return null;
    }
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }

  @override
  $UserCopyWith<$Res> get creator {
    if (_value.creator == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value));
    });
  }
}

abstract class _$ExperienceCopyWith<$Res> implements $ExperienceCopyWith<$Res> {
  factory _$ExperienceCopyWith(
          _Experience value, $Res Function(_Experience) then) =
      __$ExperienceCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      Name name,
      EntityDescription description,
      Set<String> imageURLs,
      Coordinates coordinates,
      Location location,
      User creator,
      Difficulty difficulty,
      PastDate creationDate,
      PastDate modificationDate,
      ObjectiveSet objectives,
      RewardSet rewards,
      TagSet tags,
      Set<Comment> comments,
      Set<User> likedBy,
      Set<User> doneBy});

  @override
  $CoordinatesCopyWith<$Res> get coordinates;
  @override
  $LocationCopyWith<$Res> get location;
  @override
  $UserCopyWith<$Res> get creator;
}

class __$ExperienceCopyWithImpl<$Res> extends _$ExperienceCopyWithImpl<$Res>
    implements _$ExperienceCopyWith<$Res> {
  __$ExperienceCopyWithImpl(
      _Experience _value, $Res Function(_Experience) _then)
      : super(_value, (v) => _then(v as _Experience));

  @override
  _Experience get _value => super._value as _Experience;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object imageURLs = freezed,
    Object coordinates = freezed,
    Object location = freezed,
    Object creator = freezed,
    Object difficulty = freezed,
    Object creationDate = freezed,
    Object modificationDate = freezed,
    Object objectives = freezed,
    Object rewards = freezed,
    Object tags = freezed,
    Object comments = freezed,
    Object likedBy = freezed,
    Object doneBy = freezed,
  }) {
    return _then(_Experience(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as Name,
      description: description == freezed
          ? _value.description
          : description as EntityDescription,
      imageURLs:
          imageURLs == freezed ? _value.imageURLs : imageURLs as Set<String>,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates as Coordinates,
      location: location == freezed ? _value.location : location as Location,
      creator: creator == freezed ? _value.creator : creator as User,
      difficulty:
          difficulty == freezed ? _value.difficulty : difficulty as Difficulty,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate as PastDate,
      modificationDate: modificationDate == freezed
          ? _value.modificationDate
          : modificationDate as PastDate,
      objectives: objectives == freezed
          ? _value.objectives
          : objectives as ObjectiveSet,
      rewards: rewards == freezed ? _value.rewards : rewards as RewardSet,
      tags: tags == freezed ? _value.tags : tags as TagSet,
      comments:
          comments == freezed ? _value.comments : comments as Set<Comment>,
      likedBy: likedBy == freezed ? _value.likedBy : likedBy as Set<User>,
      doneBy: doneBy == freezed ? _value.doneBy : doneBy as Set<User>,
    ));
  }
}

class _$_Experience extends _Experience {
  const _$_Experience(
      {this.id,
      @required this.name,
      @required this.description,
      @required this.imageURLs,
      @required this.coordinates,
      @required this.location,
      @required this.creator,
      @required this.difficulty,
      @required this.creationDate,
      @required this.modificationDate,
      @required this.objectives,
      @required this.rewards,
      @required this.tags,
      @required this.comments,
      @required this.likedBy,
      @required this.doneBy})
      : assert(name != null),
        assert(description != null),
        assert(imageURLs != null),
        assert(coordinates != null),
        assert(location != null),
        assert(creator != null),
        assert(difficulty != null),
        assert(creationDate != null),
        assert(modificationDate != null),
        assert(objectives != null),
        assert(rewards != null),
        assert(tags != null),
        assert(comments != null),
        assert(likedBy != null),
        assert(doneBy != null),
        super._();

  @override
  final int id;
  @override
  final Name name;
  @override
  final EntityDescription description;
  @override
  final Set<String> imageURLs;
  @override
  final Coordinates coordinates;
  @override
  final Location location;
  @override
  final User creator;
  @override
  final Difficulty difficulty;
  @override
  final PastDate creationDate;
  @override
  final PastDate modificationDate;
  @override
  final ObjectiveSet objectives;
  @override
  final RewardSet rewards;
  @override
  final TagSet tags;
  @override
  final Set<Comment> comments;
  @override
  final Set<User> likedBy;
  @override
  final Set<User> doneBy;

  @override
  String toString() {
    return 'Experience(id: $id, name: $name, description: $description, imageURLs: $imageURLs, coordinates: $coordinates, location: $location, creator: $creator, difficulty: $difficulty, creationDate: $creationDate, modificationDate: $modificationDate, objectives: $objectives, rewards: $rewards, tags: $tags, comments: $comments, likedBy: $likedBy, doneBy: $doneBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Experience &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.imageURLs, imageURLs) ||
                const DeepCollectionEquality()
                    .equals(other.imageURLs, imageURLs)) &&
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
                const DeepCollectionEquality().equals(other.doneBy, doneBy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(imageURLs) ^
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
      const DeepCollectionEquality().hash(doneBy);

  @override
  _$ExperienceCopyWith<_Experience> get copyWith =>
      __$ExperienceCopyWithImpl<_Experience>(this, _$identity);
}

abstract class _Experience extends Experience {
  const _Experience._() : super._();

  const factory _Experience(
      {int id,
      @required Name name,
      @required EntityDescription description,
      @required Set<String> imageURLs,
      @required Coordinates coordinates,
      @required Location location,
      @required User creator,
      @required Difficulty difficulty,
      @required PastDate creationDate,
      @required PastDate modificationDate,
      @required ObjectiveSet objectives,
      @required RewardSet rewards,
      @required TagSet tags,
      @required Set<Comment> comments,
      @required Set<User> likedBy,
      @required Set<User> doneBy}) = _$_Experience;

  @override
  int get id;
  @override
  Name get name;
  @override
  EntityDescription get description;
  @override
  Set<String> get imageURLs;
  @override
  Coordinates get coordinates;
  @override
  Location get location;
  @override
  User get creator;
  @override
  Difficulty get difficulty;
  @override
  PastDate get creationDate;
  @override
  PastDate get modificationDate;
  @override
  ObjectiveSet get objectives;
  @override
  RewardSet get rewards;
  @override
  TagSet get tags;
  @override
  Set<Comment> get comments;
  @override
  Set<User> get likedBy;
  @override
  Set<User> get doneBy;
  @override
  _$ExperienceCopyWith<_Experience> get copyWith;
}
