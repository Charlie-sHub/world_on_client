// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'achievement_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AchievementDto _$AchievementDtoFromJson(Map<String, dynamic> json) {
  return _AchievementDto.fromJson(json);
}

class _$AchievementDtoTearOff {
  const _$AchievementDtoTearOff();

// ignore: unused_element
  _AchievementDto call(
      {@required int id,
      @required String name,
      @required String description,
      @required String imageURL,
      @required String type,
      @required int requisite,
      @required int experiencePoints,
      @required UserDto creator,
      @required String creationDate,
      @required String modificationDate,
      @required Set<TagDto> tags}) {
    return _AchievementDto(
      id: id,
      name: name,
      description: description,
      imageURL: imageURL,
      type: type,
      requisite: requisite,
      experiencePoints: experiencePoints,
      creator: creator,
      creationDate: creationDate,
      modificationDate: modificationDate,
      tags: tags,
    );
  }
}

// ignore: unused_element
const $AchievementDto = _$AchievementDtoTearOff();

mixin _$AchievementDto {
  int get id;
  String get name;
  String get description;
  String get imageURL;
  String get type;
  int get requisite;
  int get experiencePoints;
  UserDto get creator;
  String get creationDate;
  String get modificationDate;
  Set<TagDto> get tags;

  Map<String, dynamic> toJson();
  $AchievementDtoCopyWith<AchievementDto> get copyWith;
}

abstract class $AchievementDtoCopyWith<$Res> {
  factory $AchievementDtoCopyWith(AchievementDto value, $Res Function(AchievementDto) then) = _$AchievementDtoCopyWithImpl<$Res>;

  $Res call(
      {int id, String name, String description, String imageURL, String type, int requisite, int experiencePoints, UserDto creator, String creationDate, String modificationDate, Set<TagDto> tags});

  $UserDtoCopyWith<$Res> get creator;
}

class _$AchievementDtoCopyWithImpl<$Res> implements $AchievementDtoCopyWith<$Res> {
  _$AchievementDtoCopyWithImpl(this._value, this._then);

  final AchievementDto _value;

  // ignore: unused_field
  final $Res Function(AchievementDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object imageURL = freezed,
    Object type = freezed,
    Object requisite = freezed,
    Object experiencePoints = freezed,
    Object creator = freezed,
    Object creationDate = freezed,
    Object modificationDate = freezed,
    Object tags = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      description: description == freezed ? _value.description : description as String,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      type: type == freezed ? _value.type : type as String,
      requisite: requisite == freezed ? _value.requisite : requisite as int,
      experiencePoints: experiencePoints == freezed ? _value.experiencePoints : experiencePoints as int,
      creator: creator == freezed ? _value.creator : creator as UserDto,
      creationDate: creationDate == freezed ? _value.creationDate : creationDate as String,
      modificationDate: modificationDate == freezed ? _value.modificationDate : modificationDate as String,
      tags: tags == freezed ? _value.tags : tags as Set<TagDto>,
    ));
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

abstract class _$AchievementDtoCopyWith<$Res> implements $AchievementDtoCopyWith<$Res> {
  factory _$AchievementDtoCopyWith(_AchievementDto value, $Res Function(_AchievementDto) then) = __$AchievementDtoCopyWithImpl<$Res>;

  @override
  $Res call(
      {int id, String name, String description, String imageURL, String type, int requisite, int experiencePoints, UserDto creator, String creationDate, String modificationDate, Set<TagDto> tags});

  @override
  $UserDtoCopyWith<$Res> get creator;
}

class __$AchievementDtoCopyWithImpl<$Res> extends _$AchievementDtoCopyWithImpl<$Res> implements _$AchievementDtoCopyWith<$Res> {
  __$AchievementDtoCopyWithImpl(_AchievementDto _value, $Res Function(_AchievementDto) _then) : super(_value, (v) => _then(v as _AchievementDto));

  @override
  _AchievementDto get _value => super._value as _AchievementDto;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object imageURL = freezed,
    Object type = freezed,
    Object requisite = freezed,
    Object experiencePoints = freezed,
    Object creator = freezed,
    Object creationDate = freezed,
    Object modificationDate = freezed,
    Object tags = freezed,
  }) {
    return _then(_AchievementDto(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      description: description == freezed ? _value.description : description as String,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      type: type == freezed ? _value.type : type as String,
      requisite: requisite == freezed ? _value.requisite : requisite as int,
      experiencePoints: experiencePoints == freezed ? _value.experiencePoints : experiencePoints as int,
      creator: creator == freezed ? _value.creator : creator as UserDto,
      creationDate: creationDate == freezed ? _value.creationDate : creationDate as String,
      modificationDate: modificationDate == freezed ? _value.modificationDate : modificationDate as String,
      tags: tags == freezed ? _value.tags : tags as Set<TagDto>,
    ));
  }
}

@JsonSerializable()
class _$_AchievementDto extends _AchievementDto {
  const _$_AchievementDto(
      {@required this.id,
      @required this.name,
      @required this.description,
      @required this.imageURL,
      @required this.type,
      @required this.requisite,
      @required this.experiencePoints,
      @required this.creator,
      @required this.creationDate,
      @required this.modificationDate,
      @required this.tags})
      : assert(id != null),
        assert(name != null),
        assert(description != null),
        assert(imageURL != null),
        assert(type != null),
        assert(requisite != null),
        assert(experiencePoints != null),
        assert(creator != null),
        assert(creationDate != null),
        assert(modificationDate != null),
        assert(tags != null),
        super._();

  factory _$_AchievementDto.fromJson(Map<String, dynamic> json) => _$_$_AchievementDtoFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String imageURL;
  @override
  final String type;
  @override
  final int requisite;
  @override
  final int experiencePoints;
  @override
  final UserDto creator;
  @override
  final String creationDate;
  @override
  final String modificationDate;
  @override
  final Set<TagDto> tags;

  @override
  String toString() {
    return 'AchievementDto(id: $id, name: $name, description: $description, imageURL: $imageURL, type: $type, requisite: $requisite, experiencePoints: $experiencePoints, creator: $creator, creationDate: $creationDate, modificationDate: $modificationDate, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AchievementDto &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) || const DeepCollectionEquality().equals(other.description, description)) &&
            (identical(other.imageURL, imageURL) || const DeepCollectionEquality().equals(other.imageURL, imageURL)) &&
            (identical(other.type, type) || const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.requisite, requisite) || const DeepCollectionEquality().equals(other.requisite, requisite)) &&
            (identical(other.experiencePoints, experiencePoints) || const DeepCollectionEquality().equals(other.experiencePoints, experiencePoints)) &&
            (identical(other.creator, creator) || const DeepCollectionEquality().equals(other.creator, creator)) &&
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
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(requisite) ^
      const DeepCollectionEquality().hash(experiencePoints) ^
      const DeepCollectionEquality().hash(creator) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(modificationDate) ^
      const DeepCollectionEquality().hash(tags);

  @override
  _$AchievementDtoCopyWith<_AchievementDto> get copyWith => __$AchievementDtoCopyWithImpl<_AchievementDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AchievementDtoToJson(this);
  }
}

abstract class _AchievementDto extends AchievementDto {
  const _AchievementDto._() : super._();
  
  const factory _AchievementDto({@required int id,
    @required String name,
    @required String description,
    @required String imageURL,
    @required String type,
    @required int requisite,
    @required int experiencePoints,
    @required UserDto creator,
    @required String creationDate,
    @required String modificationDate,
    @required Set<TagDto> tags}) = _$_AchievementDto;
  
  factory _AchievementDto.fromJson(Map<String, dynamic> json) = _$_AchievementDto.fromJson;
  
  @override
  int get id;
  
  @override
  String get name;
  
  @override
  String get description;

  @override
  String get imageURL;
  
  @override
  String get type;
  @override
  int get requisite;
  @override
  int get experiencePoints;
  @override
  UserDto get creator;
  @override
  String get creationDate;
  @override
  String get modificationDate;
  @override
  Set<TagDto> get tags;
  @override
  _$AchievementDtoCopyWith<_AchievementDto> get copyWith;
}
