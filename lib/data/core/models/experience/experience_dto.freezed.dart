// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'experience_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExperienceDto _$ExperienceDtoFromJson(Map<String, dynamic> json) {
  return _ExperienceDto.fromJson(json);
}

/// @nodoc
class _$ExperienceDtoTearOff {
  const _$ExperienceDtoTearOff();

  _ExperienceDto call(
      {required String id,
      required String title,
      required String description,
      required Set<String> imageURLs,
      required CoordinatesDto coordinates,
      required LocationDto location,
      required String creatorId,
      required UserDto creator,
      required int difficulty,
      @ServerTimestampConverter() required DateTime creationDate,
      @ServerTimestampConverter() required DateTime modificationDate,
      required List<ObjectiveDto> objectives,
      required Set<RewardDto> rewards,
      required Set<TagDto> tags,
      required Set<CommentDto> comments,
      required Set<String> likedBy,
      required Set<String> doneBy}) {
    return _ExperienceDto(
      id: id,
      title: title,
      description: description,
      imageURLs: imageURLs,
      coordinates: coordinates,
      location: location,
      creatorId: creatorId,
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

  ExperienceDto fromJson(Map<String, Object> json) {
    return ExperienceDto.fromJson(json);
  }
}

/// @nodoc
const $ExperienceDto = _$ExperienceDtoTearOff();

/// @nodoc
mixin _$ExperienceDto {
  String get id => throw _privateConstructorUsedError;

  String get title => throw _privateConstructorUsedError;

  String get description => throw _privateConstructorUsedError;

  Set<String> get imageURLs => throw _privateConstructorUsedError;

  CoordinatesDto get coordinates => throw _privateConstructorUsedError;

  LocationDto get location => throw _privateConstructorUsedError;

  String get creatorId => throw _privateConstructorUsedError;

  UserDto get creator => throw _privateConstructorUsedError;

  int get difficulty => throw _privateConstructorUsedError;

  @ServerTimestampConverter()
  DateTime get creationDate => throw _privateConstructorUsedError;

  @ServerTimestampConverter()
  DateTime get modificationDate => throw _privateConstructorUsedError;

  List<ObjectiveDto> get objectives => throw _privateConstructorUsedError;

  Set<RewardDto> get rewards => throw _privateConstructorUsedError;

  Set<TagDto> get tags => throw _privateConstructorUsedError; // Probably shouldn't be part of the DTO, as in Firestore it's a sub document of the experience document
  Set<CommentDto> get comments => throw _privateConstructorUsedError;

  Set<String> get likedBy => throw _privateConstructorUsedError;

  Set<String> get doneBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExperienceDtoCopyWith<ExperienceDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceDtoCopyWith<$Res> {
  factory $ExperienceDtoCopyWith(ExperienceDto value, $Res Function(ExperienceDto) then) = _$ExperienceDtoCopyWithImpl<$Res>;

  $Res call(
      {String id,
      String title,
      String description,
      Set<String> imageURLs,
      CoordinatesDto coordinates,
      LocationDto location,
      String creatorId,
      UserDto creator,
      int difficulty,
      @ServerTimestampConverter() DateTime creationDate,
      @ServerTimestampConverter() DateTime modificationDate,
      List<ObjectiveDto> objectives,
      Set<RewardDto> rewards,
      Set<TagDto> tags,
      Set<CommentDto> comments,
      Set<String> likedBy,
      Set<String> doneBy});

  $CoordinatesDtoCopyWith<$Res> get coordinates;
  $LocationDtoCopyWith<$Res> get location;
  $UserDtoCopyWith<$Res> get creator;
}

/// @nodoc
class _$ExperienceDtoCopyWithImpl<$Res> implements $ExperienceDtoCopyWith<$Res> {
  _$ExperienceDtoCopyWithImpl(this._value, this._then);

  final ExperienceDto _value;

  // ignore: unused_field
  final $Res Function(ExperienceDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? imageURLs = freezed,
    Object? coordinates = freezed,
    Object? location = freezed,
    Object? creatorId = freezed,
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
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageURLs: imageURLs == freezed
          ? _value.imageURLs
          : imageURLs // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as CoordinatesDto,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDto,
      creatorId: creatorId == freezed
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as UserDto,
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modificationDate: modificationDate == freezed
          ? _value.modificationDate
          : modificationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      objectives: objectives == freezed
          ? _value.objectives
          : objectives // ignore: cast_nullable_to_non_nullable
              as List<ObjectiveDto>,
      rewards: rewards == freezed
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as Set<RewardDto>,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as Set<TagDto>,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as Set<CommentDto>,
      likedBy: likedBy == freezed
          ? _value.likedBy
          : likedBy // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      doneBy: doneBy == freezed
          ? _value.doneBy
          : doneBy // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }

  @override
  $CoordinatesDtoCopyWith<$Res> get coordinates {
    return $CoordinatesDtoCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value));
    });
  }

  @override
  $LocationDtoCopyWith<$Res> get location {
    return $LocationDtoCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }

  @override
  $UserDtoCopyWith<$Res> get creator {
    return $UserDtoCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value));
    });
  }
}

/// @nodoc
abstract class _$ExperienceDtoCopyWith<$Res> implements $ExperienceDtoCopyWith<$Res> {
  factory _$ExperienceDtoCopyWith(_ExperienceDto value, $Res Function(_ExperienceDto) then) = __$ExperienceDtoCopyWithImpl<$Res>;

  @override
  $Res call(
      {String id,
      String title,
      String description,
      Set<String> imageURLs,
      CoordinatesDto coordinates,
      LocationDto location,
      String creatorId,
      UserDto creator,
      int difficulty,
      @ServerTimestampConverter() DateTime creationDate,
      @ServerTimestampConverter() DateTime modificationDate,
      List<ObjectiveDto> objectives,
      Set<RewardDto> rewards,
      Set<TagDto> tags,
      Set<CommentDto> comments,
      Set<String> likedBy,
      Set<String> doneBy});

  @override
  $CoordinatesDtoCopyWith<$Res> get coordinates;
  @override
  $LocationDtoCopyWith<$Res> get location;
  @override
  $UserDtoCopyWith<$Res> get creator;
}

/// @nodoc
class __$ExperienceDtoCopyWithImpl<$Res> extends _$ExperienceDtoCopyWithImpl<$Res> implements _$ExperienceDtoCopyWith<$Res> {
  __$ExperienceDtoCopyWithImpl(_ExperienceDto _value, $Res Function(_ExperienceDto) _then) : super(_value, (v) => _then(v as _ExperienceDto));

  @override
  _ExperienceDto get _value => super._value as _ExperienceDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? imageURLs = freezed,
    Object? coordinates = freezed,
    Object? location = freezed,
    Object? creatorId = freezed,
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
  }) {
    return _then(_ExperienceDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageURLs: imageURLs == freezed
          ? _value.imageURLs
          : imageURLs // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as CoordinatesDto,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDto,
      creatorId: creatorId == freezed
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as UserDto,
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modificationDate: modificationDate == freezed
          ? _value.modificationDate
          : modificationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      objectives: objectives == freezed
          ? _value.objectives
          : objectives // ignore: cast_nullable_to_non_nullable
              as List<ObjectiveDto>,
      rewards: rewards == freezed
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as Set<RewardDto>,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as Set<TagDto>,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as Set<CommentDto>,
      likedBy: likedBy == freezed
          ? _value.likedBy
          : likedBy // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      doneBy: doneBy == freezed
          ? _value.doneBy
          : doneBy // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ExperienceDto extends _ExperienceDto {
  const _$_ExperienceDto(
      {required this.id,
      required this.title,
      required this.description,
      required this.imageURLs,
      required this.coordinates,
      required this.location,
      required this.creatorId,
      required this.creator,
      required this.difficulty,
      @ServerTimestampConverter() required this.creationDate,
      @ServerTimestampConverter() required this.modificationDate,
      required this.objectives,
      required this.rewards,
      required this.tags,
      required this.comments,
      required this.likedBy,
      required this.doneBy})
      : super._();

  factory _$_ExperienceDto.fromJson(Map<String, dynamic> json) => _$_$_ExperienceDtoFromJson(json);

  @override
  final String id;
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
  final String creatorId;
  @override
  final UserDto creator;
  @override
  final int difficulty;
  @override
  @ServerTimestampConverter()
  final DateTime creationDate;
  @override
  @ServerTimestampConverter()
  final DateTime modificationDate;
  @override
  final List<ObjectiveDto> objectives;
  @override
  final Set<RewardDto> rewards;
  @override
  final Set<TagDto> tags;
  @override // Probably shouldn't be part of the DTO, as in Firestore it's a sub document of the experience document
  final Set<CommentDto> comments;
  @override
  final Set<String> likedBy;
  @override
  final Set<String> doneBy;

  @override
  String toString() {
    return 'ExperienceDto(id: $id, title: $title, description: $description, imageURLs: $imageURLs, coordinates: $coordinates, location: $location, creatorId: $creatorId, creator: $creator, difficulty: $difficulty, creationDate: $creationDate, modificationDate: $modificationDate, objectives: $objectives, rewards: $rewards, tags: $tags, comments: $comments, likedBy: $likedBy, doneBy: $doneBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExperienceDto &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) || const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) || const DeepCollectionEquality().equals(other.description, description)) &&
            (identical(other.imageURLs, imageURLs) || const DeepCollectionEquality().equals(other.imageURLs, imageURLs)) &&
            (identical(other.coordinates, coordinates) || const DeepCollectionEquality().equals(other.coordinates, coordinates)) &&
            (identical(other.location, location) || const DeepCollectionEquality().equals(other.location, location)) &&
            (identical(other.creatorId, creatorId) || const DeepCollectionEquality().equals(other.creatorId, creatorId)) &&
            (identical(other.creator, creator) || const DeepCollectionEquality().equals(other.creator, creator)) &&
            (identical(other.difficulty, difficulty) || const DeepCollectionEquality().equals(other.difficulty, difficulty)) &&
            (identical(other.creationDate, creationDate) || const DeepCollectionEquality().equals(other.creationDate, creationDate)) &&
            (identical(other.modificationDate, modificationDate) || const DeepCollectionEquality().equals(other.modificationDate, modificationDate)) &&
            (identical(other.objectives, objectives) || const DeepCollectionEquality().equals(other.objectives, objectives)) &&
            (identical(other.rewards, rewards) || const DeepCollectionEquality().equals(other.rewards, rewards)) &&
            (identical(other.tags, tags) || const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.comments, comments) || const DeepCollectionEquality().equals(other.comments, comments)) &&
            (identical(other.likedBy, likedBy) || const DeepCollectionEquality().equals(other.likedBy, likedBy)) &&
            (identical(other.doneBy, doneBy) || const DeepCollectionEquality().equals(other.doneBy, doneBy)));
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
      const DeepCollectionEquality().hash(creatorId) ^
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

  @JsonKey(ignore: true)
  @override
  _$ExperienceDtoCopyWith<_ExperienceDto> get copyWith => __$ExperienceDtoCopyWithImpl<_ExperienceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExperienceDtoToJson(this);
  }
}

abstract class _ExperienceDto extends ExperienceDto {
  const factory _ExperienceDto(
      {required String id,
      required String title,
      required String description,
      required Set<String> imageURLs,
      required CoordinatesDto coordinates,
      required LocationDto location,
      required String creatorId,
      required UserDto creator,
      required int difficulty,
      @ServerTimestampConverter() required DateTime creationDate,
      @ServerTimestampConverter() required DateTime modificationDate,
      required List<ObjectiveDto> objectives,
      required Set<RewardDto> rewards,
      required Set<TagDto> tags,
      required Set<CommentDto> comments,
      required Set<String> likedBy,
      required Set<String> doneBy}) = _$_ExperienceDto;

  const _ExperienceDto._() : super._();

  factory _ExperienceDto.fromJson(Map<String, dynamic> json) = _$_ExperienceDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;

  @override
  String get title => throw _privateConstructorUsedError;

  @override
  String get description => throw _privateConstructorUsedError;

  @override
  Set<String> get imageURLs => throw _privateConstructorUsedError;

  @override
  CoordinatesDto get coordinates => throw _privateConstructorUsedError;

  @override
  LocationDto get location => throw _privateConstructorUsedError;

  @override
  String get creatorId => throw _privateConstructorUsedError;

  @override
  UserDto get creator => throw _privateConstructorUsedError;

  @override
  int get difficulty => throw _privateConstructorUsedError;

  @override
  @ServerTimestampConverter()
  DateTime get creationDate => throw _privateConstructorUsedError;

  @override
  @ServerTimestampConverter()
  DateTime get modificationDate => throw _privateConstructorUsedError;

  @override
  List<ObjectiveDto> get objectives => throw _privateConstructorUsedError;

  @override
  Set<RewardDto> get rewards => throw _privateConstructorUsedError;

  @override
  Set<TagDto> get tags => throw _privateConstructorUsedError;

  @override // Probably shouldn't be part of the DTO, as in Firestore it's a sub document of the experience document
  Set<CommentDto> get comments => throw _privateConstructorUsedError;

  @override
  Set<String> get likedBy => throw _privateConstructorUsedError;

  @override
  Set<String> get doneBy => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$ExperienceDtoCopyWith<_ExperienceDto> get copyWith => throw _privateConstructorUsedError;
}
