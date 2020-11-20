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

/// @nodoc
class _$AchievementDtoTearOff {
  const _$AchievementDtoTearOff();

// ignore: unused_element
  _AchievementDto call({@required String id,
    @required String name,
    @required String description,
    @required String imageURL,
    @required String type,
    @required int requisite,
    @required int experiencePoints,
    @required String creatorId,
    @required String creationDate,
    @required String modificationDate,
    @required Set<String> tagNames}) {
    return _AchievementDto(
      id: id,
      name: name,
      description: description,
      imageURL: imageURL,
      type: type,
      requisite: requisite,
      experiencePoints: experiencePoints,
      creatorId: creatorId,
      creationDate: creationDate,
      modificationDate: modificationDate,
      tagNames: tagNames,
    );
  }

// ignore: unused_element
  AchievementDto fromJson(Map<String, Object> json) {
    return AchievementDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AchievementDto = _$AchievementDtoTearOff();

/// @nodoc
mixin _$AchievementDto {
  String get id;
  String get name;
  String get description;
  String get imageURL;
  String get type;
  int get requisite;
  int get experiencePoints;
  String get creatorId;
  String get creationDate;

  String get modificationDate;

  Set<String> get tagNames;

  Map<String, dynamic> toJson();
  $AchievementDtoCopyWith<AchievementDto> get copyWith;
}

/// @nodoc
abstract class $AchievementDtoCopyWith<$Res> {
  factory $AchievementDtoCopyWith(AchievementDto value, $Res Function(AchievementDto) then) = _$AchievementDtoCopyWithImpl<$Res>;

  $Res call(
      {String id,
      String name,
      String description,
      String imageURL,
      String type,
      int requisite,
      int experiencePoints,
      String creatorId,
      String creationDate,
      String modificationDate,
      Set<String> tagNames});
}

/// @nodoc
class _$AchievementDtoCopyWithImpl<$Res>
    implements $AchievementDtoCopyWith<$Res> {
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
    Object creatorId = freezed,
    Object creationDate = freezed,
    Object modificationDate = freezed,
    Object tagNames = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      type: type == freezed ? _value.type : type as String,
      requisite: requisite == freezed ? _value.requisite : requisite as int,
      experiencePoints: experiencePoints == freezed
        ? _value.experiencePoints
        : experiencePoints as int,
      creatorId: creatorId == freezed ? _value.creatorId : creatorId as String,
      creationDate: creationDate == freezed
        ? _value.creationDate
        : creationDate as String,
      modificationDate: modificationDate == freezed
        ? _value.modificationDate
        : modificationDate as String,
      tagNames: tagNames == freezed ? _value.tagNames : tagNames as Set<String>,
    ));
  }
}

/// @nodoc
abstract class _$AchievementDtoCopyWith<$Res>
    implements $AchievementDtoCopyWith<$Res> {
  factory _$AchievementDtoCopyWith(
          _AchievementDto value, $Res Function(_AchievementDto) then) =
      __$AchievementDtoCopyWithImpl<$Res>;

  @override
  $Res call({String id,
    String name,
    String description,
    String imageURL,
    String type,
    int requisite,
    int experiencePoints,
    String creatorId,
    String creationDate,
    String modificationDate,
    Set<String> tagNames});
}

/// @nodoc
class __$AchievementDtoCopyWithImpl<$Res>
    extends _$AchievementDtoCopyWithImpl<$Res>
    implements _$AchievementDtoCopyWith<$Res> {
  __$AchievementDtoCopyWithImpl(
      _AchievementDto _value, $Res Function(_AchievementDto) _then)
      : super(_value, (v) => _then(v as _AchievementDto));

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
    Object creatorId = freezed,
    Object creationDate = freezed,
    Object modificationDate = freezed,
    Object tagNames = freezed,
  }) {
    return _then(_AchievementDto(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      type: type == freezed ? _value.type : type as String,
      requisite: requisite == freezed ? _value.requisite : requisite as int,
      experiencePoints: experiencePoints == freezed
        ? _value.experiencePoints
        : experiencePoints as int,
      creatorId: creatorId == freezed ? _value.creatorId : creatorId as String,
      creationDate: creationDate == freezed
        ? _value.creationDate
        : creationDate as String,
      modificationDate: modificationDate == freezed
        ? _value.modificationDate
        : modificationDate as String,
      tagNames: tagNames == freezed ? _value.tagNames : tagNames as Set<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AchievementDto extends _AchievementDto {
  const _$_AchievementDto({@required this.id,
    @required this.name,
    @required this.description,
    @required this.imageURL,
    @required this.type,
    @required this.requisite,
    @required this.experiencePoints,
    @required this.creatorId,
    @required this.creationDate,
    @required this.modificationDate,
    @required this.tagNames})
    : assert(id != null),
      assert(name != null),
      assert(description != null),
      assert(imageURL != null),
      assert(type != null),
      assert(requisite != null),
      assert(experiencePoints != null),
      assert(creatorId != null),
      assert(creationDate != null),
      assert(modificationDate != null),
      assert(tagNames != null),
      super._();
  
  factory _$_AchievementDto.fromJson(Map<String, dynamic> json) =>
    _$_$_AchievementDtoFromJson(json);
  
  @override
  final String id;
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
  final String creatorId;
  @override
  final String creationDate;
  @override
  final String modificationDate;
  @override
  final Set<String> tagNames;
  
  @override
  String toString() {
    return 'AchievementDto(id: $id, name: $name, description: $description, imageURL: $imageURL, type: $type, requisite: $requisite, experiencePoints: $experiencePoints, creatorId: $creatorId, creationDate: $creationDate, modificationDate: $modificationDate, tagNames: $tagNames)';
  }
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _AchievementDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.imageURL, imageURL) ||
                const DeepCollectionEquality()
                    .equals(other.imageURL, imageURL)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.requisite, requisite) ||
                const DeepCollectionEquality()
                    .equals(other.requisite, requisite)) &&
            (identical(other.experiencePoints, experiencePoints) ||
                const DeepCollectionEquality()
                  .equals(other.experiencePoints, experiencePoints)) &&
        (identical(other.creatorId, creatorId) ||
          const DeepCollectionEquality()
            .equals(other.creatorId, creatorId)) &&
        (identical(other.creationDate, creationDate) ||
          const DeepCollectionEquality()
            .equals(other.creationDate, creationDate)) &&
        (identical(other.modificationDate, modificationDate) ||
          const DeepCollectionEquality()
            .equals(other.modificationDate, modificationDate)) &&
        (identical(other.tagNames, tagNames) ||
          const DeepCollectionEquality()
            .equals(other.tagNames, tagNames)));
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
      const DeepCollectionEquality().hash(creatorId) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(modificationDate) ^
      const DeepCollectionEquality().hash(tagNames);

  @override
  _$AchievementDtoCopyWith<_AchievementDto> get copyWith =>
      __$AchievementDtoCopyWithImpl<_AchievementDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AchievementDtoToJson(this);
  }
}

abstract class _AchievementDto extends AchievementDto {
  const _AchievementDto._() : super._();
  
  const factory _AchievementDto({@required String id,
    @required String name,
    @required String description,
    @required String imageURL,
    @required String type,
    @required int requisite,
    @required int experiencePoints,
    @required String creatorId,
    @required String creationDate,
    @required String modificationDate,
    @required Set<String> tagNames}) = _$_AchievementDto;
  
  factory _AchievementDto.fromJson(Map<String, dynamic> json) =
  _$_AchievementDto.fromJson;
  
  @override
  String get id;
  
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
  String get creatorId;
  @override
  String get creationDate;
  
  @override
  String get modificationDate;
  
  @override
  Set<String> get tagNames;
  
  @override
  _$AchievementDtoCopyWith<_AchievementDto> get copyWith;
}
