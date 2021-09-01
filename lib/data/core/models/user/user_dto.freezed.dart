// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
class _$UserDtoTearOff {
  const _$UserDtoTearOff();

  _UserDto call(
      {required String id,
      required String name,
      required String username,
      required String password,
      required String email,
      @ServerTimestampConverter() required DateTime birthday,
      required String description,
      required String imageURL,
      required int level,
      required int experiencePoints,
      required bool privacy,
      required bool adminPowers,
      required bool enabled,
      @ServerTimestampConverter() required DateTime lastLogin,
      @ServerTimestampConverter() required DateTime creationDate,
      @ServerTimestampConverter() required DateTime modificationDate,
      required OptionsDto options,
      required Set<String> blockedUsersIds,
      required Set<String> followedUsersIds,
      required Set<String> interestsIds,
      required Set<String> achievementsIds,
      required Set<String> experiencesDoneIds,
      required Set<String> experiencesLikedIds,
      required Set<String> experiencesToDoIds,
      required Set<DeviceDto> devices,
      required Set<SystemDto> systems,
      required Set<ItemDto> items,
      required int coins,
      required int followersAmount,
      required PromotionPlanDto promotionPlan}) {
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
      items: items,
      coins: coins,
      followersAmount: followersAmount,
      promotionPlan: promotionPlan,
    );
  }

  UserDto fromJson(Map<String, Object> json) {
    return UserDto.fromJson(json);
  }
}

/// @nodoc
const $UserDto = _$UserDtoTearOff();

/// @nodoc
mixin _$UserDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username =>
      throw _privateConstructorUsedError; // Shouldn't this be encrypted in some way?
// Maybe it shouldn't even be part of the dto at all, as Firebase handles it at login time
  String get password => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  DateTime get birthday => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageURL => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  int get experiencePoints => throw _privateConstructorUsedError;
  bool get privacy => throw _privateConstructorUsedError;
  bool get adminPowers => throw _privateConstructorUsedError;
  bool get enabled => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  DateTime get lastLogin => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  DateTime get creationDate => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  DateTime get modificationDate => throw _privateConstructorUsedError;
  OptionsDto get options => throw _privateConstructorUsedError;
  Set<String> get blockedUsersIds => throw _privateConstructorUsedError;
  Set<String> get followedUsersIds => throw _privateConstructorUsedError;
  Set<String> get interestsIds => throw _privateConstructorUsedError;
  Set<String> get achievementsIds => throw _privateConstructorUsedError;
  Set<String> get experiencesDoneIds => throw _privateConstructorUsedError;
  Set<String> get experiencesLikedIds => throw _privateConstructorUsedError;
  Set<String> get experiencesToDoIds => throw _privateConstructorUsedError;
  Set<DeviceDto> get devices => throw _privateConstructorUsedError;
  Set<SystemDto> get systems => throw _privateConstructorUsedError;
  Set<ItemDto> get items => throw _privateConstructorUsedError;
  int get coins => throw _privateConstructorUsedError;
  int get followersAmount => throw _privateConstructorUsedError;
  PromotionPlanDto get promotionPlan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String username,
      String password,
      String email,
      @ServerTimestampConverter() DateTime birthday,
      String description,
      String imageURL,
      int level,
      int experiencePoints,
      bool privacy,
      bool adminPowers,
      bool enabled,
      @ServerTimestampConverter() DateTime lastLogin,
      @ServerTimestampConverter() DateTime creationDate,
      @ServerTimestampConverter() DateTime modificationDate,
      OptionsDto options,
      Set<String> blockedUsersIds,
      Set<String> followedUsersIds,
      Set<String> interestsIds,
      Set<String> achievementsIds,
      Set<String> experiencesDoneIds,
      Set<String> experiencesLikedIds,
      Set<String> experiencesToDoIds,
      Set<DeviceDto> devices,
      Set<SystemDto> systems,
      Set<ItemDto> items,
      int coins,
      int followersAmount,
      PromotionPlanDto promotionPlan});

  $OptionsDtoCopyWith<$Res> get options;
  $PromotionPlanDtoCopyWith<$Res> get promotionPlan;
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

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
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      experiencePoints: experiencePoints == freezed
          ? _value.experiencePoints
          : experiencePoints // ignore: cast_nullable_to_non_nullable
              as int,
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
              as DateTime,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modificationDate: modificationDate == freezed
          ? _value.modificationDate
          : modificationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as OptionsDto,
      blockedUsersIds: blockedUsersIds == freezed
          ? _value.blockedUsersIds
          : blockedUsersIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      followedUsersIds: followedUsersIds == freezed
          ? _value.followedUsersIds
          : followedUsersIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      interestsIds: interestsIds == freezed
          ? _value.interestsIds
          : interestsIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      achievementsIds: achievementsIds == freezed
          ? _value.achievementsIds
          : achievementsIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      experiencesDoneIds: experiencesDoneIds == freezed
          ? _value.experiencesDoneIds
          : experiencesDoneIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      experiencesLikedIds: experiencesLikedIds == freezed
          ? _value.experiencesLikedIds
          : experiencesLikedIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      experiencesToDoIds: experiencesToDoIds == freezed
          ? _value.experiencesToDoIds
          : experiencesToDoIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      devices: devices == freezed
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as Set<DeviceDto>,
      systems: systems == freezed
          ? _value.systems
          : systems // ignore: cast_nullable_to_non_nullable
              as Set<SystemDto>,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Set<ItemDto>,
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
              as PromotionPlanDto,
    ));
  }

  @override
  $OptionsDtoCopyWith<$Res> get options {
    return $OptionsDtoCopyWith<$Res>(_value.options, (value) {
      return _then(_value.copyWith(options: value));
    });
  }

  @override
  $PromotionPlanDtoCopyWith<$Res> get promotionPlan {
    return $PromotionPlanDtoCopyWith<$Res>(_value.promotionPlan, (value) {
      return _then(_value.copyWith(promotionPlan: value));
    });
  }
}

/// @nodoc
abstract class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) then) =
      __$UserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String username,
      String password,
      String email,
      @ServerTimestampConverter() DateTime birthday,
      String description,
      String imageURL,
      int level,
      int experiencePoints,
      bool privacy,
      bool adminPowers,
      bool enabled,
      @ServerTimestampConverter() DateTime lastLogin,
      @ServerTimestampConverter() DateTime creationDate,
      @ServerTimestampConverter() DateTime modificationDate,
      OptionsDto options,
      Set<String> blockedUsersIds,
      Set<String> followedUsersIds,
      Set<String> interestsIds,
      Set<String> achievementsIds,
      Set<String> experiencesDoneIds,
      Set<String> experiencesLikedIds,
      Set<String> experiencesToDoIds,
      Set<DeviceDto> devices,
      Set<SystemDto> systems,
      Set<ItemDto> items,
      int coins,
      int followersAmount,
      PromotionPlanDto promotionPlan});

  @override
  $OptionsDtoCopyWith<$Res> get options;
  @override
  $PromotionPlanDtoCopyWith<$Res> get promotionPlan;
}

/// @nodoc
class __$UserDtoCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(_UserDto _value, $Res Function(_UserDto) _then)
      : super(_value, (v) => _then(v as _UserDto));

  @override
  _UserDto get _value => super._value as _UserDto;

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
    return _then(_UserDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      experiencePoints: experiencePoints == freezed
          ? _value.experiencePoints
          : experiencePoints // ignore: cast_nullable_to_non_nullable
              as int,
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
              as DateTime,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modificationDate: modificationDate == freezed
          ? _value.modificationDate
          : modificationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as OptionsDto,
      blockedUsersIds: blockedUsersIds == freezed
          ? _value.blockedUsersIds
          : blockedUsersIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      followedUsersIds: followedUsersIds == freezed
          ? _value.followedUsersIds
          : followedUsersIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      interestsIds: interestsIds == freezed
          ? _value.interestsIds
          : interestsIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      achievementsIds: achievementsIds == freezed
          ? _value.achievementsIds
          : achievementsIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      experiencesDoneIds: experiencesDoneIds == freezed
          ? _value.experiencesDoneIds
          : experiencesDoneIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      experiencesLikedIds: experiencesLikedIds == freezed
          ? _value.experiencesLikedIds
          : experiencesLikedIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      experiencesToDoIds: experiencesToDoIds == freezed
          ? _value.experiencesToDoIds
          : experiencesToDoIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      devices: devices == freezed
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as Set<DeviceDto>,
      systems: systems == freezed
          ? _value.systems
          : systems // ignore: cast_nullable_to_non_nullable
              as Set<SystemDto>,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Set<ItemDto>,
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
              as PromotionPlanDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDto extends _UserDto {
  const _$_UserDto(
      {required this.id,
      required this.name,
      required this.username,
      required this.password,
      required this.email,
      @ServerTimestampConverter() required this.birthday,
      required this.description,
      required this.imageURL,
      required this.level,
      required this.experiencePoints,
      required this.privacy,
      required this.adminPowers,
      required this.enabled,
      @ServerTimestampConverter() required this.lastLogin,
      @ServerTimestampConverter() required this.creationDate,
      @ServerTimestampConverter() required this.modificationDate,
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

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String username;
  @override // Shouldn't this be encrypted in some way?
// Maybe it shouldn't even be part of the dto at all, as Firebase handles it at login time
  final String password;
  @override
  final String email;
  @override
  @ServerTimestampConverter()
  final DateTime birthday;
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
  @ServerTimestampConverter()
  final DateTime lastLogin;
  @override
  @ServerTimestampConverter()
  final DateTime creationDate;
  @override
  @ServerTimestampConverter()
  final DateTime modificationDate;
  @override
  final OptionsDto options;
  @override
  final Set<String> blockedUsersIds;
  @override
  final Set<String> followedUsersIds;
  @override
  final Set<String> interestsIds;
  @override
  final Set<String> achievementsIds;
  @override
  final Set<String> experiencesDoneIds;
  @override
  final Set<String> experiencesLikedIds;
  @override
  final Set<String> experiencesToDoIds;
  @override
  final Set<DeviceDto> devices;
  @override
  final Set<SystemDto> systems;
  @override
  final Set<ItemDto> items;
  @override
  final int coins;
  @override
  final int followersAmount;
  @override
  final PromotionPlanDto promotionPlan;

  @override
  String toString() {
    return 'UserDto(id: $id, name: $name, username: $username, password: $password, email: $email, birthday: $birthday, description: $description, imageURL: $imageURL, level: $level, experiencePoints: $experiencePoints, privacy: $privacy, adminPowers: $adminPowers, enabled: $enabled, lastLogin: $lastLogin, creationDate: $creationDate, modificationDate: $modificationDate, options: $options, blockedUsersIds: $blockedUsersIds, followedUsersIds: $followedUsersIds, interestsIds: $interestsIds, achievementsIds: $achievementsIds, experiencesDoneIds: $experiencesDoneIds, experiencesLikedIds: $experiencesLikedIds, experiencesToDoIds: $experiencesToDoIds, devices: $devices, systems: $systems, items: $items, coins: $coins, followersAmount: $followersAmount, promotionPlan: $promotionPlan)';
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
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDtoToJson(this);
  }
}

abstract class _UserDto extends UserDto {
  const factory _UserDto(
      {required String id,
      required String name,
      required String username,
      required String password,
      required String email,
      @ServerTimestampConverter() required DateTime birthday,
      required String description,
      required String imageURL,
      required int level,
      required int experiencePoints,
      required bool privacy,
      required bool adminPowers,
      required bool enabled,
      @ServerTimestampConverter() required DateTime lastLogin,
      @ServerTimestampConverter() required DateTime creationDate,
      @ServerTimestampConverter() required DateTime modificationDate,
      required OptionsDto options,
      required Set<String> blockedUsersIds,
      required Set<String> followedUsersIds,
      required Set<String> interestsIds,
      required Set<String> achievementsIds,
      required Set<String> experiencesDoneIds,
      required Set<String> experiencesLikedIds,
      required Set<String> experiencesToDoIds,
      required Set<DeviceDto> devices,
      required Set<SystemDto> systems,
      required Set<ItemDto> items,
      required int coins,
      required int followersAmount,
      required PromotionPlanDto promotionPlan}) = _$_UserDto;
  const _UserDto._() : super._();

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override // Shouldn't this be encrypted in some way?
// Maybe it shouldn't even be part of the dto at all, as Firebase handles it at login time
  String get password => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  @ServerTimestampConverter()
  DateTime get birthday => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get imageURL => throw _privateConstructorUsedError;
  @override
  int get level => throw _privateConstructorUsedError;
  @override
  int get experiencePoints => throw _privateConstructorUsedError;
  @override
  bool get privacy => throw _privateConstructorUsedError;
  @override
  bool get adminPowers => throw _privateConstructorUsedError;
  @override
  bool get enabled => throw _privateConstructorUsedError;
  @override
  @ServerTimestampConverter()
  DateTime get lastLogin => throw _privateConstructorUsedError;
  @override
  @ServerTimestampConverter()
  DateTime get creationDate => throw _privateConstructorUsedError;
  @override
  @ServerTimestampConverter()
  DateTime get modificationDate => throw _privateConstructorUsedError;
  @override
  OptionsDto get options => throw _privateConstructorUsedError;
  @override
  Set<String> get blockedUsersIds => throw _privateConstructorUsedError;
  @override
  Set<String> get followedUsersIds => throw _privateConstructorUsedError;
  @override
  Set<String> get interestsIds => throw _privateConstructorUsedError;
  @override
  Set<String> get achievementsIds => throw _privateConstructorUsedError;
  @override
  Set<String> get experiencesDoneIds => throw _privateConstructorUsedError;
  @override
  Set<String> get experiencesLikedIds => throw _privateConstructorUsedError;
  @override
  Set<String> get experiencesToDoIds => throw _privateConstructorUsedError;
  @override
  Set<DeviceDto> get devices => throw _privateConstructorUsedError;
  @override
  Set<SystemDto> get systems => throw _privateConstructorUsedError;
  @override
  Set<ItemDto> get items => throw _privateConstructorUsedError;
  @override
  int get coins => throw _privateConstructorUsedError;
  @override
  int get followersAmount => throw _privateConstructorUsedError;
  @override
  PromotionPlanDto get promotionPlan => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
