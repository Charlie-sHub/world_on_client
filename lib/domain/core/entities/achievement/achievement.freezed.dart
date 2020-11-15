// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'achievement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AchievementTearOff {
  const _$AchievementTearOff();

// ignore: unused_element
  _Achievement call(
      {@required UniqueId id,
      @required Name name,
      @required EntityDescription description,
      @required String imageURL,
      @required Option<File> imageFile,
      @required String type,
      @required int requisite,
      @required ExperiencePoints experiencePoints,
      @required UniqueId creatorId,
      @required PastDate creationDate,
      @required PastDate modificationDate,
      @required TagSet tags}) {
    return _Achievement(
      id: id,
      name: name,
      description: description,
      imageURL: imageURL,
      imageFile: imageFile,
      type: type,
      requisite: requisite,
      experiencePoints: experiencePoints,
      creatorId: creatorId,
      creationDate: creationDate,
      modificationDate: modificationDate,
      tags: tags,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Achievement = _$AchievementTearOff();

/// @nodoc
mixin _$Achievement {
  UniqueId get id;

  Name get name;

  EntityDescription get description; // TODO: Make a value object and validator for image URLs from World On's back-end
// Maybe Firestore will make that unnecessary
  String get imageURL;

  Option<File> get imageFile;

  String get type;

  int get requisite; // This will probably be reworked in the future to accommodate different kinds of achievements
  ExperiencePoints get experiencePoints;

  UniqueId get creatorId;

  PastDate get creationDate;

  PastDate get modificationDate;

  TagSet get tags;

  $AchievementCopyWith<Achievement> get copyWith;
}

/// @nodoc
abstract class $AchievementCopyWith<$Res> {
  factory $AchievementCopyWith(Achievement value, $Res Function(Achievement) then) = _$AchievementCopyWithImpl<$Res>;

  $Res call(
      {UniqueId id,
      Name name,
      EntityDescription description,
      String imageURL,
      Option<File> imageFile,
      String type,
      int requisite,
      ExperiencePoints experiencePoints,
      UniqueId creatorId,
      PastDate creationDate,
      PastDate modificationDate,
      TagSet tags});
}

/// @nodoc
class _$AchievementCopyWithImpl<$Res> implements $AchievementCopyWith<$Res> {
  _$AchievementCopyWithImpl(this._value, this._then);

  final Achievement _value;
  // ignore: unused_field
  final $Res Function(Achievement) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object imageURL = freezed,
    Object imageFile = freezed,
    Object type = freezed,
    Object requisite = freezed,
    Object experiencePoints = freezed,
    Object creatorId = freezed,
    Object creationDate = freezed,
    Object modificationDate = freezed,
    Object tags = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as Name,
      description: description == freezed ? _value.description : description as EntityDescription,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      imageFile: imageFile == freezed ? _value.imageFile : imageFile as Option<File>,
      type: type == freezed ? _value.type : type as String,
      requisite: requisite == freezed ? _value.requisite : requisite as int,
      experiencePoints: experiencePoints == freezed ? _value.experiencePoints : experiencePoints as ExperiencePoints,
      creatorId: creatorId == freezed ? _value.creatorId : creatorId as UniqueId,
      creationDate: creationDate == freezed ? _value.creationDate : creationDate as PastDate,
      modificationDate: modificationDate == freezed ? _value.modificationDate : modificationDate as PastDate,
      tags: tags == freezed ? _value.tags : tags as TagSet,
    ));
  }
}

/// @nodoc
abstract class _$AchievementCopyWith<$Res> implements $AchievementCopyWith<$Res> {
  factory _$AchievementCopyWith(_Achievement value, $Res Function(_Achievement) then) = __$AchievementCopyWithImpl<$Res>;
  
  @override
  $Res call({UniqueId id,
    Name name,
    EntityDescription description,
    String imageURL,
    Option<File> imageFile,
    String type,
    int requisite,
    ExperiencePoints experiencePoints,
    UniqueId creatorId,
    PastDate creationDate,
    PastDate modificationDate,
    TagSet tags});
}

/// @nodoc
class __$AchievementCopyWithImpl<$Res> extends _$AchievementCopyWithImpl<$Res> implements _$AchievementCopyWith<$Res> {
  __$AchievementCopyWithImpl(_Achievement _value, $Res Function(_Achievement) _then) : super(_value, (v) => _then(v as _Achievement));
  
  @override
  _Achievement get _value => super._value as _Achievement;
  
  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object imageURL = freezed,
    Object imageFile = freezed,
    Object type = freezed,
    Object requisite = freezed,
    Object experiencePoints = freezed,
    Object creatorId = freezed,
    Object creationDate = freezed,
    Object modificationDate = freezed,
    Object tags = freezed,
  }) {
    return _then(_Achievement(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as Name,
      description: description == freezed ? _value.description : description as EntityDescription,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      imageFile: imageFile == freezed ? _value.imageFile : imageFile as Option<File>,
      type: type == freezed ? _value.type : type as String,
      requisite: requisite == freezed ? _value.requisite : requisite as int,
      experiencePoints: experiencePoints == freezed ? _value.experiencePoints : experiencePoints as ExperiencePoints,
      creatorId: creatorId == freezed ? _value.creatorId : creatorId as UniqueId,
      creationDate: creationDate == freezed ? _value.creationDate : creationDate as PastDate,
      modificationDate: modificationDate == freezed ? _value.modificationDate : modificationDate as PastDate,
      tags: tags == freezed ? _value.tags : tags as TagSet,
    ));
  }
}

/// @nodoc
class _$_Achievement extends _Achievement {
  const _$_Achievement(
      {@required this.id,
      @required this.name,
      @required this.description,
      @required this.imageURL,
      @required this.imageFile,
      @required this.type,
      @required this.requisite,
      @required this.experiencePoints,
      @required this.creatorId,
      @required this.creationDate,
      @required this.modificationDate,
      @required this.tags})
      : assert(id != null),
        assert(name != null),
        assert(description != null),
        assert(imageURL != null),
        assert(imageFile != null),
        assert(type != null),
        assert(requisite != null),
        assert(experiencePoints != null),
        assert(creatorId != null),
        assert(creationDate != null),
        assert(modificationDate != null),
        assert(tags != null),
        super._();

  @override
  final UniqueId id;
  @override
  final Name name;
  @override
  final EntityDescription description;
  @override // TODO: Make a value object and validator for image URLs from World On's back-end
// Maybe Firestore will make that unnecessary
  final String imageURL;
  @override
  final Option<File> imageFile;
  @override
  final String type;
  @override
  final int requisite;
  @override // This will probably be reworked in the future to accommodate different kinds of achievements
  final ExperiencePoints experiencePoints;
  @override
  final UniqueId creatorId;
  @override
  final PastDate creationDate;
  @override
  final PastDate modificationDate;
  @override
  final TagSet tags;

  @override
  String toString() {
    return 'Achievement(id: $id, name: $name, description: $description, imageURL: $imageURL, imageFile: $imageFile, type: $type, requisite: $requisite, experiencePoints: $experiencePoints, creatorId: $creatorId, creationDate: $creationDate, modificationDate: $modificationDate, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _Achievement &&
        (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
        (identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name)) &&
        (identical(other.description, description) || const DeepCollectionEquality().equals(other.description, description)) &&
        (identical(other.imageURL, imageURL) || const DeepCollectionEquality().equals(other.imageURL, imageURL)) &&
        (identical(other.imageFile, imageFile) || const DeepCollectionEquality().equals(other.imageFile, imageFile)) &&
        (identical(other.type, type) || const DeepCollectionEquality().equals(other.type, type)) &&
        (identical(other.requisite, requisite) || const DeepCollectionEquality().equals(other.requisite, requisite)) &&
        (identical(other.experiencePoints, experiencePoints) || const DeepCollectionEquality().equals(other.experiencePoints, experiencePoints)) &&
        (identical(other.creatorId, creatorId) || const DeepCollectionEquality().equals(other.creatorId, creatorId)) &&
        (identical(other.creationDate, creationDate) || const DeepCollectionEquality().equals(other.creationDate, creationDate)) &&
        (identical(other.modificationDate, modificationDate) || const DeepCollectionEquality().equals(other.modificationDate, modificationDate)) &&
        (identical(other.tags, tags) || const DeepCollectionEquality().equals(other.tags, tags)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(imageURL) ^
      const DeepCollectionEquality().hash(imageFile) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(requisite) ^
      const DeepCollectionEquality().hash(experiencePoints) ^
      const DeepCollectionEquality().hash(creatorId) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(modificationDate) ^
      const DeepCollectionEquality().hash(tags);

  @override
  _$AchievementCopyWith<_Achievement> get copyWith => __$AchievementCopyWithImpl<_Achievement>(this, _$identity);
}

abstract class _Achievement extends Achievement {
  const _Achievement._() : super._();
  const factory _Achievement(
      {@required UniqueId id,
      @required Name name,
      @required EntityDescription description,
      @required String imageURL,
      @required Option<File> imageFile,
      @required String type,
      @required int requisite,
      @required ExperiencePoints experiencePoints,
      @required UniqueId creatorId,
      @required PastDate creationDate,
      @required PastDate modificationDate,
      @required TagSet tags}) = _$_Achievement;

  @override
  UniqueId get id;
  @override
  Name get name;
  @override
  EntityDescription get description;
  @override // TODO: Make a value object and validator for image URLs from World On's back-end
// Maybe Firestore will make that unnecessary
  String get imageURL;
  @override
  Option<File> get imageFile;
  @override
  String get type;
  @override
  int get requisite;
  @override // This will probably be reworked in the future to accommodate different kinds of achievements
  ExperiencePoints get experiencePoints;
  @override
  UniqueId get creatorId;
  @override
  PastDate get creationDate;
  @override
  PastDate get modificationDate;
  @override
  TagSet get tags;
  @override
  _$AchievementCopyWith<_Achievement> get copyWith;
}
