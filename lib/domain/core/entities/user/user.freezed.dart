// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserTearOff {
  const _$UserTearOff();

  _User call({int id,
      @required Name name,
      @required Name username,
      @required Password password,
      @required EmailAddress email,
      @required PastDate birthday,
      @required EntityDescription description,
      @required String imageURL,
      @required UserLevel level,
      @required ExperiencePoints experiencePoints,
      @required bool privacy,
      @required bool adminPowers,
      @required bool enabled,
      @required PastDate lastLogin,
      @required PastDate creationDate,
      @required PastDate modificationDate,
      @required Options options,
      @required Set<User> blockedUsers,
      @required Set<User> followedUsers,
      @required Set<Device> devices,
      @required Set<System> systems,
      @required Set<Tag> interests,
      @required Set<Achievement> achievements,
      @required Set<Experience> experiencesDone,
      @required Set<Experience> experiencesLiked,
      @required Set<Experience> experiencesToDo}) {
    return _User(
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
const $User = _$UserTearOff();

mixin _$User {
  int get id;
  Name get name;
  Name get username;
  Password get password;
  EmailAddress get email;
  PastDate get birthday;
  EntityDescription get description;
  String get imageURL;
  UserLevel get level;
  ExperiencePoints get experiencePoints;
  bool get privacy;
  bool get adminPowers;
  bool get enabled;
  PastDate get lastLogin;
  PastDate get creationDate;
  PastDate get modificationDate;
  Options get options;
  Set<User> get blockedUsers;
  Set<User> get followedUsers;
  Set<Device> get devices;
  Set<System> get systems;

  Set<Tag> get interests;

  Set<Achievement> get achievements;

  Set<Experience> get experiencesDone;

  Set<Experience> get experiencesLiked;

  Set<Experience> get experiencesToDo;

  $UserCopyWith<User> get copyWith;
}

abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
  _$UserCopyWithImpl<$Res>;
  $Res call(
      {int id,
      Name name,
      Name username,
      Password password,
      EmailAddress email,
      PastDate birthday,
      EntityDescription description,
      String imageURL,
      UserLevel level,
      ExperiencePoints experiencePoints,
      bool privacy,
      bool adminPowers,
      bool enabled,
      PastDate lastLogin,
      PastDate creationDate,
      PastDate modificationDate,
      Options options,
      Set<User> blockedUsers,
      Set<User> followedUsers,
      Set<Device> devices,
        Set<System> systems,
        Set<Tag> interests,
        Set<Achievement> achievements,
        Set<Experience> experiencesDone,
        Set<Experience> experiencesLiked,
        Set<Experience> experiencesToDo});

  $OptionsCopyWith<$Res> get options;
}

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
      name: name == freezed ? _value.name : name as Name,
      username: username == freezed ? _value.username : username as Name,
      password: password == freezed ? _value.password : password as Password,
      email: email == freezed ? _value.email : email as EmailAddress,
      birthday: birthday == freezed ? _value.birthday : birthday as PastDate,
      description: description == freezed
        ? _value.description
        : description as EntityDescription,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      level: level == freezed ? _value.level : level as UserLevel,
      experiencePoints: experiencePoints == freezed
        ? _value.experiencePoints
        : experiencePoints as ExperiencePoints,
      privacy: privacy == freezed ? _value.privacy : privacy as bool,
      adminPowers:
      adminPowers == freezed ? _value.adminPowers : adminPowers as bool,
      enabled: enabled == freezed ? _value.enabled : enabled as bool,
      lastLogin:
      lastLogin == freezed ? _value.lastLogin : lastLogin as PastDate,
      creationDate: creationDate == freezed
        ? _value.creationDate
        : creationDate as PastDate,
      modificationDate: modificationDate == freezed
        ? _value.modificationDate
        : modificationDate as PastDate,
      options: options == freezed ? _value.options : options as Options,
      blockedUsers: blockedUsers == freezed
        ? _value.blockedUsers
        : blockedUsers as Set<User>,
      followedUsers: followedUsers == freezed
        ? _value.followedUsers
        : followedUsers as Set<User>,
      devices: devices == freezed ? _value.devices : devices as Set<Device>,
      systems: systems == freezed ? _value.systems : systems as Set<System>,
      interests:
      interests == freezed ? _value.interests : interests as Set<Tag>,
      achievements: achievements == freezed
        ? _value.achievements
        : achievements as Set<Achievement>,
      experiencesDone: experiencesDone == freezed
        ? _value.experiencesDone
        : experiencesDone as Set<Experience>,
      experiencesLiked: experiencesLiked == freezed
        ? _value.experiencesLiked
        : experiencesLiked as Set<Experience>,
      experiencesToDo: experiencesToDo == freezed
        ? _value.experiencesToDo
        : experiencesToDo as Set<Experience>,
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

abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
  __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      Name name,
      Name username,
      Password password,
      EmailAddress email,
      PastDate birthday,
      EntityDescription description,
      String imageURL,
      UserLevel level,
      ExperiencePoints experiencePoints,
      bool privacy,
      bool adminPowers,
      bool enabled,
      PastDate lastLogin,
      PastDate creationDate,
      PastDate modificationDate,
      Options options,
      Set<User> blockedUsers,
      Set<User> followedUsers,
      Set<Device> devices,
        Set<System> systems,
        Set<Tag> interests,
        Set<Achievement> achievements,
        Set<Experience> experiencesDone,
        Set<Experience> experiencesLiked,
        Set<Experience> experiencesToDo});

  @override
  $OptionsCopyWith<$Res> get options;
}

class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
  implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
    : super(_value, (v) => _then(v as _User));

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
    return _then(_User(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as Name,
      username: username == freezed ? _value.username : username as Name,
      password: password == freezed ? _value.password : password as Password,
      email: email == freezed ? _value.email : email as EmailAddress,
      birthday: birthday == freezed ? _value.birthday : birthday as PastDate,
      description: description == freezed
        ? _value.description
        : description as EntityDescription,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      level: level == freezed ? _value.level : level as UserLevel,
      experiencePoints: experiencePoints == freezed
        ? _value.experiencePoints
        : experiencePoints as ExperiencePoints,
      privacy: privacy == freezed ? _value.privacy : privacy as bool,
      adminPowers:
      adminPowers == freezed ? _value.adminPowers : adminPowers as bool,
      enabled: enabled == freezed ? _value.enabled : enabled as bool,
      lastLogin:
      lastLogin == freezed ? _value.lastLogin : lastLogin as PastDate,
      creationDate: creationDate == freezed
        ? _value.creationDate
        : creationDate as PastDate,
      modificationDate: modificationDate == freezed
        ? _value.modificationDate
        : modificationDate as PastDate,
      options: options == freezed ? _value.options : options as Options,
      blockedUsers: blockedUsers == freezed
        ? _value.blockedUsers
        : blockedUsers as Set<User>,
      followedUsers: followedUsers == freezed
        ? _value.followedUsers
        : followedUsers as Set<User>,
      devices: devices == freezed ? _value.devices : devices as Set<Device>,
      systems: systems == freezed ? _value.systems : systems as Set<System>,
      interests:
      interests == freezed ? _value.interests : interests as Set<Tag>,
      achievements: achievements == freezed
        ? _value.achievements
        : achievements as Set<Achievement>,
      experiencesDone: experiencesDone == freezed
        ? _value.experiencesDone
        : experiencesDone as Set<Experience>,
      experiencesLiked: experiencesLiked == freezed
        ? _value.experiencesLiked
        : experiencesLiked as Set<Experience>,
      experiencesToDo: experiencesToDo == freezed
        ? _value.experiencesToDo
        : experiencesToDo as Set<Experience>,
    ));
  }
}

class _$_User extends _User {
  const _$_User({this.id,
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
    : assert(name != null),
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

  @override
  final int id;
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
  final Set<User> blockedUsers;
  @override
  final Set<User> followedUsers;
  @override
  final Set<Device> devices;
  @override
  final Set<System> systems;
  @override
  final Set<Tag> interests;
  @override
  final Set<Achievement> achievements;
  @override
  final Set<Experience> experiencesDone;
  @override
  final Set<Experience> experiencesLiked;
  @override
  final Set<Experience> experiencesToDo;

  @override
  String toString() {
    return 'User(id: $id, name: $name, username: $username, password: $password, email: $email, birthday: $birthday, description: $description, imageURL: $imageURL, level: $level, experiencePoints: $experiencePoints, privacy: $privacy, adminPowers: $adminPowers, enabled: $enabled, lastLogin: $lastLogin, creationDate: $creationDate, modificationDate: $modificationDate, options: $options, blockedUsers: $blockedUsers, followedUsers: $followedUsers, devices: $devices, systems: $systems, interests: $interests, achievements: $achievements, experiencesDone: $experiencesDone, experiencesLiked: $experiencesLiked, experiencesToDo: $experiencesToDo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
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
  _$UserCopyWith<_User> get copyWith =>
    __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User extends User {
  const _User._() : super._();
  const factory _User({int id,
      @required Name name,
      @required Name username,
      @required Password password,
      @required EmailAddress email,
      @required PastDate birthday,
      @required EntityDescription description,
      @required String imageURL,
      @required UserLevel level,
      @required ExperiencePoints experiencePoints,
      @required bool privacy,
      @required bool adminPowers,
      @required bool enabled,
      @required PastDate lastLogin,
      @required PastDate creationDate,
      @required PastDate modificationDate,
      @required Options options,
      @required Set<User> blockedUsers,
      @required Set<User> followedUsers,
      @required Set<Device> devices,
    @required Set<System> systems,
    @required Set<Tag> interests,
    @required Set<Achievement> achievements,
    @required Set<Experience> experiencesDone,
    @required Set<Experience> experiencesLiked,
    @required Set<Experience> experiencesToDo}) = _$_User;

  @override
  int get id;
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
  Set<User> get blockedUsers;
  @override
  Set<User> get followedUsers;
  @override
  Set<Device> get devices;
  @override
  Set<System> get systems;
  
  @override
  Set<Tag> get interests;
  
  @override
  Set<Achievement> get achievements;
  
  @override
  Set<Experience> get experiencesDone;
  
  @override
  Set<Experience> get experiencesLiked;
  
  @override
  Set<Experience> get experiencesToDo;
  @override
  _$UserCopyWith<_User> get copyWith;
}
