// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'achievement_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AchievementDto _$AchievementDtoFromJson(Map<String, dynamic> json) {
  return _AchievementDto.fromJson(json);
}

/// @nodoc
class _$AchievementDtoTearOff {
  const _$AchievementDtoTearOff();

  _AchievementDto call(
      {required String id,
      required String name,
      required String description,
      required String imageURL,
      required String type,
      required int requisite,
      required int experiencePoints,
      required String creatorId,
      @ServerTimestampConverter() required DateTime creationDate,
      @ServerTimestampConverter() required DateTime modificationDate,
      required Set<String> tagNames}) {
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

  AchievementDto fromJson(Map<String, Object?> json) {
    return AchievementDto.fromJson(json);
  }
}

/// @nodoc
const $AchievementDto = _$AchievementDtoTearOff();

/// @nodoc
mixin _$AchievementDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageURL => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get requisite => throw _privateConstructorUsedError;
  int get experiencePoints => throw _privateConstructorUsedError;
  String get creatorId => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  DateTime get creationDate => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  DateTime get modificationDate => throw _privateConstructorUsedError;
  Set<String> get tagNames => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AchievementDtoCopyWith<AchievementDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementDtoCopyWith<$Res> {
  factory $AchievementDtoCopyWith(
          AchievementDto value, $Res Function(AchievementDto) then) =
      _$AchievementDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String description,
      String imageURL,
      String type,
      int requisite,
      int experiencePoints,
      String creatorId,
      @ServerTimestampConverter() DateTime creationDate,
      @ServerTimestampConverter() DateTime modificationDate,
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
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageURL = freezed,
    Object? type = freezed,
    Object? requisite = freezed,
    Object? experiencePoints = freezed,
    Object? creatorId = freezed,
    Object? creationDate = freezed,
    Object? modificationDate = freezed,
    Object? tagNames = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      requisite: requisite == freezed
          ? _value.requisite
          : requisite // ignore: cast_nullable_to_non_nullable
              as int,
      experiencePoints: experiencePoints == freezed
          ? _value.experiencePoints
          : experiencePoints // ignore: cast_nullable_to_non_nullable
              as int,
      creatorId: creatorId == freezed
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modificationDate: modificationDate == freezed
          ? _value.modificationDate
          : modificationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tagNames: tagNames == freezed
          ? _value.tagNames
          : tagNames // ignore: cast_nullable_to_non_nullable
              as Set<String>,
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
  $Res call(
      {String id,
      String name,
      String description,
      String imageURL,
      String type,
      int requisite,
      int experiencePoints,
      String creatorId,
      @ServerTimestampConverter() DateTime creationDate,
      @ServerTimestampConverter() DateTime modificationDate,
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
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageURL = freezed,
    Object? type = freezed,
    Object? requisite = freezed,
    Object? experiencePoints = freezed,
    Object? creatorId = freezed,
    Object? creationDate = freezed,
    Object? modificationDate = freezed,
    Object? tagNames = freezed,
  }) {
    return _then(_AchievementDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      requisite: requisite == freezed
          ? _value.requisite
          : requisite // ignore: cast_nullable_to_non_nullable
              as int,
      experiencePoints: experiencePoints == freezed
          ? _value.experiencePoints
          : experiencePoints // ignore: cast_nullable_to_non_nullable
              as int,
      creatorId: creatorId == freezed
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modificationDate: modificationDate == freezed
          ? _value.modificationDate
          : modificationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tagNames: tagNames == freezed
          ? _value.tagNames
          : tagNames // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AchievementDto extends _AchievementDto {
  const _$_AchievementDto(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageURL,
      required this.type,
      required this.requisite,
      required this.experiencePoints,
      required this.creatorId,
      @ServerTimestampConverter() required this.creationDate,
      @ServerTimestampConverter() required this.modificationDate,
      required this.tagNames})
      : super._();

  factory _$_AchievementDto.fromJson(Map<String, dynamic> json) =>
      _$$_AchievementDtoFromJson(json);

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
  @ServerTimestampConverter()
  final DateTime creationDate;
  @override
  @ServerTimestampConverter()
  final DateTime modificationDate;
  @override
  final Set<String> tagNames;

  @override
  String toString() {
    return 'AchievementDto(id: $id, name: $name, description: $description, imageURL: $imageURL, type: $type, requisite: $requisite, experiencePoints: $experiencePoints, creatorId: $creatorId, creationDate: $creationDate, modificationDate: $modificationDate, tagNames: $tagNames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AchievementDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.requisite, requisite) ||
                other.requisite == requisite) &&
            (identical(other.experiencePoints, experiencePoints) ||
                other.experiencePoints == experiencePoints) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.modificationDate, modificationDate) ||
                other.modificationDate == modificationDate) &&
            const DeepCollectionEquality().equals(other.tagNames, tagNames));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      imageURL,
      type,
      requisite,
      experiencePoints,
      creatorId,
      creationDate,
      modificationDate,
      const DeepCollectionEquality().hash(tagNames));

  @JsonKey(ignore: true)
  @override
  _$AchievementDtoCopyWith<_AchievementDto> get copyWith =>
      __$AchievementDtoCopyWithImpl<_AchievementDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AchievementDtoToJson(this);
  }
}

abstract class _AchievementDto extends AchievementDto {
  const factory _AchievementDto(
      {required String id,
      required String name,
      required String description,
      required String imageURL,
      required String type,
      required int requisite,
      required int experiencePoints,
      required String creatorId,
      @ServerTimestampConverter() required DateTime creationDate,
      @ServerTimestampConverter() required DateTime modificationDate,
      required Set<String> tagNames}) = _$_AchievementDto;
  const _AchievementDto._() : super._();

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
  @ServerTimestampConverter()
  DateTime get creationDate;
  @override
  @ServerTimestampConverter()
  DateTime get modificationDate;
  @override
  Set<String> get tagNames;
  @override
  @JsonKey(ignore: true)
  _$AchievementDtoCopyWith<_AchievementDto> get copyWith =>
      throw _privateConstructorUsedError;
}
