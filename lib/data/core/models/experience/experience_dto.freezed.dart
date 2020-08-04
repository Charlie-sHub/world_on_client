// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'experience_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ExperienceDto _$ExperienceDtoFromJson(Map<String, dynamic> json) {
  return _ExperienceDto.fromJson(json);
}

class _$ExperienceDtoTearOff {
  const _$ExperienceDtoTearOff();

// ignore: unused_element
  _ExperienceDto call(
      {@required int id,
      @required String title,
      @required String description,
      @required Set<String> imageURLs,
      @required CoordinatesDto coordinates,
      @required LocationDto location,
      @required UserDto creator,
      @required int difficulty,
      @required String creationDate,
      @required String modificationDate,
      @required Set<ObjectiveDto> objectives,
      @required Set<RewardDto> rewards,
      @required Set<TagDto> tags,
      @required Set<CommentDto> comments,
      @required Set<UserDto> likedBy,
      @required Set<UserDto> doneBy}) {
    return _ExperienceDto(
      id: id,
      title: title,
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
const $ExperienceDto = _$ExperienceDtoTearOff();

mixin _$ExperienceDto {
  int get id;
  String get title;
  String get description;
  Set<String> get imageURLs;
  CoordinatesDto get coordinates;
  LocationDto get location;
  UserDto get creator;
  int get difficulty;
  String get creationDate;
  String get modificationDate;
  Set<ObjectiveDto> get objectives;
  Set<RewardDto> get rewards;
  Set<TagDto> get tags;
  Set<CommentDto> get comments;
  Set<UserDto> get likedBy;
  Set<UserDto> get doneBy;

  Map<String, dynamic> toJson();
  $ExperienceDtoCopyWith<ExperienceDto> get copyWith;
}

abstract class $ExperienceDtoCopyWith<$Res> {
  factory $ExperienceDtoCopyWith(ExperienceDto value, $Res Function(ExperienceDto) then) = _$ExperienceDtoCopyWithImpl<$Res>;

  $Res call(
      {int id,
      String title,
      String description,
      Set<String> imageURLs,
      CoordinatesDto coordinates,
      LocationDto location,
      UserDto creator,
      int difficulty,
      String creationDate,
      String modificationDate,
      Set<ObjectiveDto> objectives,
      Set<RewardDto> rewards,
      Set<TagDto> tags,
      Set<CommentDto> comments,
      Set<UserDto> likedBy,
      Set<UserDto> doneBy});

  $CoordinatesDtoCopyWith<$Res> get coordinates;
  $LocationDtoCopyWith<$Res> get location;
  $UserDtoCopyWith<$Res> get creator;
}

class _$ExperienceDtoCopyWithImpl<$Res>
  implements $ExperienceDtoCopyWith<$Res> {
  _$ExperienceDtoCopyWithImpl(this._value, this._then);
  
  final ExperienceDto _value;
  
  // ignore: unused_field
  final $Res Function(ExperienceDto) _then;
  
  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
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
      title: title == freezed ? _value.title : title as String,
      description:
      description == freezed ? _value.description : description as String,
      imageURLs:
      imageURLs == freezed ? _value.imageURLs : imageURLs as Set<String>,
      coordinates: coordinates == freezed
        ? _value.coordinates
        : coordinates as CoordinatesDto,
      location: location == freezed ? _value.location : location as LocationDto,
      creator: creator == freezed ? _value.creator : creator as UserDto,
      difficulty: difficulty == freezed ? _value.difficulty : difficulty as int,
      creationDate: creationDate == freezed
        ? _value.creationDate
        : creationDate as String,
      modificationDate: modificationDate == freezed
        ? _value.modificationDate
        : modificationDate as String,
      objectives: objectives == freezed
        ? _value.objectives
        : objectives as Set<ObjectiveDto>,
      rewards: rewards == freezed ? _value.rewards : rewards as Set<RewardDto>,
      tags: tags == freezed ? _value.tags : tags as Set<TagDto>,
      comments:
      comments == freezed ? _value.comments : comments as Set<CommentDto>,
      likedBy: likedBy == freezed ? _value.likedBy : likedBy as Set<UserDto>,
      doneBy: doneBy == freezed ? _value.doneBy : doneBy as Set<UserDto>,
    ));
  }

  @override
  $CoordinatesDtoCopyWith<$Res> get coordinates {
    if (_value.coordinates == null) {
      return null;
    }
    return $CoordinatesDtoCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value));
    });
  }

  @override
  $LocationDtoCopyWith<$Res> get location {
    if (_value.location == null) {
      return null;
    }
    return $LocationDtoCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }

  @override
  $UserDtoCopyWith<$Res> get creator {
    if (_value.creator == null) {
      return null;
    }
    return $UserDtoCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value));
    });
  }
}

abstract class _$ExperienceDtoCopyWith<$Res>
  implements $ExperienceDtoCopyWith<$Res> {
  factory _$ExperienceDtoCopyWith(_ExperienceDto value, $Res Function(_ExperienceDto) then) =
  __$ExperienceDtoCopyWithImpl<$Res>;
  
  @override
  $Res call({int id,
    String title,
    String description,
    Set<String> imageURLs,
    CoordinatesDto coordinates,
    LocationDto location,
    UserDto creator,
    int difficulty,
    String creationDate,
    String modificationDate,
    Set<ObjectiveDto> objectives,
    Set<RewardDto> rewards,
      Set<TagDto> tags,
      Set<CommentDto> comments,
      Set<UserDto> likedBy,
      Set<UserDto> doneBy});

  @override
  $CoordinatesDtoCopyWith<$Res> get coordinates;
  @override
  $LocationDtoCopyWith<$Res> get location;
  @override
  $UserDtoCopyWith<$Res> get creator;
}

class __$ExperienceDtoCopyWithImpl<$Res> extends _$ExperienceDtoCopyWithImpl<$Res>
  implements _$ExperienceDtoCopyWith<$Res> {
  __$ExperienceDtoCopyWithImpl(_ExperienceDto _value, $Res Function(_ExperienceDto) _then)
    : super(_value, (v) => _then(v as _ExperienceDto));
  
  @override
  _ExperienceDto get _value => super._value as _ExperienceDto;
  
  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
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
    return _then(_ExperienceDto(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      description:
      description == freezed ? _value.description : description as String,
      imageURLs:
      imageURLs == freezed ? _value.imageURLs : imageURLs as Set<String>,
      coordinates: coordinates == freezed
        ? _value.coordinates
        : coordinates as CoordinatesDto,
      location: location == freezed ? _value.location : location as LocationDto,
      creator: creator == freezed ? _value.creator : creator as UserDto,
      difficulty: difficulty == freezed ? _value.difficulty : difficulty as int,
      creationDate: creationDate == freezed
        ? _value.creationDate
        : creationDate as String,
      modificationDate: modificationDate == freezed
        ? _value.modificationDate
        : modificationDate as String,
      objectives: objectives == freezed
        ? _value.objectives
        : objectives as Set<ObjectiveDto>,
      rewards: rewards == freezed ? _value.rewards : rewards as Set<RewardDto>,
      tags: tags == freezed ? _value.tags : tags as Set<TagDto>,
      comments:
      comments == freezed ? _value.comments : comments as Set<CommentDto>,
      likedBy: likedBy == freezed ? _value.likedBy : likedBy as Set<UserDto>,
      doneBy: doneBy == freezed ? _value.doneBy : doneBy as Set<UserDto>,
    ));
  }
}

@JsonSerializable()
class _$_ExperienceDto extends _ExperienceDto {
  const _$_ExperienceDto({@required this.id,
    @required this.title,
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
    : assert(id != null),
      assert(title != null),
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

  factory _$_ExperienceDto.fromJson(Map<String, dynamic> json) =>
    _$_$_ExperienceDtoFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final Set<String> imageURLs;
  @override
  final CoordinatesDto coordinates;
  @override
  final LocationDto location;
  @override
  final UserDto creator;
  @override
  final int difficulty;
  @override
  final String creationDate;
  @override
  final String modificationDate;
  @override
  final Set<ObjectiveDto> objectives;
  @override
  final Set<RewardDto> rewards;
  @override
  final Set<TagDto> tags;
  @override
  final Set<CommentDto> comments;
  @override
  final Set<UserDto> likedBy;
  @override
  final Set<UserDto> doneBy;

  @override
  String toString() {
    return 'ExperienceDto(id: $id, title: $title, description: $description, imageURLs: $imageURLs, coordinates: $coordinates, location: $location, creator: $creator, difficulty: $difficulty, creationDate: $creationDate, modificationDate: $modificationDate, objectives: $objectives, rewards: $rewards, tags: $tags, comments: $comments, likedBy: $likedBy, doneBy: $doneBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _ExperienceDto &&
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
      const DeepCollectionEquality().hash(title) ^
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
  _$ExperienceDtoCopyWith<_ExperienceDto> get copyWith =>
    __$ExperienceDtoCopyWithImpl<_ExperienceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExperienceDtoToJson(this);
  }
}

abstract class _ExperienceDto extends ExperienceDto {
  const _ExperienceDto._() : super._();
  const factory _ExperienceDto({@required int id,
    @required String title,
    @required String description,
    @required Set<String> imageURLs,
    @required CoordinatesDto coordinates,
    @required LocationDto location,
    @required UserDto creator,
    @required int difficulty,
    @required String creationDate,
    @required String modificationDate,
    @required Set<ObjectiveDto> objectives,
    @required Set<RewardDto> rewards,
      @required Set<TagDto> tags,
      @required Set<CommentDto> comments,
      @required Set<UserDto> likedBy,
      @required Set<UserDto> doneBy}) = _$_ExperienceDto;

  factory _ExperienceDto.fromJson(Map<String, dynamic> json) =
  _$_ExperienceDto.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  Set<String> get imageURLs;
  @override
  CoordinatesDto get coordinates;
  @override
  LocationDto get location;
  @override
  UserDto get creator;
  @override
  int get difficulty;
  @override
  String get creationDate;
  @override
  String get modificationDate;
  @override
  Set<ObjectiveDto> get objectives;
  @override
  Set<RewardDto> get rewards;
  @override
  Set<TagDto> get tags;
  @override
  Set<CommentDto> get comments;
  @override
  Set<UserDto> get likedBy;
  @override
  Set<UserDto> get doneBy;
  @override
  _$ExperienceDtoCopyWith<_ExperienceDto> get copyWith;
}
