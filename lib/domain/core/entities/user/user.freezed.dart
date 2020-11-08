// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@required UniqueId id,
      @required Name name,
      @required Name username,
      @required Password password,
      @required EmailAddress email,
      @required PastDate birthday,
      @required EntityDescription description,
      @required String imageURL,
      @required Option<File> imageFileOption,
      @required UserLevel level,
      @required ExperiencePoints experiencePoints,
      @required bool privacy,
      @required bool adminPowers,
      @required bool enabled,
      @required PastDate lastLogin,
      @required PastDate creationDate,
      @required PastDate modificationDate,
      @required Options options,
      @required Set<UniqueId> blockedUsersIds,
      @required Set<UniqueId> followedUsersIds,
      @required Set<UniqueId> interestsIds,
      @required Set<UniqueId> achievementsIds,
      @required Set<UniqueId> experiencesDoneIds,
      @required Set<UniqueId> experiencesLikedIds,
      @required Set<UniqueId> experiencesToDoIds,
      @required Set<Device> devices,
      @required Set<System> systems}) {
    return _User(
      id: id,
      name: name,
      username: username,
      password: password,
      email: email,
      birthday: birthday,
      description: description,
      imageURL: imageURL,
      imageFileOption: imageFileOption,
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

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  UniqueId get id;

  Name get name;
  Name get username;
  Password get password;
  EmailAddress get email;
  PastDate get birthday;
  EntityDescription get description;
  String get imageURL;
  Option<File> get imageFileOption; // TODO: Make levels entities
// To hold the points between levels
// Or investigate how leveling systems are usually implemented.
  UserLevel get level;

  ExperiencePoints get experiencePoints;

  bool get privacy;

  bool get adminPowers;

  bool get enabled;

  PastDate get lastLogin;

  PastDate get creationDate;

  PastDate get modificationDate;

  Options get options;

  Set<UniqueId> get blockedUsersIds;

  Set<UniqueId> get followedUsersIds;

  Set<UniqueId> get interestsIds;

  Set<UniqueId> get achievementsIds;

  Set<UniqueId> get experiencesDoneIds;

  Set<UniqueId> get experiencesLikedIds;

  Set<UniqueId> get experiencesToDoIds;

  Set<Device> get devices;

  Set<System> get systems;

  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) = _$UserCopyWithImpl<$Res>;

  $Res call(
      {UniqueId id,
      Name name,
      Name username,
      Password password,
      EmailAddress email,
      PastDate birthday,
      EntityDescription description,
      String imageURL,
      Option<File> imageFileOption,
      UserLevel level,
      ExperiencePoints experiencePoints,
      bool privacy,
      bool adminPowers,
      bool enabled,
      PastDate lastLogin,
      PastDate creationDate,
      PastDate modificationDate,
      Options options,
      Set<UniqueId> blockedUsersIds,
      Set<UniqueId> followedUsersIds,
      Set<UniqueId> interestsIds,
      Set<UniqueId> achievementsIds,
      Set<UniqueId> experiencesDoneIds,
      Set<UniqueId> experiencesLikedIds,
      Set<UniqueId> experiencesToDoIds,
      Set<Device> devices,
      Set<System> systems});

  $OptionsCopyWith<$Res> get options;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

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
    Object imageFileOption = freezed,
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
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as Name,
      username: username == freezed ? _value.username : username as Name,
      password: password == freezed ? _value.password : password as Password,
      email: email == freezed ? _value.email : email as EmailAddress,
      birthday: birthday == freezed ? _value.birthday : birthday as PastDate,
      description: description == freezed ? _value.description : description as EntityDescription,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      imageFileOption: imageFileOption == freezed ? _value.imageFileOption : imageFileOption as Option<File>,
      level: level == freezed ? _value.level : level as UserLevel,
      experiencePoints: experiencePoints == freezed ? _value.experiencePoints : experiencePoints as ExperiencePoints,
      privacy: privacy == freezed ? _value.privacy : privacy as bool,
      adminPowers: adminPowers == freezed ? _value.adminPowers : adminPowers as bool,
      enabled: enabled == freezed ? _value.enabled : enabled as bool,
      lastLogin: lastLogin == freezed ? _value.lastLogin : lastLogin as PastDate,
      creationDate: creationDate == freezed ? _value.creationDate : creationDate as PastDate,
      modificationDate: modificationDate == freezed ? _value.modificationDate : modificationDate as PastDate,
      options: options == freezed ? _value.options : options as Options,
      blockedUsersIds: blockedUsersIds == freezed ? _value.blockedUsersIds : blockedUsersIds as Set<UniqueId>,
      followedUsersIds: followedUsersIds == freezed ? _value.followedUsersIds : followedUsersIds as Set<UniqueId>,
      interestsIds: interestsIds == freezed ? _value.interestsIds : interestsIds as Set<UniqueId>,
      achievementsIds: achievementsIds == freezed ? _value.achievementsIds : achievementsIds as Set<UniqueId>,
      experiencesDoneIds: experiencesDoneIds == freezed ? _value.experiencesDoneIds : experiencesDoneIds as Set<UniqueId>,
      experiencesLikedIds: experiencesLikedIds == freezed ? _value.experiencesLikedIds : experiencesLikedIds as Set<UniqueId>,
      experiencesToDoIds: experiencesToDoIds == freezed ? _value.experiencesToDoIds : experiencesToDoIds as Set<UniqueId>,
      devices: devices == freezed ? _value.devices : devices as Set<Device>,
      systems: systems == freezed ? _value.systems : systems as Set<System>,
    ));
  }

  @override
  $OptionsCopyWith<$Res> get options {
    if (_value.options == null) {
      return null;
    }
    return $OptionsCopyWith<$Res>(_value.options, (value) {
      return _then(_value.copyWith(options: value));
    });
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) = __$UserCopyWithImpl<$Res>;

  @override
  $Res call(
      {UniqueId id,
      Name name,
      Name username,
      Password password,
      EmailAddress email,
      PastDate birthday,
      EntityDescription description,
      String imageURL,
      Option<File> imageFileOption,
      UserLevel level,
      ExperiencePoints experiencePoints,
      bool privacy,
      bool adminPowers,
      bool enabled,
      PastDate lastLogin,
      PastDate creationDate,
      PastDate modificationDate,
      Options options,
      Set<UniqueId> blockedUsersIds,
      Set<UniqueId> followedUsersIds,
      Set<UniqueId> interestsIds,
      Set<UniqueId> achievementsIds,
      Set<UniqueId> experiencesDoneIds,
      Set<UniqueId> experiencesLikedIds,
      Set<UniqueId> experiencesToDoIds,
      Set<Device> devices,
      Set<System> systems});

  @override
  $OptionsCopyWith<$Res> get options;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res> implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then) : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

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
    Object imageFileOption = freezed,
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
    return _then(_User(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as Name,
      username: username == freezed ? _value.username : username as Name,
      password: password == freezed ? _value.password : password as Password,
      email: email == freezed ? _value.email : email as EmailAddress,
      birthday: birthday == freezed ? _value.birthday : birthday as PastDate,
      description: description == freezed ? _value.description : description as EntityDescription,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      imageFileOption: imageFileOption == freezed ? _value.imageFileOption : imageFileOption as Option<File>,
      level: level == freezed ? _value.level : level as UserLevel,
      experiencePoints: experiencePoints == freezed ? _value.experiencePoints : experiencePoints as ExperiencePoints,
      privacy: privacy == freezed ? _value.privacy : privacy as bool,
      adminPowers: adminPowers == freezed ? _value.adminPowers : adminPowers as bool,
      enabled: enabled == freezed ? _value.enabled : enabled as bool,
      lastLogin: lastLogin == freezed ? _value.lastLogin : lastLogin as PastDate,
      creationDate: creationDate == freezed ? _value.creationDate : creationDate as PastDate,
      modificationDate: modificationDate == freezed ? _value.modificationDate : modificationDate as PastDate,
      options: options == freezed ? _value.options : options as Options,
      blockedUsersIds: blockedUsersIds == freezed ? _value.blockedUsersIds : blockedUsersIds as Set<UniqueId>,
      followedUsersIds: followedUsersIds == freezed ? _value.followedUsersIds : followedUsersIds as Set<UniqueId>,
      interestsIds: interestsIds == freezed ? _value.interestsIds : interestsIds as Set<UniqueId>,
      achievementsIds: achievementsIds == freezed ? _value.achievementsIds : achievementsIds as Set<UniqueId>,
      experiencesDoneIds: experiencesDoneIds == freezed ? _value.experiencesDoneIds : experiencesDoneIds as Set<UniqueId>,
      experiencesLikedIds: experiencesLikedIds == freezed ? _value.experiencesLikedIds : experiencesLikedIds as Set<UniqueId>,
      experiencesToDoIds: experiencesToDoIds == freezed ? _value.experiencesToDoIds : experiencesToDoIds as Set<UniqueId>,
      devices: devices == freezed ? _value.devices : devices as Set<Device>,
      systems: systems == freezed ? _value.systems : systems as Set<System>,
    ));
  }
}

/// @nodoc
class _$_User extends _User {
  const _$_User(
      {@required this.id,
      @required this.name,
      @required this.username,
      @required this.password,
      @required this.email,
      @required this.birthday,
      @required this.description,
      @required this.imageURL,
      @required this.imageFileOption,
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
        assert(imageFileOption != null),
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

  @override
  final UniqueId id;
  @override
  final Name name;
  @override
  final Name username;
  @override
  final Password password;
  @override
  final EmailAddress email;
  @override
  final PastDate birthday;
  @override
  final EntityDescription description;
  @override
  final String imageURL;
  @override
  final Option<File> imageFileOption;
  @override // TODO: Make levels entities
// To hold the points between levels
// Or investigate how leveling systems are usually implemented.
  final UserLevel level;
  @override
  final ExperiencePoints experiencePoints;
  @override
  final bool privacy;
  @override
  final bool adminPowers;
  @override
  final bool enabled;
  @override
  final PastDate lastLogin;
  @override
  final PastDate creationDate;
  @override
  final PastDate modificationDate;
  @override
  final Options options;
  @override
  final Set<UniqueId> blockedUsersIds;
  @override
  final Set<UniqueId> followedUsersIds;
  @override
  final Set<UniqueId> interestsIds;
  @override
  final Set<UniqueId> achievementsIds;
  @override
  final Set<UniqueId> experiencesDoneIds;
  @override
  final Set<UniqueId> experiencesLikedIds;
  @override
  final Set<UniqueId> experiencesToDoIds;
  @override
  final Set<Device> devices;
  @override
  final Set<System> systems;

  @override
  String toString() {
    return 'User(id: $id, name: $name, username: $username, password: $password, email: $email, birthday: $birthday, description: $description, imageURL: $imageURL, imageFileOption: $imageFileOption, level: $level, experiencePoints: $experiencePoints, privacy: $privacy, adminPowers: $adminPowers, enabled: $enabled, lastLogin: $lastLogin, creationDate: $creationDate, modificationDate: $modificationDate, options: $options, blockedUsersIds: $blockedUsersIds, followedUsersIds: $followedUsersIds, interestsIds: $interestsIds, achievementsIds: $achievementsIds, experiencesDoneIds: $experiencesDoneIds, experiencesLikedIds: $experiencesLikedIds, experiencesToDoIds: $experiencesToDoIds, devices: $devices, systems: $systems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.username, username) || const DeepCollectionEquality().equals(other.username, username)) &&
            (identical(other.password, password) || const DeepCollectionEquality().equals(other.password, password)) &&
            (identical(other.email, email) || const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.birthday, birthday) || const DeepCollectionEquality().equals(other.birthday, birthday)) &&
            (identical(other.description, description) || const DeepCollectionEquality().equals(other.description, description)) &&
            (identical(other.imageURL, imageURL) || const DeepCollectionEquality().equals(other.imageURL, imageURL)) &&
            (identical(other.imageFileOption, imageFileOption) || const DeepCollectionEquality().equals(other.imageFileOption, imageFileOption)) &&
            (identical(other.level, level) || const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.experiencePoints, experiencePoints) || const DeepCollectionEquality().equals(other.experiencePoints, experiencePoints)) &&
            (identical(other.privacy, privacy) || const DeepCollectionEquality().equals(other.privacy, privacy)) &&
            (identical(other.adminPowers, adminPowers) || const DeepCollectionEquality().equals(other.adminPowers, adminPowers)) &&
            (identical(other.enabled, enabled) || const DeepCollectionEquality().equals(other.enabled, enabled)) &&
            (identical(other.lastLogin, lastLogin) || const DeepCollectionEquality().equals(other.lastLogin, lastLogin)) &&
            (identical(other.creationDate, creationDate) || const DeepCollectionEquality().equals(other.creationDate, creationDate)) &&
            (identical(other.modificationDate, modificationDate) || const DeepCollectionEquality().equals(other.modificationDate, modificationDate)) &&
            (identical(other.options, options) || const DeepCollectionEquality().equals(other.options, options)) &&
            (identical(other.blockedUsersIds, blockedUsersIds) || const DeepCollectionEquality().equals(other.blockedUsersIds, blockedUsersIds)) &&
            (identical(other.followedUsersIds, followedUsersIds) || const DeepCollectionEquality().equals(other.followedUsersIds, followedUsersIds)) &&
            (identical(other.interestsIds, interestsIds) || const DeepCollectionEquality().equals(other.interestsIds, interestsIds)) &&
            (identical(other.achievementsIds, achievementsIds) || const DeepCollectionEquality().equals(other.achievementsIds, achievementsIds)) &&
            (identical(other.experiencesDoneIds, experiencesDoneIds) || const DeepCollectionEquality().equals(other.experiencesDoneIds, experiencesDoneIds)) &&
            (identical(other.experiencesLikedIds, experiencesLikedIds) || const DeepCollectionEquality().equals(other.experiencesLikedIds, experiencesLikedIds)) &&
            (identical(other.experiencesToDoIds, experiencesToDoIds) || const DeepCollectionEquality().equals(other.experiencesToDoIds, experiencesToDoIds)) &&
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
      const DeepCollectionEquality().hash(imageFileOption) ^
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
  _$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User extends User {
  const _User._() : super._();

  const factory _User(
      {@required UniqueId id,
      @required Name name,
      @required Name username,
      @required Password password,
      @required EmailAddress email,
      @required PastDate birthday,
      @required EntityDescription description,
      @required String imageURL,
      @required Option<File> imageFileOption,
      @required UserLevel level,
      @required ExperiencePoints experiencePoints,
      @required bool privacy,
      @required bool adminPowers,
      @required bool enabled,
      @required PastDate lastLogin,
      @required PastDate creationDate,
      @required PastDate modificationDate,
      @required Options options,
      @required Set<UniqueId> blockedUsersIds,
      @required Set<UniqueId> followedUsersIds,
      @required Set<UniqueId> interestsIds,
      @required Set<UniqueId> achievementsIds,
      @required Set<UniqueId> experiencesDoneIds,
      @required Set<UniqueId> experiencesLikedIds,
      @required Set<UniqueId> experiencesToDoIds,
      @required Set<Device> devices,
      @required Set<System> systems}) = _$_User;

  @override
  UniqueId get id;

  @override
  Name get name;

  @override
  Name get username;

  @override
  Password get password;
  @override
  EmailAddress get email;
  @override
  PastDate get birthday;
  @override
  EntityDescription get description;
  @override
  String get imageURL;
  @override
  Option<File> get imageFileOption;
  @override // TODO: Make levels entities
// To hold the points between levels
// Or investigate how leveling systems are usually implemented.
  UserLevel get level;
  @override
  ExperiencePoints get experiencePoints;
  @override
  bool get privacy;
  @override
  bool get adminPowers;
  @override
  bool get enabled;
  @override
  PastDate get lastLogin;
  @override
  PastDate get creationDate;
  @override
  PastDate get modificationDate;

  @override
  Options get options;

  @override
  Set<UniqueId> get blockedUsersIds;

  @override
  Set<UniqueId> get followedUsersIds;

  @override
  Set<UniqueId> get interestsIds;

  @override
  Set<UniqueId> get achievementsIds;

  @override
  Set<UniqueId> get experiencesDoneIds;

  @override
  Set<UniqueId> get experiencesLikedIds;

  @override
  Set<UniqueId> get experiencesToDoIds;

  @override
  Set<Device> get devices;
  @override
  Set<System> get systems;
  @override
  _$UserCopyWith<_User> get copyWith;
}
