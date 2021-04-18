// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'navigation_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NavigationActorEventTearOff {
  const _$NavigationActorEventTearOff();

  _MainFeedTapped mainFeedTapped() {
    return const _MainFeedTapped();
  }

  _SearchTapped searchTapped() {
    return const _SearchTapped();
  }

  _ExperienceFormTapped experienceFormTapped(Option<Experience> experienceOption) {
    return _ExperienceFormTapped(
      experienceOption,
    );
  }

  _ExperienceNavigationTapped experienceNavigationTapped(Option<Experience> experienceOption) {
    return _ExperienceNavigationTapped(
      experienceOption,
    );
  }

  _ProfileTapped profileTapped({required Option<User> userOption, required bool currentUserProfile}) {
    return _ProfileTapped(
      userOption: userOption,
      currentUserProfile: currentUserProfile,
    );
  }

  _NotificationsTapped notificationsTapped() {
    return const _NotificationsTapped();
  }
}

/// @nodoc
const $NavigationActorEvent = _$NavigationActorEventTearOff();

/// @nodoc
mixin _$NavigationActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mainFeedTapped,
    required TResult Function() searchTapped,
    required TResult Function(Option<Experience> experienceOption) experienceFormTapped,
    required TResult Function(Option<Experience> experienceOption) experienceNavigationTapped,
    required TResult Function(Option<User> userOption, bool currentUserProfile) profileTapped,
    required TResult Function() notificationsTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mainFeedTapped,
    TResult Function()? searchTapped,
    TResult Function(Option<Experience> experienceOption)? experienceFormTapped,
    TResult Function(Option<Experience> experienceOption)? experienceNavigationTapped,
    TResult Function(Option<User> userOption, bool currentUserProfile)? profileTapped,
    TResult Function()? notificationsTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainFeedTapped value) mainFeedTapped,
    required TResult Function(_SearchTapped value) searchTapped,
    required TResult Function(_ExperienceFormTapped value) experienceFormTapped,
    required TResult Function(_ExperienceNavigationTapped value) experienceNavigationTapped,
    required TResult Function(_ProfileTapped value) profileTapped,
    required TResult Function(_NotificationsTapped value) notificationsTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainFeedTapped value)? mainFeedTapped,
    TResult Function(_SearchTapped value)? searchTapped,
    TResult Function(_ExperienceFormTapped value)? experienceFormTapped,
    TResult Function(_ExperienceNavigationTapped value)? experienceNavigationTapped,
    TResult Function(_ProfileTapped value)? profileTapped,
    TResult Function(_NotificationsTapped value)? notificationsTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationActorEventCopyWith<$Res> {
  factory $NavigationActorEventCopyWith(NavigationActorEvent value, $Res Function(NavigationActorEvent) then) = _$NavigationActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigationActorEventCopyWithImpl<$Res> implements $NavigationActorEventCopyWith<$Res> {
  _$NavigationActorEventCopyWithImpl(this._value, this._then);

  final NavigationActorEvent _value;

  // ignore: unused_field
  final $Res Function(NavigationActorEvent) _then;
}

/// @nodoc
abstract class _$MainFeedTappedCopyWith<$Res> {
  factory _$MainFeedTappedCopyWith(_MainFeedTapped value, $Res Function(_MainFeedTapped) then) = __$MainFeedTappedCopyWithImpl<$Res>;
}

/// @nodoc
class __$MainFeedTappedCopyWithImpl<$Res> extends _$NavigationActorEventCopyWithImpl<$Res> implements _$MainFeedTappedCopyWith<$Res> {
  __$MainFeedTappedCopyWithImpl(_MainFeedTapped _value, $Res Function(_MainFeedTapped) _then) : super(_value, (v) => _then(v as _MainFeedTapped));

  @override
  _MainFeedTapped get _value => super._value as _MainFeedTapped;
}

/// @nodoc
class _$_MainFeedTapped implements _MainFeedTapped {
  const _$_MainFeedTapped();

  @override
  String toString() {
    return 'NavigationActorEvent.mainFeedTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MainFeedTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mainFeedTapped,
    required TResult Function() searchTapped,
    required TResult Function(Option<Experience> experienceOption) experienceFormTapped,
    required TResult Function(Option<Experience> experienceOption) experienceNavigationTapped,
    required TResult Function(Option<User> userOption, bool currentUserProfile) profileTapped,
    required TResult Function() notificationsTapped,
  }) {
    return mainFeedTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mainFeedTapped,
    TResult Function()? searchTapped,
    TResult Function(Option<Experience> experienceOption)? experienceFormTapped,
    TResult Function(Option<Experience> experienceOption)? experienceNavigationTapped,
    TResult Function(Option<User> userOption, bool currentUserProfile)? profileTapped,
    TResult Function()? notificationsTapped,
    required TResult orElse(),
  }) {
    if (mainFeedTapped != null) {
      return mainFeedTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainFeedTapped value) mainFeedTapped,
    required TResult Function(_SearchTapped value) searchTapped,
    required TResult Function(_ExperienceFormTapped value) experienceFormTapped,
    required TResult Function(_ExperienceNavigationTapped value) experienceNavigationTapped,
    required TResult Function(_ProfileTapped value) profileTapped,
    required TResult Function(_NotificationsTapped value) notificationsTapped,
  }) {
    return mainFeedTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainFeedTapped value)? mainFeedTapped,
    TResult Function(_SearchTapped value)? searchTapped,
    TResult Function(_ExperienceFormTapped value)? experienceFormTapped,
    TResult Function(_ExperienceNavigationTapped value)? experienceNavigationTapped,
    TResult Function(_ProfileTapped value)? profileTapped,
    TResult Function(_NotificationsTapped value)? notificationsTapped,
    required TResult orElse(),
  }) {
    if (mainFeedTapped != null) {
      return mainFeedTapped(this);
    }
    return orElse();
  }
}

abstract class _MainFeedTapped implements NavigationActorEvent {
  const factory _MainFeedTapped() = _$_MainFeedTapped;
}

/// @nodoc
abstract class _$SearchTappedCopyWith<$Res> {
  factory _$SearchTappedCopyWith(_SearchTapped value, $Res Function(_SearchTapped) then) = __$SearchTappedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchTappedCopyWithImpl<$Res> extends _$NavigationActorEventCopyWithImpl<$Res> implements _$SearchTappedCopyWith<$Res> {
  __$SearchTappedCopyWithImpl(_SearchTapped _value, $Res Function(_SearchTapped) _then) : super(_value, (v) => _then(v as _SearchTapped));

  @override
  _SearchTapped get _value => super._value as _SearchTapped;
}

/// @nodoc
class _$_SearchTapped implements _SearchTapped {
  const _$_SearchTapped();

  @override
  String toString() {
    return 'NavigationActorEvent.searchTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SearchTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mainFeedTapped,
    required TResult Function() searchTapped,
    required TResult Function(Option<Experience> experienceOption) experienceFormTapped,
    required TResult Function(Option<Experience> experienceOption) experienceNavigationTapped,
    required TResult Function(Option<User> userOption, bool currentUserProfile) profileTapped,
    required TResult Function() notificationsTapped,
  }) {
    return searchTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mainFeedTapped,
    TResult Function()? searchTapped,
    TResult Function(Option<Experience> experienceOption)? experienceFormTapped,
    TResult Function(Option<Experience> experienceOption)? experienceNavigationTapped,
    TResult Function(Option<User> userOption, bool currentUserProfile)? profileTapped,
    TResult Function()? notificationsTapped,
    required TResult orElse(),
  }) {
    if (searchTapped != null) {
      return searchTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainFeedTapped value) mainFeedTapped,
    required TResult Function(_SearchTapped value) searchTapped,
    required TResult Function(_ExperienceFormTapped value) experienceFormTapped,
    required TResult Function(_ExperienceNavigationTapped value) experienceNavigationTapped,
    required TResult Function(_ProfileTapped value) profileTapped,
    required TResult Function(_NotificationsTapped value) notificationsTapped,
  }) {
    return searchTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainFeedTapped value)? mainFeedTapped,
    TResult Function(_SearchTapped value)? searchTapped,
    TResult Function(_ExperienceFormTapped value)? experienceFormTapped,
    TResult Function(_ExperienceNavigationTapped value)? experienceNavigationTapped,
    TResult Function(_ProfileTapped value)? profileTapped,
    TResult Function(_NotificationsTapped value)? notificationsTapped,
    required TResult orElse(),
  }) {
    if (searchTapped != null) {
      return searchTapped(this);
    }
    return orElse();
  }
}

abstract class _SearchTapped implements NavigationActorEvent {
  const factory _SearchTapped() = _$_SearchTapped;
}

/// @nodoc
abstract class _$ExperienceFormTappedCopyWith<$Res> {
  factory _$ExperienceFormTappedCopyWith(_ExperienceFormTapped value, $Res Function(_ExperienceFormTapped) then) = __$ExperienceFormTappedCopyWithImpl<$Res>;

  $Res call({Option<Experience> experienceOption});
}

/// @nodoc
class __$ExperienceFormTappedCopyWithImpl<$Res> extends _$NavigationActorEventCopyWithImpl<$Res> implements _$ExperienceFormTappedCopyWith<$Res> {
  __$ExperienceFormTappedCopyWithImpl(_ExperienceFormTapped _value, $Res Function(_ExperienceFormTapped) _then) : super(_value, (v) => _then(v as _ExperienceFormTapped));

  @override
  _ExperienceFormTapped get _value => super._value as _ExperienceFormTapped;

  @override
  $Res call({
    Object? experienceOption = freezed,
  }) {
    return _then(_ExperienceFormTapped(
      experienceOption == freezed
          ? _value.experienceOption
          : experienceOption // ignore: cast_nullable_to_non_nullable
              as Option<Experience>,
    ));
  }
}

/// @nodoc
class _$_ExperienceFormTapped implements _ExperienceFormTapped {
  const _$_ExperienceFormTapped(this.experienceOption);

  @override
  final Option<Experience> experienceOption;

  @override
  String toString() {
    return 'NavigationActorEvent.experienceFormTapped(experienceOption: $experienceOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExperienceFormTapped && (identical(other.experienceOption, experienceOption) || const DeepCollectionEquality().equals(other.experienceOption, experienceOption)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experienceOption);

  @JsonKey(ignore: true)
  @override
  _$ExperienceFormTappedCopyWith<_ExperienceFormTapped> get copyWith => __$ExperienceFormTappedCopyWithImpl<_ExperienceFormTapped>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mainFeedTapped,
    required TResult Function() searchTapped,
    required TResult Function(Option<Experience> experienceOption) experienceFormTapped,
    required TResult Function(Option<Experience> experienceOption) experienceNavigationTapped,
    required TResult Function(Option<User> userOption, bool currentUserProfile) profileTapped,
    required TResult Function() notificationsTapped,
  }) {
    return experienceFormTapped(experienceOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mainFeedTapped,
    TResult Function()? searchTapped,
    TResult Function(Option<Experience> experienceOption)? experienceFormTapped,
    TResult Function(Option<Experience> experienceOption)? experienceNavigationTapped,
    TResult Function(Option<User> userOption, bool currentUserProfile)? profileTapped,
    TResult Function()? notificationsTapped,
    required TResult orElse(),
  }) {
    if (experienceFormTapped != null) {
      return experienceFormTapped(experienceOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainFeedTapped value) mainFeedTapped,
    required TResult Function(_SearchTapped value) searchTapped,
    required TResult Function(_ExperienceFormTapped value) experienceFormTapped,
    required TResult Function(_ExperienceNavigationTapped value) experienceNavigationTapped,
    required TResult Function(_ProfileTapped value) profileTapped,
    required TResult Function(_NotificationsTapped value) notificationsTapped,
  }) {
    return experienceFormTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainFeedTapped value)? mainFeedTapped,
    TResult Function(_SearchTapped value)? searchTapped,
    TResult Function(_ExperienceFormTapped value)? experienceFormTapped,
    TResult Function(_ExperienceNavigationTapped value)? experienceNavigationTapped,
    TResult Function(_ProfileTapped value)? profileTapped,
    TResult Function(_NotificationsTapped value)? notificationsTapped,
    required TResult orElse(),
  }) {
    if (experienceFormTapped != null) {
      return experienceFormTapped(this);
    }
    return orElse();
  }
}

abstract class _ExperienceFormTapped implements NavigationActorEvent {
  const factory _ExperienceFormTapped(Option<Experience> experienceOption) = _$_ExperienceFormTapped;

  Option<Experience> get experienceOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$ExperienceFormTappedCopyWith<_ExperienceFormTapped> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ExperienceNavigationTappedCopyWith<$Res> {
  factory _$ExperienceNavigationTappedCopyWith(_ExperienceNavigationTapped value, $Res Function(_ExperienceNavigationTapped) then) = __$ExperienceNavigationTappedCopyWithImpl<$Res>;

  $Res call({Option<Experience> experienceOption});
}

/// @nodoc
class __$ExperienceNavigationTappedCopyWithImpl<$Res> extends _$NavigationActorEventCopyWithImpl<$Res> implements _$ExperienceNavigationTappedCopyWith<$Res> {
  __$ExperienceNavigationTappedCopyWithImpl(_ExperienceNavigationTapped _value, $Res Function(_ExperienceNavigationTapped) _then) : super(_value, (v) => _then(v as _ExperienceNavigationTapped));

  @override
  _ExperienceNavigationTapped get _value => super._value as _ExperienceNavigationTapped;

  @override
  $Res call({
    Object? experienceOption = freezed,
  }) {
    return _then(_ExperienceNavigationTapped(
      experienceOption == freezed
          ? _value.experienceOption
          : experienceOption // ignore: cast_nullable_to_non_nullable
              as Option<Experience>,
    ));
  }
}

/// @nodoc
class _$_ExperienceNavigationTapped implements _ExperienceNavigationTapped {
  const _$_ExperienceNavigationTapped(this.experienceOption);

  @override
  final Option<Experience> experienceOption;

  @override
  String toString() {
    return 'NavigationActorEvent.experienceNavigationTapped(experienceOption: $experienceOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExperienceNavigationTapped && (identical(other.experienceOption, experienceOption) || const DeepCollectionEquality().equals(other.experienceOption, experienceOption)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experienceOption);

  @JsonKey(ignore: true)
  @override
  _$ExperienceNavigationTappedCopyWith<_ExperienceNavigationTapped> get copyWith => __$ExperienceNavigationTappedCopyWithImpl<_ExperienceNavigationTapped>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mainFeedTapped,
    required TResult Function() searchTapped,
    required TResult Function(Option<Experience> experienceOption) experienceFormTapped,
    required TResult Function(Option<Experience> experienceOption) experienceNavigationTapped,
    required TResult Function(Option<User> userOption, bool currentUserProfile) profileTapped,
    required TResult Function() notificationsTapped,
  }) {
    return experienceNavigationTapped(experienceOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mainFeedTapped,
    TResult Function()? searchTapped,
    TResult Function(Option<Experience> experienceOption)? experienceFormTapped,
    TResult Function(Option<Experience> experienceOption)? experienceNavigationTapped,
    TResult Function(Option<User> userOption, bool currentUserProfile)? profileTapped,
    TResult Function()? notificationsTapped,
    required TResult orElse(),
  }) {
    if (experienceNavigationTapped != null) {
      return experienceNavigationTapped(experienceOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainFeedTapped value) mainFeedTapped,
    required TResult Function(_SearchTapped value) searchTapped,
    required TResult Function(_ExperienceFormTapped value) experienceFormTapped,
    required TResult Function(_ExperienceNavigationTapped value) experienceNavigationTapped,
    required TResult Function(_ProfileTapped value) profileTapped,
    required TResult Function(_NotificationsTapped value) notificationsTapped,
  }) {
    return experienceNavigationTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainFeedTapped value)? mainFeedTapped,
    TResult Function(_SearchTapped value)? searchTapped,
    TResult Function(_ExperienceFormTapped value)? experienceFormTapped,
    TResult Function(_ExperienceNavigationTapped value)? experienceNavigationTapped,
    TResult Function(_ProfileTapped value)? profileTapped,
    TResult Function(_NotificationsTapped value)? notificationsTapped,
    required TResult orElse(),
  }) {
    if (experienceNavigationTapped != null) {
      return experienceNavigationTapped(this);
    }
    return orElse();
  }
}

abstract class _ExperienceNavigationTapped implements NavigationActorEvent {
  const factory _ExperienceNavigationTapped(Option<Experience> experienceOption) = _$_ExperienceNavigationTapped;

  Option<Experience> get experienceOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$ExperienceNavigationTappedCopyWith<_ExperienceNavigationTapped> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ProfileTappedCopyWith<$Res> {
  factory _$ProfileTappedCopyWith(_ProfileTapped value, $Res Function(_ProfileTapped) then) = __$ProfileTappedCopyWithImpl<$Res>;

  $Res call({Option<User> userOption, bool currentUserProfile});
}

/// @nodoc
class __$ProfileTappedCopyWithImpl<$Res> extends _$NavigationActorEventCopyWithImpl<$Res> implements _$ProfileTappedCopyWith<$Res> {
  __$ProfileTappedCopyWithImpl(_ProfileTapped _value, $Res Function(_ProfileTapped) _then) : super(_value, (v) => _then(v as _ProfileTapped));

  @override
  _ProfileTapped get _value => super._value as _ProfileTapped;

  @override
  $Res call({
    Object? userOption = freezed,
    Object? currentUserProfile = freezed,
  }) {
    return _then(_ProfileTapped(
      userOption: userOption == freezed
          ? _value.userOption
          : userOption // ignore: cast_nullable_to_non_nullable
              as Option<User>,
      currentUserProfile: currentUserProfile == freezed
          ? _value.currentUserProfile
          : currentUserProfile // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_ProfileTapped implements _ProfileTapped {
  const _$_ProfileTapped({required this.userOption, required this.currentUserProfile});

  @override
  final Option<User> userOption;
  @override
  final bool currentUserProfile;

  @override
  String toString() {
    return 'NavigationActorEvent.profileTapped(userOption: $userOption, currentUserProfile: $currentUserProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileTapped &&
            (identical(other.userOption, userOption) || const DeepCollectionEquality().equals(other.userOption, userOption)) &&
            (identical(other.currentUserProfile, currentUserProfile) || const DeepCollectionEquality().equals(other.currentUserProfile, currentUserProfile)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(userOption) ^ const DeepCollectionEquality().hash(currentUserProfile);

  @JsonKey(ignore: true)
  @override
  _$ProfileTappedCopyWith<_ProfileTapped> get copyWith => __$ProfileTappedCopyWithImpl<_ProfileTapped>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mainFeedTapped,
    required TResult Function() searchTapped,
    required TResult Function(Option<Experience> experienceOption) experienceFormTapped,
    required TResult Function(Option<Experience> experienceOption) experienceNavigationTapped,
    required TResult Function(Option<User> userOption, bool currentUserProfile) profileTapped,
    required TResult Function() notificationsTapped,
  }) {
    return profileTapped(userOption, currentUserProfile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mainFeedTapped,
    TResult Function()? searchTapped,
    TResult Function(Option<Experience> experienceOption)? experienceFormTapped,
    TResult Function(Option<Experience> experienceOption)? experienceNavigationTapped,
    TResult Function(Option<User> userOption, bool currentUserProfile)? profileTapped,
    TResult Function()? notificationsTapped,
    required TResult orElse(),
  }) {
    if (profileTapped != null) {
      return profileTapped(userOption, currentUserProfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainFeedTapped value) mainFeedTapped,
    required TResult Function(_SearchTapped value) searchTapped,
    required TResult Function(_ExperienceFormTapped value) experienceFormTapped,
    required TResult Function(_ExperienceNavigationTapped value) experienceNavigationTapped,
    required TResult Function(_ProfileTapped value) profileTapped,
    required TResult Function(_NotificationsTapped value) notificationsTapped,
  }) {
    return profileTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainFeedTapped value)? mainFeedTapped,
    TResult Function(_SearchTapped value)? searchTapped,
    TResult Function(_ExperienceFormTapped value)? experienceFormTapped,
    TResult Function(_ExperienceNavigationTapped value)? experienceNavigationTapped,
    TResult Function(_ProfileTapped value)? profileTapped,
    TResult Function(_NotificationsTapped value)? notificationsTapped,
    required TResult orElse(),
  }) {
    if (profileTapped != null) {
      return profileTapped(this);
    }
    return orElse();
  }
}

abstract class _ProfileTapped implements NavigationActorEvent {
  const factory _ProfileTapped({required Option<User> userOption, required bool currentUserProfile}) = _$_ProfileTapped;

  Option<User> get userOption => throw _privateConstructorUsedError;

  bool get currentUserProfile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$ProfileTappedCopyWith<_ProfileTapped> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NotificationsTappedCopyWith<$Res> {
  factory _$NotificationsTappedCopyWith(_NotificationsTapped value, $Res Function(_NotificationsTapped) then) = __$NotificationsTappedCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotificationsTappedCopyWithImpl<$Res> extends _$NavigationActorEventCopyWithImpl<$Res> implements _$NotificationsTappedCopyWith<$Res> {
  __$NotificationsTappedCopyWithImpl(_NotificationsTapped _value, $Res Function(_NotificationsTapped) _then) : super(_value, (v) => _then(v as _NotificationsTapped));

  @override
  _NotificationsTapped get _value => super._value as _NotificationsTapped;
}

/// @nodoc
class _$_NotificationsTapped implements _NotificationsTapped {
  const _$_NotificationsTapped();

  @override
  String toString() {
    return 'NavigationActorEvent.notificationsTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotificationsTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mainFeedTapped,
    required TResult Function() searchTapped,
    required TResult Function(Option<Experience> experienceOption) experienceFormTapped,
    required TResult Function(Option<Experience> experienceOption) experienceNavigationTapped,
    required TResult Function(Option<User> userOption, bool currentUserProfile) profileTapped,
    required TResult Function() notificationsTapped,
  }) {
    return notificationsTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mainFeedTapped,
    TResult Function()? searchTapped,
    TResult Function(Option<Experience> experienceOption)? experienceFormTapped,
    TResult Function(Option<Experience> experienceOption)? experienceNavigationTapped,
    TResult Function(Option<User> userOption, bool currentUserProfile)? profileTapped,
    TResult Function()? notificationsTapped,
    required TResult orElse(),
  }) {
    if (notificationsTapped != null) {
      return notificationsTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainFeedTapped value) mainFeedTapped,
    required TResult Function(_SearchTapped value) searchTapped,
    required TResult Function(_ExperienceFormTapped value) experienceFormTapped,
    required TResult Function(_ExperienceNavigationTapped value) experienceNavigationTapped,
    required TResult Function(_ProfileTapped value) profileTapped,
    required TResult Function(_NotificationsTapped value) notificationsTapped,
  }) {
    return notificationsTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainFeedTapped value)? mainFeedTapped,
    TResult Function(_SearchTapped value)? searchTapped,
    TResult Function(_ExperienceFormTapped value)? experienceFormTapped,
    TResult Function(_ExperienceNavigationTapped value)? experienceNavigationTapped,
    TResult Function(_ProfileTapped value)? profileTapped,
    TResult Function(_NotificationsTapped value)? notificationsTapped,
    required TResult orElse(),
  }) {
    if (notificationsTapped != null) {
      return notificationsTapped(this);
    }
    return orElse();
  }
}

abstract class _NotificationsTapped implements NavigationActorEvent {
  const factory _NotificationsTapped() = _$_NotificationsTapped;
}

/// @nodoc
class _$NavigationActorStateTearOff {
  const _$NavigationActorStateTearOff();

  _MainFeedView mainFeedView() {
    return const _MainFeedView();
  }

  _SearchView searchView() {
    return const _SearchView();
  }

  _ExperienceFormView experienceFormView(Option<Experience> experienceOption) {
    return _ExperienceFormView(
      experienceOption,
    );
  }

  _NavigateExperienceView navigateExperienceView(Option<Experience> experienceOption) {
    return _NavigateExperienceView(
      experienceOption,
    );
  }

  _ProfileView profileView({required Option<User> userOption, required bool currentUserProfile}) {
    return _ProfileView(
      userOption: userOption,
      currentUserProfile: currentUserProfile,
    );
  }

  _ErrorView errorView() {
    return const _ErrorView();
  }

  _NotificationsView notificationsView() {
    return const _NotificationsView();
  }
}

/// @nodoc
const $NavigationActorState = _$NavigationActorStateTearOff();

/// @nodoc
mixin _$NavigationActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mainFeedView,
    required TResult Function() searchView,
    required TResult Function(Option<Experience> experienceOption) experienceFormView,
    required TResult Function(Option<Experience> experienceOption) navigateExperienceView,
    required TResult Function(Option<User> userOption, bool currentUserProfile) profileView,
    required TResult Function() errorView,
    required TResult Function() notificationsView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mainFeedView,
    TResult Function()? searchView,
    TResult Function(Option<Experience> experienceOption)? experienceFormView,
    TResult Function(Option<Experience> experienceOption)? navigateExperienceView,
    TResult Function(Option<User> userOption, bool currentUserProfile)? profileView,
    TResult Function()? errorView,
    TResult Function()? notificationsView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainFeedView value) mainFeedView,
    required TResult Function(_SearchView value) searchView,
    required TResult Function(_ExperienceFormView value) experienceFormView,
    required TResult Function(_NavigateExperienceView value) navigateExperienceView,
    required TResult Function(_ProfileView value) profileView,
    required TResult Function(_ErrorView value) errorView,
    required TResult Function(_NotificationsView value) notificationsView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainFeedView value)? mainFeedView,
    TResult Function(_SearchView value)? searchView,
    TResult Function(_ExperienceFormView value)? experienceFormView,
    TResult Function(_NavigateExperienceView value)? navigateExperienceView,
    TResult Function(_ProfileView value)? profileView,
    TResult Function(_ErrorView value)? errorView,
    TResult Function(_NotificationsView value)? notificationsView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationActorStateCopyWith<$Res> {
  factory $NavigationActorStateCopyWith(NavigationActorState value, $Res Function(NavigationActorState) then) = _$NavigationActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigationActorStateCopyWithImpl<$Res> implements $NavigationActorStateCopyWith<$Res> {
  _$NavigationActorStateCopyWithImpl(this._value, this._then);

  final NavigationActorState _value;

  // ignore: unused_field
  final $Res Function(NavigationActorState) _then;
}

/// @nodoc
abstract class _$MainFeedViewCopyWith<$Res> {
  factory _$MainFeedViewCopyWith(_MainFeedView value, $Res Function(_MainFeedView) then) = __$MainFeedViewCopyWithImpl<$Res>;
}

/// @nodoc
class __$MainFeedViewCopyWithImpl<$Res> extends _$NavigationActorStateCopyWithImpl<$Res> implements _$MainFeedViewCopyWith<$Res> {
  __$MainFeedViewCopyWithImpl(_MainFeedView _value, $Res Function(_MainFeedView) _then) : super(_value, (v) => _then(v as _MainFeedView));

  @override
  _MainFeedView get _value => super._value as _MainFeedView;
}

/// @nodoc
class _$_MainFeedView implements _MainFeedView {
  const _$_MainFeedView();

  @override
  String toString() {
    return 'NavigationActorState.mainFeedView()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MainFeedView);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mainFeedView,
    required TResult Function() searchView,
    required TResult Function(Option<Experience> experienceOption) experienceFormView,
    required TResult Function(Option<Experience> experienceOption) navigateExperienceView,
    required TResult Function(Option<User> userOption, bool currentUserProfile) profileView,
    required TResult Function() errorView,
    required TResult Function() notificationsView,
  }) {
    return mainFeedView();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mainFeedView,
    TResult Function()? searchView,
    TResult Function(Option<Experience> experienceOption)? experienceFormView,
    TResult Function(Option<Experience> experienceOption)? navigateExperienceView,
    TResult Function(Option<User> userOption, bool currentUserProfile)? profileView,
    TResult Function()? errorView,
    TResult Function()? notificationsView,
    required TResult orElse(),
  }) {
    if (mainFeedView != null) {
      return mainFeedView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainFeedView value) mainFeedView,
    required TResult Function(_SearchView value) searchView,
    required TResult Function(_ExperienceFormView value) experienceFormView,
    required TResult Function(_NavigateExperienceView value) navigateExperienceView,
    required TResult Function(_ProfileView value) profileView,
    required TResult Function(_ErrorView value) errorView,
    required TResult Function(_NotificationsView value) notificationsView,
  }) {
    return mainFeedView(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainFeedView value)? mainFeedView,
    TResult Function(_SearchView value)? searchView,
    TResult Function(_ExperienceFormView value)? experienceFormView,
    TResult Function(_NavigateExperienceView value)? navigateExperienceView,
    TResult Function(_ProfileView value)? profileView,
    TResult Function(_ErrorView value)? errorView,
    TResult Function(_NotificationsView value)? notificationsView,
    required TResult orElse(),
  }) {
    if (mainFeedView != null) {
      return mainFeedView(this);
    }
    return orElse();
  }
}

abstract class _MainFeedView implements NavigationActorState {
  const factory _MainFeedView() = _$_MainFeedView;
}

/// @nodoc
abstract class _$SearchViewCopyWith<$Res> {
  factory _$SearchViewCopyWith(_SearchView value, $Res Function(_SearchView) then) = __$SearchViewCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchViewCopyWithImpl<$Res> extends _$NavigationActorStateCopyWithImpl<$Res> implements _$SearchViewCopyWith<$Res> {
  __$SearchViewCopyWithImpl(_SearchView _value, $Res Function(_SearchView) _then) : super(_value, (v) => _then(v as _SearchView));

  @override
  _SearchView get _value => super._value as _SearchView;
}

/// @nodoc
class _$_SearchView implements _SearchView {
  const _$_SearchView();

  @override
  String toString() {
    return 'NavigationActorState.searchView()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SearchView);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mainFeedView,
    required TResult Function() searchView,
    required TResult Function(Option<Experience> experienceOption) experienceFormView,
    required TResult Function(Option<Experience> experienceOption) navigateExperienceView,
    required TResult Function(Option<User> userOption, bool currentUserProfile) profileView,
    required TResult Function() errorView,
    required TResult Function() notificationsView,
  }) {
    return searchView();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mainFeedView,
    TResult Function()? searchView,
    TResult Function(Option<Experience> experienceOption)? experienceFormView,
    TResult Function(Option<Experience> experienceOption)? navigateExperienceView,
    TResult Function(Option<User> userOption, bool currentUserProfile)? profileView,
    TResult Function()? errorView,
    TResult Function()? notificationsView,
    required TResult orElse(),
  }) {
    if (searchView != null) {
      return searchView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainFeedView value) mainFeedView,
    required TResult Function(_SearchView value) searchView,
    required TResult Function(_ExperienceFormView value) experienceFormView,
    required TResult Function(_NavigateExperienceView value) navigateExperienceView,
    required TResult Function(_ProfileView value) profileView,
    required TResult Function(_ErrorView value) errorView,
    required TResult Function(_NotificationsView value) notificationsView,
  }) {
    return searchView(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainFeedView value)? mainFeedView,
    TResult Function(_SearchView value)? searchView,
    TResult Function(_ExperienceFormView value)? experienceFormView,
    TResult Function(_NavigateExperienceView value)? navigateExperienceView,
    TResult Function(_ProfileView value)? profileView,
    TResult Function(_ErrorView value)? errorView,
    TResult Function(_NotificationsView value)? notificationsView,
    required TResult orElse(),
  }) {
    if (searchView != null) {
      return searchView(this);
    }
    return orElse();
  }
}

abstract class _SearchView implements NavigationActorState {
  const factory _SearchView() = _$_SearchView;
}

/// @nodoc
abstract class _$ExperienceFormViewCopyWith<$Res> {
  factory _$ExperienceFormViewCopyWith(_ExperienceFormView value, $Res Function(_ExperienceFormView) then) = __$ExperienceFormViewCopyWithImpl<$Res>;

  $Res call({Option<Experience> experienceOption});
}

/// @nodoc
class __$ExperienceFormViewCopyWithImpl<$Res> extends _$NavigationActorStateCopyWithImpl<$Res> implements _$ExperienceFormViewCopyWith<$Res> {
  __$ExperienceFormViewCopyWithImpl(_ExperienceFormView _value, $Res Function(_ExperienceFormView) _then) : super(_value, (v) => _then(v as _ExperienceFormView));

  @override
  _ExperienceFormView get _value => super._value as _ExperienceFormView;

  @override
  $Res call({
    Object? experienceOption = freezed,
  }) {
    return _then(_ExperienceFormView(
      experienceOption == freezed
          ? _value.experienceOption
          : experienceOption // ignore: cast_nullable_to_non_nullable
              as Option<Experience>,
    ));
  }
}

/// @nodoc
class _$_ExperienceFormView implements _ExperienceFormView {
  const _$_ExperienceFormView(this.experienceOption);

  @override
  final Option<Experience> experienceOption;

  @override
  String toString() {
    return 'NavigationActorState.experienceFormView(experienceOption: $experienceOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExperienceFormView && (identical(other.experienceOption, experienceOption) || const DeepCollectionEquality().equals(other.experienceOption, experienceOption)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experienceOption);

  @JsonKey(ignore: true)
  @override
  _$ExperienceFormViewCopyWith<_ExperienceFormView> get copyWith => __$ExperienceFormViewCopyWithImpl<_ExperienceFormView>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mainFeedView,
    required TResult Function() searchView,
    required TResult Function(Option<Experience> experienceOption) experienceFormView,
    required TResult Function(Option<Experience> experienceOption) navigateExperienceView,
    required TResult Function(Option<User> userOption, bool currentUserProfile) profileView,
    required TResult Function() errorView,
    required TResult Function() notificationsView,
  }) {
    return experienceFormView(experienceOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mainFeedView,
    TResult Function()? searchView,
    TResult Function(Option<Experience> experienceOption)? experienceFormView,
    TResult Function(Option<Experience> experienceOption)? navigateExperienceView,
    TResult Function(Option<User> userOption, bool currentUserProfile)? profileView,
    TResult Function()? errorView,
    TResult Function()? notificationsView,
    required TResult orElse(),
  }) {
    if (experienceFormView != null) {
      return experienceFormView(experienceOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainFeedView value) mainFeedView,
    required TResult Function(_SearchView value) searchView,
    required TResult Function(_ExperienceFormView value) experienceFormView,
    required TResult Function(_NavigateExperienceView value) navigateExperienceView,
    required TResult Function(_ProfileView value) profileView,
    required TResult Function(_ErrorView value) errorView,
    required TResult Function(_NotificationsView value) notificationsView,
  }) {
    return experienceFormView(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainFeedView value)? mainFeedView,
    TResult Function(_SearchView value)? searchView,
    TResult Function(_ExperienceFormView value)? experienceFormView,
    TResult Function(_NavigateExperienceView value)? navigateExperienceView,
    TResult Function(_ProfileView value)? profileView,
    TResult Function(_ErrorView value)? errorView,
    TResult Function(_NotificationsView value)? notificationsView,
    required TResult orElse(),
  }) {
    if (experienceFormView != null) {
      return experienceFormView(this);
    }
    return orElse();
  }
}

abstract class _ExperienceFormView implements NavigationActorState {
  const factory _ExperienceFormView(Option<Experience> experienceOption) = _$_ExperienceFormView;

  Option<Experience> get experienceOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$ExperienceFormViewCopyWith<_ExperienceFormView> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NavigateExperienceViewCopyWith<$Res> {
  factory _$NavigateExperienceViewCopyWith(_NavigateExperienceView value, $Res Function(_NavigateExperienceView) then) = __$NavigateExperienceViewCopyWithImpl<$Res>;

  $Res call({Option<Experience> experienceOption});
}

/// @nodoc
class __$NavigateExperienceViewCopyWithImpl<$Res> extends _$NavigationActorStateCopyWithImpl<$Res> implements _$NavigateExperienceViewCopyWith<$Res> {
  __$NavigateExperienceViewCopyWithImpl(_NavigateExperienceView _value, $Res Function(_NavigateExperienceView) _then) : super(_value, (v) => _then(v as _NavigateExperienceView));

  @override
  _NavigateExperienceView get _value => super._value as _NavigateExperienceView;

  @override
  $Res call({
    Object? experienceOption = freezed,
  }) {
    return _then(_NavigateExperienceView(
      experienceOption == freezed
          ? _value.experienceOption
          : experienceOption // ignore: cast_nullable_to_non_nullable
              as Option<Experience>,
    ));
  }
}

/// @nodoc
class _$_NavigateExperienceView implements _NavigateExperienceView {
  const _$_NavigateExperienceView(this.experienceOption);

  @override
  final Option<Experience> experienceOption;

  @override
  String toString() {
    return 'NavigationActorState.navigateExperienceView(experienceOption: $experienceOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NavigateExperienceView && (identical(other.experienceOption, experienceOption) || const DeepCollectionEquality().equals(other.experienceOption, experienceOption)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experienceOption);

  @JsonKey(ignore: true)
  @override
  _$NavigateExperienceViewCopyWith<_NavigateExperienceView> get copyWith => __$NavigateExperienceViewCopyWithImpl<_NavigateExperienceView>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mainFeedView,
    required TResult Function() searchView,
    required TResult Function(Option<Experience> experienceOption) experienceFormView,
    required TResult Function(Option<Experience> experienceOption) navigateExperienceView,
    required TResult Function(Option<User> userOption, bool currentUserProfile) profileView,
    required TResult Function() errorView,
    required TResult Function() notificationsView,
  }) {
    return navigateExperienceView(experienceOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mainFeedView,
    TResult Function()? searchView,
    TResult Function(Option<Experience> experienceOption)? experienceFormView,
    TResult Function(Option<Experience> experienceOption)? navigateExperienceView,
    TResult Function(Option<User> userOption, bool currentUserProfile)? profileView,
    TResult Function()? errorView,
    TResult Function()? notificationsView,
    required TResult orElse(),
  }) {
    if (navigateExperienceView != null) {
      return navigateExperienceView(experienceOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainFeedView value) mainFeedView,
    required TResult Function(_SearchView value) searchView,
    required TResult Function(_ExperienceFormView value) experienceFormView,
    required TResult Function(_NavigateExperienceView value) navigateExperienceView,
    required TResult Function(_ProfileView value) profileView,
    required TResult Function(_ErrorView value) errorView,
    required TResult Function(_NotificationsView value) notificationsView,
  }) {
    return navigateExperienceView(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainFeedView value)? mainFeedView,
    TResult Function(_SearchView value)? searchView,
    TResult Function(_ExperienceFormView value)? experienceFormView,
    TResult Function(_NavigateExperienceView value)? navigateExperienceView,
    TResult Function(_ProfileView value)? profileView,
    TResult Function(_ErrorView value)? errorView,
    TResult Function(_NotificationsView value)? notificationsView,
    required TResult orElse(),
  }) {
    if (navigateExperienceView != null) {
      return navigateExperienceView(this);
    }
    return orElse();
  }
}

abstract class _NavigateExperienceView implements NavigationActorState {
  const factory _NavigateExperienceView(Option<Experience> experienceOption) = _$_NavigateExperienceView;

  Option<Experience> get experienceOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$NavigateExperienceViewCopyWith<_NavigateExperienceView> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ProfileViewCopyWith<$Res> {
  factory _$ProfileViewCopyWith(_ProfileView value, $Res Function(_ProfileView) then) = __$ProfileViewCopyWithImpl<$Res>;

  $Res call({Option<User> userOption, bool currentUserProfile});
}

/// @nodoc
class __$ProfileViewCopyWithImpl<$Res> extends _$NavigationActorStateCopyWithImpl<$Res> implements _$ProfileViewCopyWith<$Res> {
  __$ProfileViewCopyWithImpl(_ProfileView _value, $Res Function(_ProfileView) _then) : super(_value, (v) => _then(v as _ProfileView));

  @override
  _ProfileView get _value => super._value as _ProfileView;

  @override
  $Res call({
    Object? userOption = freezed,
    Object? currentUserProfile = freezed,
  }) {
    return _then(_ProfileView(
      userOption: userOption == freezed
          ? _value.userOption
          : userOption // ignore: cast_nullable_to_non_nullable
              as Option<User>,
      currentUserProfile: currentUserProfile == freezed
          ? _value.currentUserProfile
          : currentUserProfile // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_ProfileView implements _ProfileView {
  const _$_ProfileView({required this.userOption, required this.currentUserProfile});

  @override
  final Option<User> userOption;
  @override
  final bool currentUserProfile;

  @override
  String toString() {
    return 'NavigationActorState.profileView(userOption: $userOption, currentUserProfile: $currentUserProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileView &&
            (identical(other.userOption, userOption) || const DeepCollectionEquality().equals(other.userOption, userOption)) &&
            (identical(other.currentUserProfile, currentUserProfile) || const DeepCollectionEquality().equals(other.currentUserProfile, currentUserProfile)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(userOption) ^ const DeepCollectionEquality().hash(currentUserProfile);

  @JsonKey(ignore: true)
  @override
  _$ProfileViewCopyWith<_ProfileView> get copyWith => __$ProfileViewCopyWithImpl<_ProfileView>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mainFeedView,
    required TResult Function() searchView,
    required TResult Function(Option<Experience> experienceOption) experienceFormView,
    required TResult Function(Option<Experience> experienceOption) navigateExperienceView,
    required TResult Function(Option<User> userOption, bool currentUserProfile) profileView,
    required TResult Function() errorView,
    required TResult Function() notificationsView,
  }) {
    return profileView(userOption, currentUserProfile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mainFeedView,
    TResult Function()? searchView,
    TResult Function(Option<Experience> experienceOption)? experienceFormView,
    TResult Function(Option<Experience> experienceOption)? navigateExperienceView,
    TResult Function(Option<User> userOption, bool currentUserProfile)? profileView,
    TResult Function()? errorView,
    TResult Function()? notificationsView,
    required TResult orElse(),
  }) {
    if (profileView != null) {
      return profileView(userOption, currentUserProfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainFeedView value) mainFeedView,
    required TResult Function(_SearchView value) searchView,
    required TResult Function(_ExperienceFormView value) experienceFormView,
    required TResult Function(_NavigateExperienceView value) navigateExperienceView,
    required TResult Function(_ProfileView value) profileView,
    required TResult Function(_ErrorView value) errorView,
    required TResult Function(_NotificationsView value) notificationsView,
  }) {
    return profileView(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainFeedView value)? mainFeedView,
    TResult Function(_SearchView value)? searchView,
    TResult Function(_ExperienceFormView value)? experienceFormView,
    TResult Function(_NavigateExperienceView value)? navigateExperienceView,
    TResult Function(_ProfileView value)? profileView,
    TResult Function(_ErrorView value)? errorView,
    TResult Function(_NotificationsView value)? notificationsView,
    required TResult orElse(),
  }) {
    if (profileView != null) {
      return profileView(this);
    }
    return orElse();
  }
}

abstract class _ProfileView implements NavigationActorState {
  const factory _ProfileView({required Option<User> userOption, required bool currentUserProfile}) = _$_ProfileView;

  Option<User> get userOption => throw _privateConstructorUsedError;

  bool get currentUserProfile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$ProfileViewCopyWith<_ProfileView> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorViewCopyWith<$Res> {
  factory _$ErrorViewCopyWith(_ErrorView value, $Res Function(_ErrorView) then) = __$ErrorViewCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorViewCopyWithImpl<$Res> extends _$NavigationActorStateCopyWithImpl<$Res> implements _$ErrorViewCopyWith<$Res> {
  __$ErrorViewCopyWithImpl(_ErrorView _value, $Res Function(_ErrorView) _then) : super(_value, (v) => _then(v as _ErrorView));

  @override
  _ErrorView get _value => super._value as _ErrorView;
}

/// @nodoc
class _$_ErrorView implements _ErrorView {
  const _$_ErrorView();

  @override
  String toString() {
    return 'NavigationActorState.errorView()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ErrorView);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mainFeedView,
    required TResult Function() searchView,
    required TResult Function(Option<Experience> experienceOption) experienceFormView,
    required TResult Function(Option<Experience> experienceOption) navigateExperienceView,
    required TResult Function(Option<User> userOption, bool currentUserProfile) profileView,
    required TResult Function() errorView,
    required TResult Function() notificationsView,
  }) {
    return errorView();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mainFeedView,
    TResult Function()? searchView,
    TResult Function(Option<Experience> experienceOption)? experienceFormView,
    TResult Function(Option<Experience> experienceOption)? navigateExperienceView,
    TResult Function(Option<User> userOption, bool currentUserProfile)? profileView,
    TResult Function()? errorView,
    TResult Function()? notificationsView,
    required TResult orElse(),
  }) {
    if (errorView != null) {
      return errorView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainFeedView value) mainFeedView,
    required TResult Function(_SearchView value) searchView,
    required TResult Function(_ExperienceFormView value) experienceFormView,
    required TResult Function(_NavigateExperienceView value) navigateExperienceView,
    required TResult Function(_ProfileView value) profileView,
    required TResult Function(_ErrorView value) errorView,
    required TResult Function(_NotificationsView value) notificationsView,
  }) {
    return errorView(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainFeedView value)? mainFeedView,
    TResult Function(_SearchView value)? searchView,
    TResult Function(_ExperienceFormView value)? experienceFormView,
    TResult Function(_NavigateExperienceView value)? navigateExperienceView,
    TResult Function(_ProfileView value)? profileView,
    TResult Function(_ErrorView value)? errorView,
    TResult Function(_NotificationsView value)? notificationsView,
    required TResult orElse(),
  }) {
    if (errorView != null) {
      return errorView(this);
    }
    return orElse();
  }
}

abstract class _ErrorView implements NavigationActorState {
  const factory _ErrorView() = _$_ErrorView;
}

/// @nodoc
abstract class _$NotificationsViewCopyWith<$Res> {
  factory _$NotificationsViewCopyWith(_NotificationsView value, $Res Function(_NotificationsView) then) = __$NotificationsViewCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotificationsViewCopyWithImpl<$Res> extends _$NavigationActorStateCopyWithImpl<$Res> implements _$NotificationsViewCopyWith<$Res> {
  __$NotificationsViewCopyWithImpl(_NotificationsView _value, $Res Function(_NotificationsView) _then) : super(_value, (v) => _then(v as _NotificationsView));

  @override
  _NotificationsView get _value => super._value as _NotificationsView;
}

/// @nodoc
class _$_NotificationsView implements _NotificationsView {
  const _$_NotificationsView();

  @override
  String toString() {
    return 'NavigationActorState.notificationsView()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotificationsView);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mainFeedView,
    required TResult Function() searchView,
    required TResult Function(Option<Experience> experienceOption) experienceFormView,
    required TResult Function(Option<Experience> experienceOption) navigateExperienceView,
    required TResult Function(Option<User> userOption, bool currentUserProfile) profileView,
    required TResult Function() errorView,
    required TResult Function() notificationsView,
  }) {
    return notificationsView();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mainFeedView,
    TResult Function()? searchView,
    TResult Function(Option<Experience> experienceOption)? experienceFormView,
    TResult Function(Option<Experience> experienceOption)? navigateExperienceView,
    TResult Function(Option<User> userOption, bool currentUserProfile)? profileView,
    TResult Function()? errorView,
    TResult Function()? notificationsView,
    required TResult orElse(),
  }) {
    if (notificationsView != null) {
      return notificationsView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainFeedView value) mainFeedView,
    required TResult Function(_SearchView value) searchView,
    required TResult Function(_ExperienceFormView value) experienceFormView,
    required TResult Function(_NavigateExperienceView value) navigateExperienceView,
    required TResult Function(_ProfileView value) profileView,
    required TResult Function(_ErrorView value) errorView,
    required TResult Function(_NotificationsView value) notificationsView,
  }) {
    return notificationsView(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainFeedView value)? mainFeedView,
    TResult Function(_SearchView value)? searchView,
    TResult Function(_ExperienceFormView value)? experienceFormView,
    TResult Function(_NavigateExperienceView value)? navigateExperienceView,
    TResult Function(_ProfileView value)? profileView,
    TResult Function(_ErrorView value)? errorView,
    TResult Function(_NotificationsView value)? notificationsView,
    required TResult orElse(),
  }) {
    if (notificationsView != null) {
      return notificationsView(this);
    }
    return orElse();
  }
}

abstract class _NotificationsView implements NavigationActorState {
  const factory _NotificationsView() = _$_NotificationsView;
}
