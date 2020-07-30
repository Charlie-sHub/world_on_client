// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'reward_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RewardDto _$RewardDtoFromJson(Map<String, dynamic> json) {
  return _RewardDto.fromJson(json);
}

class _$RewardDtoTearOff {
  const _$RewardDtoTearOff();

// ignore: unused_element
  _RewardDto call({@required int id, @required String name, @required String description, @required String imageURL, @required String imageFile}) {
    return _RewardDto(
      id: id,
      name: name,
      description: description,
      imageURL: imageURL,
      imageFile: imageFile,
    );
  }
}

// ignore: unused_element
const $RewardDto = _$RewardDtoTearOff();

mixin _$RewardDto {
  int get id;
  String get name;
  String get description;
  String get imageURL;

  String get imageFile;

  Map<String, dynamic> toJson();
  $RewardDtoCopyWith<RewardDto> get copyWith;
}

abstract class $RewardDtoCopyWith<$Res> {
  factory $RewardDtoCopyWith(RewardDto value, $Res Function(RewardDto) then) =
  _$RewardDtoCopyWithImpl<$Res>;
  
  $Res call({int id,
    String name,
    String description,
    String imageURL,
    String imageFile});
}

class _$RewardDtoCopyWithImpl<$Res> implements $RewardDtoCopyWith<$Res> {
  _$RewardDtoCopyWithImpl(this._value, this._then);

  final RewardDto _value;
  // ignore: unused_field
  final $Res Function(RewardDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object imageURL = freezed,
    Object imageFile = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      description:
      description == freezed ? _value.description : description as String,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      imageFile: imageFile == freezed ? _value.imageFile : imageFile as String,
    ));
  }
}

abstract class _$RewardDtoCopyWith<$Res> implements $RewardDtoCopyWith<$Res> {
  factory _$RewardDtoCopyWith(_RewardDto value, $Res Function(_RewardDto) then) =
  __$RewardDtoCopyWithImpl<$Res>;
  @override
  $Res call({int id,
    String name,
    String description,
    String imageURL,
    String imageFile});
}

class __$RewardDtoCopyWithImpl<$Res> extends _$RewardDtoCopyWithImpl<$Res>
  implements _$RewardDtoCopyWith<$Res> {
  __$RewardDtoCopyWithImpl(_RewardDto _value, $Res Function(_RewardDto) _then)
    : super(_value, (v) => _then(v as _RewardDto));

  @override
  _RewardDto get _value => super._value as _RewardDto;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object imageURL = freezed,
    Object imageFile = freezed,
  }) {
    return _then(_RewardDto(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      description:
      description == freezed ? _value.description : description as String,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      imageFile: imageFile == freezed ? _value.imageFile : imageFile as String,
    ));
  }
}

@JsonSerializable()
class _$_RewardDto extends _RewardDto {
  const _$_RewardDto({@required this.id,
    @required this.name,
    @required this.description,
    @required this.imageURL,
    @required this.imageFile})
      : assert(id != null),
        assert(name != null),
        assert(description != null),
        assert(imageURL != null),
      assert(imageFile != null),
        super._();
  
  factory _$_RewardDto.fromJson(Map<String, dynamic> json) =>
    _$_$_RewardDtoFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String imageURL;
  @override
  final String imageFile;

  @override
  String toString() {
    return 'RewardDto(id: $id, name: $name, description: $description, imageURL: $imageURL, imageFile: $imageFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RewardDto &&
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
          (identical(other.imageFile, imageFile) ||
            const DeepCollectionEquality()
              .equals(other.imageFile, imageFile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(imageURL) ^
      const DeepCollectionEquality().hash(imageFile);

  @override
  _$RewardDtoCopyWith<_RewardDto> get copyWith =>
    __$RewardDtoCopyWithImpl<_RewardDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RewardDtoToJson(this);
  }
}

abstract class _RewardDto extends RewardDto {
  const _RewardDto._() : super._();

  const factory _RewardDto({@required int id,
    @required String name,
    @required String description,
    @required String imageURL,
    @required String imageFile}) = _$_RewardDto;

  factory _RewardDto.fromJson(Map<String, dynamic> json) =
  _$_RewardDto.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get imageURL;

  @override
  String get imageFile;
  @override
  _$RewardDtoCopyWith<_RewardDto> get copyWith;
}
