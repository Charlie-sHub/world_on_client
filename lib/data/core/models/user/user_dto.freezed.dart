// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

class _$UserDtoTearOff {
  const _$UserDtoTearOff();

// ignore: unused_element
  _UserDto call(
      {@required int id,
      @required String name,
      @required String username,
      @required String password,
      @required String email,
      @required String birthday,
      @required String description,
      @required String imageURL,
      @required int level,
      @required int experiencePoints,
      @required bool privacy,
      @required bool adminPowers,
      @required bool enabled,
      @required String lastLogin,
      @required String creationDate,
      @required String modificationDate,
      @required OptionsDto options,
      @required Set<UserDto> blockedUsers,
      @required Set<UserDto> followedUsers,
      @required Set<DeviceDto> devices,
      @required Set<SystemDto> systems,
      @required Set<TagDto> interests,
      @required Set<AchievementDto> achievements,
      @required Set<ExperienceDto> experiencesDone,
      @required Set<ExperienceDto> experiencesLiked,
      @required Set<ExperienceDto> experiencesToDo}) {
    return _UserDto(
      id: id,
      name: name,
      username: username,
      password: password,
      email: email,
      birthday: birthday,
      description: description,
      imageURL: imageURL,
      level: level,
      experiencePoints: experiencePoints,
      privacy: privacy,
      adminPowers: adminPowers,
      enabled: enabled,
      lastLogin: lastLogin,
      creationDate: creationDate,
      modificationDate: modificationDate,
      options: options,
      blockedUsers: blockedUsers,
      followedUsers: followedUsers,
      devices: devices,
      systems: systems,
      interests: interests,
      achievements: achievements,
      experiencesDone: experiencesDone,
      experiencesLiked: experiencesLiked,
      experiencesToDo: experiencesToDo,
    );
  }
}

// ignore: unused_element
const $UserDto = _$UserDtoTearOff();

mixin _$UserDto {
  int get id;
  String get name;
  String get username;
  String get password;
  String get email;
  String get birthday;
  String get description;
  String get imageURL;
  int get level;
  int get experiencePoints;
  bool get privacy;
  bool get adminPowers;
  bool get enabled;
  String get lastLogin;
  String get creationDate;
  String get modificationDate;
  OptionsDto get options;
  Set<UserDto> get blockedUsers;
  Set<UserDto> get followedUsers;
  Set<DeviceDto> get devices;
  Set<SystemDto> get systems;
  Set<TagDto> get interests;
  Set<AchievementDto> get achievements;
  Set<ExperienceDto> get experiencesDone;
  Set<ExperienceDto> get experiencesLiked;
  Set<ExperienceDto> get experiencesToDo;

  Map<String, dynamic> toJson();
  $UserDtoCopyWith<UserDto> get copyWith;
}

abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) = _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String username,
      String password,
      String email,
      String birthday,
      String description,
      String imageURL,
      int level,
      int experiencePoints,
      bool privacy,
      bool adminPowers,
      bool enabled,
      String lastLogin,
      String creationDate,
      String modificationDate,
      OptionsDto options,
      Set<UserDto> blockedUsers,
      Set<UserDto> followedUsers,
      Set<DeviceDto> devices,
      Set<SystemDto> systems,
      Set<TagDto> interests,
      Set<AchievementDto> achievements,
      Set<ExperienceDto> experiencesDone,
      Set<ExperienceDto> experiencesLiked,
      Set<ExperienceDto> experiencesToDo});

  $OptionsDtoCopyWith<$Res> get options;
}

class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object username = freezed,
    Object password = freezed,
    Object email = freezed,
    Object birthday = freezed,
    Object description = freezed,
    Object imageURL = freezed,
    Object level = freezed,
    Object experiencePoints = freezed,
    Object privacy = freezed,
    Object adminPowers = freezed,
    Object enabled = freezed,
    Object lastLogin = freezed,
    Object creationDate = freezed,
    Object modificationDate = freezed,
    Object options = freezed,
    Object blockedUsers = freezed,
    Object followedUsers = freezed,
    Object devices = freezed,
    Object systems = freezed,
    Object interests = freezed,
    Object achievements = freezed,
    Object experiencesDone = freezed,
    Object experiencesLiked = freezed,
    Object experiencesToDo = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
      email: email == freezed ? _value.email : email as String,
      birthday: birthday == freezed ? _value.birthday : birthday as String,
      description:
      description == freezed ? _value.description : description as String,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      level: level == freezed ? _value.level : level as int,
      experiencePoints: experiencePoints == freezed
        ? _value.experiencePoints
        : experiencePoints as int,
      privacy: privacy == freezed ? _value.privacy : privacy as bool,
      adminPowers:
      adminPowers == freezed ? _value.adminPowers : adminPowers as bool,
      enabled: enabled == freezed ? _value.enabled : enabled as bool,
      lastLogin: lastLogin == freezed ? _value.lastLogin : lastLogin as String,
      creationDate: creationDate == freezed
        ? _value.creationDate
        : creationDate as String,
      modificationDate: modificationDate == freezed
        ? _value.modificationDate
        : modificationDate as String,
      options: options == freezed ? _value.options : options as OptionsDto,
      blockedUsers: blockedUsers == freezed
        ? _value.blockedUsers
        : blockedUsers as Set<UserDto>,
      followedUsers: followedUsers == freezed
        ? _value.followedUsers
        : followedUsers as Set<UserDto>,
      devices: devices == freezed ? _value.devices : devices as Set<DeviceDto>,
      systems: systems == freezed ? _value.systems : systems as Set<SystemDto>,
      interests:
      interests == freezed ? _value.interests : interests as Set<TagDto>,
      achievements: achievements == freezed
        ? _value.achievements
        : achievements as Set<AchievementDto>,
      experiencesDone: experiencesDone == freezed
        ? _value.experiencesDone
        : experiencesDone as Set<ExperienceDto>,
      experiencesLiked: experiencesLiked == freezed
        ? _value.experiencesLiked
        : experiencesLiked as Set<ExperienceDto>,
      experiencesToDo: experiencesToDo == freezed
        ? _value.experiencesToDo
        : experiencesToDo as Set<ExperienceDto>,
    ));
  }

  @override
  $OptionsDtoCopyWith<$Res> get options {
    if (_value.options == null) {
      return null;
    }
    return $OptionsDtoCopyWith<$Res>(_value.options, (value) {
      return _then(_value.copyWith(options: value));
    });
  }
}

abstract class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) then) =
  __$UserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String username,
      String password,
      String email,
      String birthday,
      String description,
      String imageURL,
      int level,
      int experiencePoints,
      bool privacy,
      bool adminPowers,
      bool enabled,
      String lastLogin,
      String creationDate,
      String modificationDate,
      OptionsDto options,
      Set<UserDto> blockedUsers,
      Set<UserDto> followedUsers,
      Set<DeviceDto> devices,
      Set<SystemDto> systems,
      Set<TagDto> interests,
      Set<AchievementDto> achievements,
      Set<ExperienceDto> experiencesDone,
      Set<ExperienceDto> experiencesLiked,
      Set<ExperienceDto> experiencesToDo});

  @override
  $OptionsDtoCopyWith<$Res> get options;
}

class __$UserDtoCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
  implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(_UserDto _value, $Res Function(_UserDto) _then)
    : super(_value, (v) => _then(v as _UserDto));

  @override
  _UserDto get _value => super._value as _UserDto;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object username = freezed,
    Object password = freezed,
    Object email = freezed,
    Object birthday = freezed,
    Object description = freezed,
    Object imageURL = freezed,
    Object level = freezed,
    Object experiencePoints = freezed,
    Object privacy = freezed,
    Object adminPowers = freezed,
    Object enabled = freezed,
    Object lastLogin = freezed,
    Object creationDate = freezed,
    Object modificationDate = freezed,
    Object options = freezed,
    Object blockedUsers = freezed,
    Object followedUsers = freezed,
    Object devices = freezed,
    Object systems = freezed,
    Object interests = freezed,
    Object achievements = freezed,
    Object experiencesDone = freezed,
    Object experiencesLiked = freezed,
    Object experiencesToDo = freezed,
  }) {
    return _then(_UserDto(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
      email: email == freezed ? _value.email : email as String,
      birthday: birthday == freezed ? _value.birthday : birthday as String,
      description:
      description == freezed ? _value.description : description as String,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      level: level == freezed ? _value.level : level as int,
      experiencePoints: experiencePoints == freezed
        ? _value.experiencePoints
        : experiencePoints as int,
      privacy: privacy == freezed ? _value.privacy : privacy as bool,
      adminPowers:
      adminPowers == freezed ? _value.adminPowers : adminPowers as bool,
      enabled: enabled == freezed ? _value.enabled : enabled as bool,
      lastLogin: lastLogin == freezed ? _value.lastLogin : lastLogin as String,
      creationDate: creationDate == freezed
        ? _value.creationDate
        : creationDate as String,
      modificationDate: modificationDate == freezed
        ? _value.modificationDate
        : modificationDate as String,
      options: options == freezed ? _value.options : options as OptionsDto,
      blockedUsers: blockedUsers == freezed
        ? _value.blockedUsers
        : blockedUsers as Set<UserDto>,
      followedUsers: followedUsers == freezed
        ? _value.followedUsers
        : followedUsers as Set<UserDto>,
      devices: devices == freezed ? _value.devices : devices as Set<DeviceDto>,
      systems: systems == freezed ? _value.systems : systems as Set<SystemDto>,
      interests:
      interests == freezed ? _value.interests : interests as Set<TagDto>,
      achievements: achievements == freezed
        ? _value.achievements
        : achievements as Set<AchievementDto>,
      experiencesDone: experiencesDone == freezed
        ? _value.experiencesDone
        : experiencesDone as Set<ExperienceDto>,
      experiencesLiked: experiencesLiked == freezed
        ? _value.experiencesLiked
        : experiencesLiked as Set<ExperienceDto>,
      experiencesToDo: experiencesToDo == freezed
        ? _value.experiencesToDo
        : experiencesToDo as Set<ExperienceDto>,
    ));
  }
}

@JsonSerializable()
class _$_UserDto extends _UserDto {
  const _$_UserDto(
      {@required this.id,
      @required this.name,
      @required this.username,
      @required this.password,
      @required this.email,
      @required this.birthday,
      @required this.description,
      @required this.imageURL,
      @required this.level,
      @required this.experiencePoints,
      @required this.privacy,
      @required this.adminPowers,
      @required this.enabled,
      @required this.lastLogin,
      @required this.creationDate,
      @required this.modificationDate,
      @required this.options,
      @required this.blockedUsers,
      @required this.followedUsers,
      @required this.devices,
      @required this.systems,
      @required this.interests,
      @required this.achievements,
      @required this.experiencesDone,
      @required this.experiencesLiked,
      @required this.experiencesToDo})
      : assert(id != null),
        assert(name != null),
        assert(username != null),
        assert(password != null),
        assert(email != null),
        assert(birthday != null),
        assert(description != null),
        assert(imageURL != null),
        assert(level != null),
        assert(experiencePoints != null),
        assert(privacy != null),
        assert(adminPowers != null),
        assert(enabled != null),
        assert(lastLogin != null),
        assert(creationDate != null),
        assert(modificationDate != null),
        assert(options != null),
        assert(blockedUsers != null),
        assert(followedUsers != null),
        assert(devices != null),
        assert(systems != null),
        assert(interests != null),
        assert(achievements != null),
        assert(experiencesDone != null),
        assert(experiencesLiked != null),
        assert(experiencesToDo != null),
        super._();

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
    _$_$_UserDtoFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String username;
  @override
  final String password;
  @override
  final String email;
  @override
  final String birthday;
  @override
  final String description;
  @override
  final String imageURL;
  @override
  final int level;
  @override
  final int experiencePoints;
  @override
  final bool privacy;
  @override
  final bool adminPowers;
  @override
  final bool enabled;
  @override
  final String lastLogin;
  @override
  final String creationDate;
  @override
  final String modificationDate;
  @override
  final OptionsDto options;
  @override
  final Set<UserDto> blockedUsers;
  @override
  final Set<UserDto> followedUsers;
  @override
  final Set<DeviceDto> devices;
  @override
  final Set<SystemDto> systems;
  @override
  final Set<TagDto> interests;
  @override
  final Set<AchievementDto> achievements;
  @override
  final Set<ExperienceDto> experiencesDone;
  @override
  final Set<ExperienceDto> experiencesLiked;
  @override
  final Set<ExperienceDto> experiencesToDo;

  @override
  String toString() {
    return 'UserDto(id: $id, name: $name, username: $username, password: $password, email: $email, birthday: $birthday, description: $description, imageURL: $imageURL, level: $level, experiencePoints: $experiencePoints, privacy: $privacy, adminPowers: $adminPowers, enabled: $enabled, lastLogin: $lastLogin, creationDate: $creationDate, modificationDate: $modificationDate, options: $options, blockedUsers: $blockedUsers, followedUsers: $followedUsers, devices: $devices, systems: $systems, interests: $interests, achievements: $achievements, experiencesDone: $experiencesDone, experiencesLiked: $experiencesLiked, experiencesToDo: $experiencesToDo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDto &&
          (identical(other.id, id) ||
            const DeepCollectionEquality().equals(other.id, id)) &&
          (identical(other.name, name) ||
            const DeepCollectionEquality().equals(other.name, name)) &&
          (identical(other.username, username) ||
            const DeepCollectionEquality()
              .equals(other.username, username)) &&
          (identical(other.password, password) ||
            const DeepCollectionEquality()
              .equals(other.password, password)) &&
          (identical(other.email, email) ||
            const DeepCollectionEquality().equals(other.email, email)) &&
          (identical(other.birthday, birthday) ||
            const DeepCollectionEquality()
              .equals(other.birthday, birthday)) &&
          (identical(other.description, description) ||
            const DeepCollectionEquality()
              .equals(other.description, description)) &&
          (identical(other.imageURL, imageURL) ||
            const DeepCollectionEquality()
              .equals(other.imageURL, imageURL)) &&
          (identical(other.level, level) ||
            const DeepCollectionEquality().equals(other.level, level)) &&
          (identical(other.experiencePoints, experiencePoints) ||
            const DeepCollectionEquality()
              .equals(other.experiencePoints, experiencePoints)) &&
          (identical(other.privacy, privacy) ||
            const DeepCollectionEquality()
              .equals(other.privacy, privacy)) &&
          (identical(other.adminPowers, adminPowers) ||
            const DeepCollectionEquality()
              .equals(other.adminPowers, adminPowers)) &&
          (identical(other.enabled, enabled) ||
            const DeepCollectionEquality()
              .equals(other.enabled, enabled)) &&
          (identical(other.lastLogin, lastLogin) ||
            const DeepCollectionEquality()
              .equals(other.lastLogin, lastLogin)) &&
          (identical(other.creationDate, creationDate) ||
            const DeepCollectionEquality()
              .equals(other.creationDate, creationDate)) &&
          (identical(other.modificationDate, modificationDate) ||
            const DeepCollectionEquality()
              .equals(other.modificationDate, modificationDate)) &&
          (identical(other.options, options) ||
            const DeepCollectionEquality()
              .equals(other.options, options)) &&
          (identical(other.blockedUsers, blockedUsers) ||
            const DeepCollectionEquality()
              .equals(other.blockedUsers, blockedUsers)) &&
          (identical(other.followedUsers, followedUsers) ||
            const DeepCollectionEquality()
              .equals(other.followedUsers, followedUsers)) &&
          (identical(other.devices, devices) ||
            const DeepCollectionEquality()
              .equals(other.devices, devices)) &&
          (identical(other.systems, systems) ||
            const DeepCollectionEquality()
              .equals(other.systems, systems)) &&
          (identical(other.interests, interests) ||
            const DeepCollectionEquality()
              .equals(other.interests, interests)) &&
          (identical(other.achievements, achievements) ||
            const DeepCollectionEquality()
              .equals(other.achievements, achievements)) &&
          (identical(other.experiencesDone, experiencesDone) ||
            const DeepCollectionEquality().equals(other.experiencesDone, experiencesDone)) &&
            (identical(other.experiencesLiked, experiencesLiked) || const DeepCollectionEquality().equals(other.experiencesLiked, experiencesLiked)) &&
            (identical(other.experiencesToDo, experiencesToDo) || const DeepCollectionEquality().equals(other.experiencesToDo, experiencesToDo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(birthday) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(imageURL) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(experiencePoints) ^
      const DeepCollectionEquality().hash(privacy) ^
      const DeepCollectionEquality().hash(adminPowers) ^
      const DeepCollectionEquality().hash(enabled) ^
      const DeepCollectionEquality().hash(lastLogin) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(modificationDate) ^
      const DeepCollectionEquality().hash(options) ^
      const DeepCollectionEquality().hash(blockedUsers) ^
      const DeepCollectionEquality().hash(followedUsers) ^
      const DeepCollectionEquality().hash(devices) ^
      const DeepCollectionEquality().hash(systems) ^
      const DeepCollectionEquality().hash(interests) ^
      const DeepCollectionEquality().hash(achievements) ^
      const DeepCollectionEquality().hash(experiencesDone) ^
      const DeepCollectionEquality().hash(experiencesLiked) ^
      const DeepCollectionEquality().hash(experiencesToDo);

  @override
  _$UserDtoCopyWith<_UserDto> get copyWith =>
    __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDtoToJson(this);
  }
}

abstract class _UserDto extends UserDto {
  const _UserDto._() : super._();
  const factory _UserDto(
      {@required int id,
      @required String name,
      @required String username,
      @required String password,
      @required String email,
      @required String birthday,
      @required String description,
      @required String imageURL,
      @required int level,
      @required int experiencePoints,
      @required bool privacy,
      @required bool adminPowers,
      @required bool enabled,
      @required String lastLogin,
      @required String creationDate,
      @required String modificationDate,
      @required OptionsDto options,
      @required Set<UserDto> blockedUsers,
      @required Set<UserDto> followedUsers,
      @required Set<DeviceDto> devices,
      @required Set<SystemDto> systems,
      @required Set<TagDto> interests,
      @required Set<AchievementDto> achievements,
      @required Set<ExperienceDto> experiencesDone,
      @required Set<ExperienceDto> experiencesLiked,
      @required Set<ExperienceDto> experiencesToDo}) = _$_UserDto;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get username;
  @override
  String get password;
  @override
  String get email;
  @override
  String get birthday;
  @override
  String get description;
  @override
  String get imageURL;
  @override
  int get level;
  @override
  int get experiencePoints;
  @override
  bool get privacy;
  @override
  bool get adminPowers;
  @override
  bool get enabled;
  @override
  String get lastLogin;
  @override
  String get creationDate;
  @override
  String get modificationDate;
  @override
  OptionsDto get options;
  @override
  Set<UserDto> get blockedUsers;
  @override
  Set<UserDto> get followedUsers;
  @override
  Set<DeviceDto> get devices;
  @override
  Set<SystemDto> get systems;
  @override
  Set<TagDto> get interests;
  @override
  Set<AchievementDto> get achievements;
  @override
  Set<ExperienceDto> get experiencesDone;
  @override
  Set<ExperienceDto> get experiencesLiked;
  @override
  Set<ExperienceDto> get experiencesToDo;
  @override
  _$UserDtoCopyWith<_UserDto> get copyWith;
}
