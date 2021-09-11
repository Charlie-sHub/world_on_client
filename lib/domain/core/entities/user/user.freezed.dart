// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required UniqueId id,
      required Name name,
      required Name username,
      required Password password,
      required EmailAddress email,
      required PastDate birthday,
      required EntityDescription description,
      required String imageURL,
      required Option<File?> imageFileOption,
      required UserLevel level,
      required ExperiencePoints experiencePoints,
      required bool privacy,
      required bool adminPowers,
      required bool enabled,
      required PastDate lastLogin,
      required PastDate creationDate,
      required PastDate modificationDate,
      required Options options,
      required Set<UniqueId> blockedUsersIds,
      required Set<UniqueId> followedUsersIds,
      required Set<UniqueId> interestsIds,
      required Set<UniqueId> achievementsIds,
      required Set<UniqueId> experiencesDoneIds,
      required Set<UniqueId> experiencesLikedIds,
      required Set<UniqueId> experiencesToDoIds,
      required Set<Device> devices,
      required Set<System> systems,
      required Set<Item> items,
      required int coins,
      required int followersAmount,
      required PromotionPlan promotionPlan}) {
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
      items: items,
      coins: coins,
      followersAmount: followersAmount,
      promotionPlan: promotionPlan,
    );
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  UniqueId get id => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  Name get username => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  PastDate get birthday => throw _privateConstructorUsedError;
  EntityDescription get description => throw _privateConstructorUsedError;
  String get imageURL => throw _privateConstructorUsedError;
  Option<File?> get imageFileOption => throw _privateConstructorUsedError;
  UserLevel get level => throw _privateConstructorUsedError;
  ExperiencePoints get experiencePoints => throw _privateConstructorUsedError;
  bool get privacy => throw _privateConstructorUsedError;
  bool get adminPowers => throw _privateConstructorUsedError;
  bool get enabled => throw _privateConstructorUsedError;
  PastDate get lastLogin => throw _privateConstructorUsedError;
  PastDate get creationDate => throw _privateConstructorUsedError;
  PastDate get modificationDate => throw _privateConstructorUsedError;
  Options get options => throw _privateConstructorUsedError;
  Set<UniqueId> get blockedUsersIds => throw _privateConstructorUsedError;
  Set<UniqueId> get followedUsersIds => throw _privateConstructorUsedError;
  Set<UniqueId> get interestsIds => throw _privateConstructorUsedError;
  Set<UniqueId> get achievementsIds => throw _privateConstructorUsedError;
  Set<UniqueId> get experiencesDoneIds => throw _privateConstructorUsedError;
  Set<UniqueId> get experiencesLikedIds => throw _privateConstructorUsedError;
  Set<UniqueId> get experiencesToDoIds => throw _privateConstructorUsedError;
  Set<Device> get devices => throw _privateConstructorUsedError;
  Set<System> get systems => throw _privateConstructorUsedError;
  Set<Item> get items => throw _privateConstructorUsedError;
  int get coins => throw _privateConstructorUsedError;
  int get followersAmount => throw _privateConstructorUsedError;
  PromotionPlan get promotionPlan => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      Name name,
      Name username,
      Password password,
      EmailAddress email,
      PastDate birthday,
      EntityDescription description,
      String imageURL,
      Option<File?> imageFileOption,
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
      Set<System> systems,
      Set<Item> items,
      int coins,
      int followersAmount,
      PromotionPlan promotionPlan});

  $OptionsCopyWith<$Res> get options;
  $PromotionPlanCopyWith<$Res> get promotionPlan;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? email = freezed,
    Object? birthday = freezed,
    Object? description = freezed,
    Object? imageURL = freezed,
    Object? imageFileOption = freezed,
    Object? level = freezed,
    Object? experiencePoints = freezed,
    Object? privacy = freezed,
    Object? adminPowers = freezed,
    Object? enabled = freezed,
    Object? lastLogin = freezed,
    Object? creationDate = freezed,
    Object? modificationDate = freezed,
    Object? options = freezed,
    Object? blockedUsersIds = freezed,
    Object? followedUsersIds = freezed,
    Object? interestsIds = freezed,
    Object? achievementsIds = freezed,
    Object? experiencesDoneIds = freezed,
    Object? experiencesLikedIds = freezed,
    Object? experiencesToDoIds = freezed,
    Object? devices = freezed,
    Object? systems = freezed,
    Object? items = freezed,
    Object? coins = freezed,
    Object? followersAmount = freezed,
    Object? promotionPlan = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Name,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as PastDate,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as EntityDescription,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      imageFileOption: imageFileOption == freezed
          ? _value.imageFileOption
          : imageFileOption // ignore: cast_nullable_to_non_nullable
              as Option<File?>,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as UserLevel,
      experiencePoints: experiencePoints == freezed
          ? _value.experiencePoints
          : experiencePoints // ignore: cast_nullable_to_non_nullable
              as ExperiencePoints,
      privacy: privacy == freezed
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as bool,
      adminPowers: adminPowers == freezed
          ? _value.adminPowers
          : adminPowers // ignore: cast_nullable_to_non_nullable
              as bool,
      enabled: enabled == freezed
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      lastLogin: lastLogin == freezed
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as PastDate,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as PastDate,
      modificationDate: modificationDate == freezed
          ? _value.modificationDate
          : modificationDate // ignore: cast_nullable_to_non_nullable
              as PastDate,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Options,
      blockedUsersIds: blockedUsersIds == freezed
          ? _value.blockedUsersIds
          : blockedUsersIds // ignore: cast_nullable_to_non_nullable
              as Set<UniqueId>,
      followedUsersIds: followedUsersIds == freezed
          ? _value.followedUsersIds
          : followedUsersIds // ignore: cast_nullable_to_non_nullable
              as Set<UniqueId>,
      interestsIds: interestsIds == freezed
          ? _value.interestsIds
          : interestsIds // ignore: cast_nullable_to_non_nullable
              as Set<UniqueId>,
      achievementsIds: achievementsIds == freezed
          ? _value.achievementsIds
          : achievementsIds // ignore: cast_nullable_to_non_nullable
              as Set<UniqueId>,
      experiencesDoneIds: experiencesDoneIds == freezed
          ? _value.experiencesDoneIds
          : experiencesDoneIds // ignore: cast_nullable_to_non_nullable
              as Set<UniqueId>,
      experiencesLikedIds: experiencesLikedIds == freezed
          ? _value.experiencesLikedIds
          : experiencesLikedIds // ignore: cast_nullable_to_non_nullable
              as Set<UniqueId>,
      experiencesToDoIds: experiencesToDoIds == freezed
          ? _value.experiencesToDoIds
          : experiencesToDoIds // ignore: cast_nullable_to_non_nullable
              as Set<UniqueId>,
      devices: devices == freezed
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as Set<Device>,
      systems: systems == freezed
          ? _value.systems
          : systems // ignore: cast_nullable_to_non_nullable
              as Set<System>,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Set<Item>,
      coins: coins == freezed
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int,
      followersAmount: followersAmount == freezed
          ? _value.followersAmount
          : followersAmount // ignore: cast_nullable_to_non_nullable
              as int,
      promotionPlan: promotionPlan == freezed
          ? _value.promotionPlan
          : promotionPlan // ignore: cast_nullable_to_non_nullable
              as PromotionPlan,
    ));
  }

  @override
  $OptionsCopyWith<$Res> get options {
    return $OptionsCopyWith<$Res>(_value.options, (value) {
      return _then(_value.copyWith(options: value));
    });
  }

  @override
  $PromotionPlanCopyWith<$Res> get promotionPlan {
    return $PromotionPlanCopyWith<$Res>(_value.promotionPlan, (value) {
      return _then(_value.copyWith(promotionPlan: value));
    });
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
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
      Option<File?> imageFileOption,
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
      Set<System> systems,
      Set<Item> items,
      int coins,
      int followersAmount,
      PromotionPlan promotionPlan});

  @override
  $OptionsCopyWith<$Res> get options;
  @override
  $PromotionPlanCopyWith<$Res> get promotionPlan;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? email = freezed,
    Object? birthday = freezed,
    Object? description = freezed,
    Object? imageURL = freezed,
    Object? imageFileOption = freezed,
    Object? level = freezed,
    Object? experiencePoints = freezed,
    Object? privacy = freezed,
    Object? adminPowers = freezed,
    Object? enabled = freezed,
    Object? lastLogin = freezed,
    Object? creationDate = freezed,
    Object? modificationDate = freezed,
    Object? options = freezed,
    Object? blockedUsersIds = freezed,
    Object? followedUsersIds = freezed,
    Object? interestsIds = freezed,
    Object? achievementsIds = freezed,
    Object? experiencesDoneIds = freezed,
    Object? experiencesLikedIds = freezed,
    Object? experiencesToDoIds = freezed,
    Object? devices = freezed,
    Object? systems = freezed,
    Object? items = freezed,
    Object? coins = freezed,
    Object? followersAmount = freezed,
    Object? promotionPlan = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Name,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as PastDate,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as EntityDescription,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      imageFileOption: imageFileOption == freezed
          ? _value.imageFileOption
          : imageFileOption // ignore: cast_nullable_to_non_nullable
              as Option<File?>,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as UserLevel,
      experiencePoints: experiencePoints == freezed
          ? _value.experiencePoints
          : experiencePoints // ignore: cast_nullable_to_non_nullable
              as ExperiencePoints,
      privacy: privacy == freezed
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as bool,
      adminPowers: adminPowers == freezed
          ? _value.adminPowers
          : adminPowers // ignore: cast_nullable_to_non_nullable
              as bool,
      enabled: enabled == freezed
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      lastLogin: lastLogin == freezed
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as PastDate,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as PastDate,
      modificationDate: modificationDate == freezed
          ? _value.modificationDate
          : modificationDate // ignore: cast_nullable_to_non_nullable
              as PastDate,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Options,
      blockedUsersIds: blockedUsersIds == freezed
          ? _value.blockedUsersIds
          : blockedUsersIds // ignore: cast_nullable_to_non_nullable
              as Set<UniqueId>,
      followedUsersIds: followedUsersIds == freezed
          ? _value.followedUsersIds
          : followedUsersIds // ignore: cast_nullable_to_non_nullable
              as Set<UniqueId>,
      interestsIds: interestsIds == freezed
          ? _value.interestsIds
          : interestsIds // ignore: cast_nullable_to_non_nullable
              as Set<UniqueId>,
      achievementsIds: achievementsIds == freezed
          ? _value.achievementsIds
          : achievementsIds // ignore: cast_nullable_to_non_nullable
              as Set<UniqueId>,
      experiencesDoneIds: experiencesDoneIds == freezed
          ? _value.experiencesDoneIds
          : experiencesDoneIds // ignore: cast_nullable_to_non_nullable
              as Set<UniqueId>,
      experiencesLikedIds: experiencesLikedIds == freezed
          ? _value.experiencesLikedIds
          : experiencesLikedIds // ignore: cast_nullable_to_non_nullable
              as Set<UniqueId>,
      experiencesToDoIds: experiencesToDoIds == freezed
          ? _value.experiencesToDoIds
          : experiencesToDoIds // ignore: cast_nullable_to_non_nullable
              as Set<UniqueId>,
      devices: devices == freezed
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as Set<Device>,
      systems: systems == freezed
          ? _value.systems
          : systems // ignore: cast_nullable_to_non_nullable
              as Set<System>,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Set<Item>,
      coins: coins == freezed
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int,
      followersAmount: followersAmount == freezed
          ? _value.followersAmount
          : followersAmount // ignore: cast_nullable_to_non_nullable
              as int,
      promotionPlan: promotionPlan == freezed
          ? _value.promotionPlan
          : promotionPlan // ignore: cast_nullable_to_non_nullable
              as PromotionPlan,
    ));
  }
}

/// @nodoc

class _$_User extends _User {
  const _$_User(
      {required this.id,
      required this.name,
      required this.username,
      required this.password,
      required this.email,
      required this.birthday,
      required this.description,
      required this.imageURL,
      required this.imageFileOption,
      required this.level,
      required this.experiencePoints,
      required this.privacy,
      required this.adminPowers,
      required this.enabled,
      required this.lastLogin,
      required this.creationDate,
      required this.modificationDate,
      required this.options,
      required this.blockedUsersIds,
      required this.followedUsersIds,
      required this.interestsIds,
      required this.achievementsIds,
      required this.experiencesDoneIds,
      required this.experiencesLikedIds,
      required this.experiencesToDoIds,
      required this.devices,
      required this.systems,
      required this.items,
      required this.coins,
      required this.followersAmount,
      required this.promotionPlan})
      : super._();

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
  final Option<File?> imageFileOption;
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
  final Set<Item> items;
  @override
  final int coins;
  @override
  final int followersAmount;
  @override
  final PromotionPlan promotionPlan;

  @override
  String toString() {
    return 'User(id: $id, name: $name, username: $username, password: $password, email: $email, birthday: $birthday, description: $description, imageURL: $imageURL, imageFileOption: $imageFileOption, level: $level, experiencePoints: $experiencePoints, privacy: $privacy, adminPowers: $adminPowers, enabled: $enabled, lastLogin: $lastLogin, creationDate: $creationDate, modificationDate: $modificationDate, options: $options, blockedUsersIds: $blockedUsersIds, followedUsersIds: $followedUsersIds, interestsIds: $interestsIds, achievementsIds: $achievementsIds, experiencesDoneIds: $experiencesDoneIds, experiencesLikedIds: $experiencesLikedIds, experiencesToDoIds: $experiencesToDoIds, devices: $devices, systems: $systems, items: $items, coins: $coins, followersAmount: $followersAmount, promotionPlan: $promotionPlan)';
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
            (identical(other.imageFileOption, imageFileOption) ||
                const DeepCollectionEquality()
                    .equals(other.imageFileOption, imageFileOption)) &&
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
                const DeepCollectionEquality().equals(other.experiencesLikedIds, experiencesLikedIds)) &&
            (identical(other.experiencesToDoIds, experiencesToDoIds) || const DeepCollectionEquality().equals(other.experiencesToDoIds, experiencesToDoIds)) &&
            (identical(other.devices, devices) || const DeepCollectionEquality().equals(other.devices, devices)) &&
            (identical(other.systems, systems) || const DeepCollectionEquality().equals(other.systems, systems)) &&
            (identical(other.items, items) || const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.coins, coins) || const DeepCollectionEquality().equals(other.coins, coins)) &&
            (identical(other.followersAmount, followersAmount) || const DeepCollectionEquality().equals(other.followersAmount, followersAmount)) &&
            (identical(other.promotionPlan, promotionPlan) || const DeepCollectionEquality().equals(other.promotionPlan, promotionPlan)));
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
      const DeepCollectionEquality().hash(systems) ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(coins) ^
      const DeepCollectionEquality().hash(followersAmount) ^
      const DeepCollectionEquality().hash(promotionPlan);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User extends User {
  const factory _User(
      {required UniqueId id,
      required Name name,
      required Name username,
      required Password password,
      required EmailAddress email,
      required PastDate birthday,
      required EntityDescription description,
      required String imageURL,
      required Option<File?> imageFileOption,
      required UserLevel level,
      required ExperiencePoints experiencePoints,
      required bool privacy,
      required bool adminPowers,
      required bool enabled,
      required PastDate lastLogin,
      required PastDate creationDate,
      required PastDate modificationDate,
      required Options options,
      required Set<UniqueId> blockedUsersIds,
      required Set<UniqueId> followedUsersIds,
      required Set<UniqueId> interestsIds,
      required Set<UniqueId> achievementsIds,
      required Set<UniqueId> experiencesDoneIds,
      required Set<UniqueId> experiencesLikedIds,
      required Set<UniqueId> experiencesToDoIds,
      required Set<Device> devices,
      required Set<System> systems,
      required Set<Item> items,
      required int coins,
      required int followersAmount,
      required PromotionPlan promotionPlan}) = _$_User;
  const _User._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  Name get name => throw _privateConstructorUsedError;
  @override
  Name get username => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  EmailAddress get email => throw _privateConstructorUsedError;
  @override
  PastDate get birthday => throw _privateConstructorUsedError;
  @override
  EntityDescription get description => throw _privateConstructorUsedError;
  @override
  String get imageURL => throw _privateConstructorUsedError;
  @override
  Option<File?> get imageFileOption => throw _privateConstructorUsedError;
  @override
  UserLevel get level => throw _privateConstructorUsedError;
  @override
  ExperiencePoints get experiencePoints => throw _privateConstructorUsedError;
  @override
  bool get privacy => throw _privateConstructorUsedError;
  @override
  bool get adminPowers => throw _privateConstructorUsedError;
  @override
  bool get enabled => throw _privateConstructorUsedError;
  @override
  PastDate get lastLogin => throw _privateConstructorUsedError;
  @override
  PastDate get creationDate => throw _privateConstructorUsedError;
  @override
  PastDate get modificationDate => throw _privateConstructorUsedError;
  @override
  Options get options => throw _privateConstructorUsedError;
  @override
  Set<UniqueId> get blockedUsersIds => throw _privateConstructorUsedError;
  @override
  Set<UniqueId> get followedUsersIds => throw _privateConstructorUsedError;
  @override
  Set<UniqueId> get interestsIds => throw _privateConstructorUsedError;
  @override
  Set<UniqueId> get achievementsIds => throw _privateConstructorUsedError;
  @override
  Set<UniqueId> get experiencesDoneIds => throw _privateConstructorUsedError;
  @override
  Set<UniqueId> get experiencesLikedIds => throw _privateConstructorUsedError;
  @override
  Set<UniqueId> get experiencesToDoIds => throw _privateConstructorUsedError;
  @override
  Set<Device> get devices => throw _privateConstructorUsedError;
  @override
  Set<System> get systems => throw _privateConstructorUsedError;
  @override
  Set<Item> get items => throw _privateConstructorUsedError;
  @override
  int get coins => throw _privateConstructorUsedError;
  @override
  int get followersAmount => throw _privateConstructorUsedError;
  @override
  PromotionPlan get promotionPlan => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
