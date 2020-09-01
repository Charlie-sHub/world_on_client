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
      @required Set<int> blockedUsersIds,
      @required Set<int> followedUsersIds,
      @required Set<int> interestsIds,
      @required Set<int> achievementsIds,
      @required Set<int> experiencesDoneIds,
      @required Set<int> experiencesLikedIds,
      @required Set<int> experiencesToDoIds,
      @required Set<DeviceDto> devices,
      @required Set<SystemDto> systems}) {
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
      blockedUsersIds: blockedUsersIds,
      followedUsersIds: followedUsersIds,
      interestsIds: interestsIds,
      achievementsIds: achievementsIds,
      experiencesDoneIds: experiencesDoneIds,
      experiencesLikedIds: experiencesLikedIds,
      experiencesToDoIds: experiencesToDoIds,
      devices: devices,
      systems: systems,
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
  Set<int> get blockedUsersIds;
  Set<int> get followedUsersIds;
  Set<int> get interestsIds;
  Set<int> get achievementsIds;
  Set<int> get experiencesDoneIds;
  Set<int> get experiencesLikedIds;
  Set<int> get experiencesToDoIds;
  Set<DeviceDto> get devices;
  Set<SystemDto> get systems;

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
      Set<int> blockedUsersIds,
      Set<int> followedUsersIds,
      Set<int> interestsIds,
      Set<int> achievementsIds,
      Set<int> experiencesDoneIds,
      Set<int> experiencesLikedIds,
      Set<int> experiencesToDoIds,
      Set<DeviceDto> devices,
      Set<SystemDto> systems});

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
    Object blockedUsersIds = freezed,
    Object followedUsersIds = freezed,
    Object interestsIds = freezed,
    Object achievementsIds = freezed,
    Object experiencesDoneIds = freezed,
    Object experiencesLikedIds = freezed,
    Object experiencesToDoIds = freezed,
    Object devices = freezed,
    Object systems = freezed,
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
      blockedUsersIds: blockedUsersIds == freezed
        ? _value.blockedUsersIds
        : blockedUsersIds as Set<int>,
      followedUsersIds: followedUsersIds == freezed
        ? _value.followedUsersIds
        : followedUsersIds as Set<int>,
      interestsIds: interestsIds == freezed
        ? _value.interestsIds
        : interestsIds as Set<int>,
      achievementsIds: achievementsIds == freezed
        ? _value.achievementsIds
        : achievementsIds as Set<int>,
      experiencesDoneIds: experiencesDoneIds == freezed
        ? _value.experiencesDoneIds
        : experiencesDoneIds as Set<int>,
      experiencesLikedIds: experiencesLikedIds == freezed
        ? _value.experiencesLikedIds
        : experiencesLikedIds as Set<int>,
      experiencesToDoIds: experiencesToDoIds == freezed
        ? _value.experiencesToDoIds
        : experiencesToDoIds as Set<int>,
      devices: devices == freezed ? _value.devices : devices as Set<DeviceDto>,
      systems: systems == freezed ? _value.systems : systems as Set<SystemDto>,
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
  $Res call({int id,
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
      Set<int> blockedUsersIds,
      Set<int> followedUsersIds,
      Set<int> interestsIds,
      Set<int> achievementsIds,
      Set<int> experiencesDoneIds,
      Set<int> experiencesLikedIds,
      Set<int> experiencesToDoIds,
      Set<DeviceDto> devices,
      Set<SystemDto> systems});

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
    Object blockedUsersIds = freezed,
    Object followedUsersIds = freezed,
    Object interestsIds = freezed,
    Object achievementsIds = freezed,
    Object experiencesDoneIds = freezed,
    Object experiencesLikedIds = freezed,
    Object experiencesToDoIds = freezed,
    Object devices = freezed,
    Object systems = freezed,
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
      blockedUsersIds: blockedUsersIds == freezed
        ? _value.blockedUsersIds
        : blockedUsersIds as Set<int>,
      followedUsersIds: followedUsersIds == freezed
        ? _value.followedUsersIds
        : followedUsersIds as Set<int>,
      interestsIds: interestsIds == freezed
        ? _value.interestsIds
        : interestsIds as Set<int>,
      achievementsIds: achievementsIds == freezed
        ? _value.achievementsIds
        : achievementsIds as Set<int>,
      experiencesDoneIds: experiencesDoneIds == freezed
        ? _value.experiencesDoneIds
        : experiencesDoneIds as Set<int>,
      experiencesLikedIds: experiencesLikedIds == freezed
        ? _value.experiencesLikedIds
        : experiencesLikedIds as Set<int>,
      experiencesToDoIds: experiencesToDoIds == freezed
        ? _value.experiencesToDoIds
        : experiencesToDoIds as Set<int>,
      devices: devices == freezed ? _value.devices : devices as Set<DeviceDto>,
      systems: systems == freezed ? _value.systems : systems as Set<SystemDto>,
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
      @required this.blockedUsersIds,
      @required this.followedUsersIds,
      @required this.interestsIds,
      @required this.achievementsIds,
      @required this.experiencesDoneIds,
      @required this.experiencesLikedIds,
      @required this.experiencesToDoIds,
      @required this.devices,
      @required this.systems})
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
        assert(blockedUsersIds != null),
      assert(followedUsersIds != null),
      assert(interestsIds != null),
      assert(achievementsIds != null),
      assert(experiencesDoneIds != null),
      assert(experiencesLikedIds != null),
      assert(experiencesToDoIds != null),
      assert(devices != null),
      assert(systems != null),
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
  final Set<int> blockedUsersIds;
  @override
  final Set<int> followedUsersIds;
  @override
  final Set<int> interestsIds;
  @override
  final Set<int> achievementsIds;
  @override
  final Set<int> experiencesDoneIds;
  @override
  final Set<int> experiencesLikedIds;
  @override
  final Set<int> experiencesToDoIds;
  @override
  final Set<DeviceDto> devices;
  @override
  final Set<SystemDto> systems;

  @override
  String toString() {
    return 'UserDto(id: $id, name: $name, username: $username, password: $password, email: $email, birthday: $birthday, description: $description, imageURL: $imageURL, level: $level, experiencePoints: $experiencePoints, privacy: $privacy, adminPowers: $adminPowers, enabled: $enabled, lastLogin: $lastLogin, creationDate: $creationDate, modificationDate: $modificationDate, options: $options, blockedUsersIds: $blockedUsersIds, followedUsersIds: $followedUsersIds, interestsIds: $interestsIds, achievementsIds: $achievementsIds, experiencesDoneIds: $experiencesDoneIds, experiencesLikedIds: $experiencesLikedIds, experiencesToDoIds: $experiencesToDoIds, devices: $devices, systems: $systems)';
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
          (identical(other.blockedUsersIds, blockedUsersIds) ||
            const DeepCollectionEquality()
              .equals(other.blockedUsersIds, blockedUsersIds)) &&
          (identical(other.followedUsersIds, followedUsersIds) ||
            const DeepCollectionEquality()
              .equals(other.followedUsersIds, followedUsersIds)) &&
          (identical(other.interestsIds, interestsIds) ||
            const DeepCollectionEquality()
              .equals(other.interestsIds, interestsIds)) &&
          (identical(other.achievementsIds, achievementsIds) ||
            const DeepCollectionEquality()
              .equals(other.achievementsIds, achievementsIds)) &&
          (identical(other.experiencesDoneIds, experiencesDoneIds) ||
            const DeepCollectionEquality()
              .equals(other.experiencesDoneIds, experiencesDoneIds)) &&
          (identical(other.experiencesLikedIds, experiencesLikedIds) ||
            const DeepCollectionEquality()
              .equals(other.experiencesLikedIds, experiencesLikedIds)) &&
          (identical(other.experiencesToDoIds, experiencesToDoIds) ||
            const DeepCollectionEquality().equals(other.experiencesToDoIds, experiencesToDoIds)) &&
          (identical(other.devices, devices) || const DeepCollectionEquality().equals(other.devices, devices)) &&
            (identical(other.systems, systems) || const DeepCollectionEquality().equals(other.systems, systems)));
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
      const DeepCollectionEquality().hash(blockedUsersIds) ^
      const DeepCollectionEquality().hash(followedUsersIds) ^
      const DeepCollectionEquality().hash(interestsIds) ^
      const DeepCollectionEquality().hash(achievementsIds) ^
      const DeepCollectionEquality().hash(experiencesDoneIds) ^
      const DeepCollectionEquality().hash(experiencesLikedIds) ^
      const DeepCollectionEquality().hash(experiencesToDoIds) ^
      const DeepCollectionEquality().hash(devices) ^
      const DeepCollectionEquality().hash(systems);

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
      @required Set<int> blockedUsersIds,
      @required Set<int> followedUsersIds,
      @required Set<int> interestsIds,
      @required Set<int> achievementsIds,
      @required Set<int> experiencesDoneIds,
      @required Set<int> experiencesLikedIds,
      @required Set<int> experiencesToDoIds,
      @required Set<DeviceDto> devices,
      @required Set<SystemDto> systems}) = _$_UserDto;

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
  Set<int> get blockedUsersIds;
  @override
  Set<int> get followedUsersIds;
  @override
  Set<int> get interestsIds;
  @override
  Set<int> get achievementsIds;
  @override
  Set<int> get experiencesDoneIds;
  @override
  Set<int> get experiencesLikedIds;
  @override
  Set<int> get experiencesToDoIds;
  @override
  Set<DeviceDto> get devices;
  @override
  Set<SystemDto> get systems;
  @override
  _$UserDtoCopyWith<_UserDto> get copyWith;
}
