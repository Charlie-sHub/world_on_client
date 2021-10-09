// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'share_experience_internally_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShareExperienceInternallyEventTearOff {
  const _$ShareExperienceInternallyEventTearOff();

  _Initialized initialized(Experience experience) {
    return _Initialized(
      experience,
    );
  }

  _RemovedUser removedUser(User user) {
    return _RemovedUser(
      user,
    );
  }

  _AddedUser addedUser(User user) {
    return _AddedUser(
      user,
    );
  }

  _Shared shared() {
    return const _Shared();
  }
}

/// @nodoc
const $ShareExperienceInternallyEvent =
    _$ShareExperienceInternallyEventTearOff();

/// @nodoc
mixin _$ShareExperienceInternallyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experience experience) initialized,
    required TResult Function(User user) removedUser,
    required TResult Function(User user) addedUser,
    required TResult Function() shared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Experience experience)? initialized,
    TResult Function(User user)? removedUser,
    TResult Function(User user)? addedUser,
    TResult Function()? shared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experience experience)? initialized,
    TResult Function(User user)? removedUser,
    TResult Function(User user)? addedUser,
    TResult Function()? shared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_RemovedUser value) removedUser,
    required TResult Function(_AddedUser value) addedUser,
    required TResult Function(_Shared value) shared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_RemovedUser value)? removedUser,
    TResult Function(_AddedUser value)? addedUser,
    TResult Function(_Shared value)? shared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_RemovedUser value)? removedUser,
    TResult Function(_AddedUser value)? addedUser,
    TResult Function(_Shared value)? shared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareExperienceInternallyEventCopyWith<$Res> {
  factory $ShareExperienceInternallyEventCopyWith(
          ShareExperienceInternallyEvent value,
          $Res Function(ShareExperienceInternallyEvent) then) =
      _$ShareExperienceInternallyEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShareExperienceInternallyEventCopyWithImpl<$Res>
    implements $ShareExperienceInternallyEventCopyWith<$Res> {
  _$ShareExperienceInternallyEventCopyWithImpl(this._value, this._then);

  final ShareExperienceInternallyEvent _value;
  // ignore: unused_field
  final $Res Function(ShareExperienceInternallyEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Experience experience});

  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$ShareExperienceInternallyEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? experience = freezed,
  }) {
    return _then(_Initialized(
      experience == freezed
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as Experience,
    ));
  }

  @override
  $ExperienceCopyWith<$Res> get experience {
    return $ExperienceCopyWith<$Res>(_value.experience, (value) {
      return _then(_value.copyWith(experience: value));
    });
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.experience);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'ShareExperienceInternallyEvent.initialized(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialized &&
            (identical(other.experience, experience) ||
                other.experience == experience));
  }

  @override
  int get hashCode => Object.hash(runtimeType, experience);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experience experience) initialized,
    required TResult Function(User user) removedUser,
    required TResult Function(User user) addedUser,
    required TResult Function() shared,
  }) {
    return initialized(experience);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Experience experience)? initialized,
    TResult Function(User user)? removedUser,
    TResult Function(User user)? addedUser,
    TResult Function()? shared,
  }) {
    return initialized?.call(experience);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experience experience)? initialized,
    TResult Function(User user)? removedUser,
    TResult Function(User user)? addedUser,
    TResult Function()? shared,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_RemovedUser value) removedUser,
    required TResult Function(_AddedUser value) addedUser,
    required TResult Function(_Shared value) shared,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_RemovedUser value)? removedUser,
    TResult Function(_AddedUser value)? addedUser,
    TResult Function(_Shared value)? shared,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_RemovedUser value)? removedUser,
    TResult Function(_AddedUser value)? addedUser,
    TResult Function(_Shared value)? shared,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ShareExperienceInternallyEvent {
  const factory _Initialized(Experience experience) = _$_Initialized;

  Experience get experience;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemovedUserCopyWith<$Res> {
  factory _$RemovedUserCopyWith(
          _RemovedUser value, $Res Function(_RemovedUser) then) =
      __$RemovedUserCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$RemovedUserCopyWithImpl<$Res>
    extends _$ShareExperienceInternallyEventCopyWithImpl<$Res>
    implements _$RemovedUserCopyWith<$Res> {
  __$RemovedUserCopyWithImpl(
      _RemovedUser _value, $Res Function(_RemovedUser) _then)
      : super(_value, (v) => _then(v as _RemovedUser));

  @override
  _RemovedUser get _value => super._value as _RemovedUser;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_RemovedUser(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_RemovedUser implements _RemovedUser {
  const _$_RemovedUser(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'ShareExperienceInternallyEvent.removedUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemovedUser &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  _$RemovedUserCopyWith<_RemovedUser> get copyWith =>
      __$RemovedUserCopyWithImpl<_RemovedUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experience experience) initialized,
    required TResult Function(User user) removedUser,
    required TResult Function(User user) addedUser,
    required TResult Function() shared,
  }) {
    return removedUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Experience experience)? initialized,
    TResult Function(User user)? removedUser,
    TResult Function(User user)? addedUser,
    TResult Function()? shared,
  }) {
    return removedUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experience experience)? initialized,
    TResult Function(User user)? removedUser,
    TResult Function(User user)? addedUser,
    TResult Function()? shared,
    required TResult orElse(),
  }) {
    if (removedUser != null) {
      return removedUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_RemovedUser value) removedUser,
    required TResult Function(_AddedUser value) addedUser,
    required TResult Function(_Shared value) shared,
  }) {
    return removedUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_RemovedUser value)? removedUser,
    TResult Function(_AddedUser value)? addedUser,
    TResult Function(_Shared value)? shared,
  }) {
    return removedUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_RemovedUser value)? removedUser,
    TResult Function(_AddedUser value)? addedUser,
    TResult Function(_Shared value)? shared,
    required TResult orElse(),
  }) {
    if (removedUser != null) {
      return removedUser(this);
    }
    return orElse();
  }
}

abstract class _RemovedUser implements ShareExperienceInternallyEvent {
  const factory _RemovedUser(User user) = _$_RemovedUser;

  User get user;
  @JsonKey(ignore: true)
  _$RemovedUserCopyWith<_RemovedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddedUserCopyWith<$Res> {
  factory _$AddedUserCopyWith(
          _AddedUser value, $Res Function(_AddedUser) then) =
      __$AddedUserCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$AddedUserCopyWithImpl<$Res>
    extends _$ShareExperienceInternallyEventCopyWithImpl<$Res>
    implements _$AddedUserCopyWith<$Res> {
  __$AddedUserCopyWithImpl(_AddedUser _value, $Res Function(_AddedUser) _then)
      : super(_value, (v) => _then(v as _AddedUser));

  @override
  _AddedUser get _value => super._value as _AddedUser;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_AddedUser(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_AddedUser implements _AddedUser {
  const _$_AddedUser(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'ShareExperienceInternallyEvent.addedUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddedUser &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  _$AddedUserCopyWith<_AddedUser> get copyWith =>
      __$AddedUserCopyWithImpl<_AddedUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experience experience) initialized,
    required TResult Function(User user) removedUser,
    required TResult Function(User user) addedUser,
    required TResult Function() shared,
  }) {
    return addedUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Experience experience)? initialized,
    TResult Function(User user)? removedUser,
    TResult Function(User user)? addedUser,
    TResult Function()? shared,
  }) {
    return addedUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experience experience)? initialized,
    TResult Function(User user)? removedUser,
    TResult Function(User user)? addedUser,
    TResult Function()? shared,
    required TResult orElse(),
  }) {
    if (addedUser != null) {
      return addedUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_RemovedUser value) removedUser,
    required TResult Function(_AddedUser value) addedUser,
    required TResult Function(_Shared value) shared,
  }) {
    return addedUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_RemovedUser value)? removedUser,
    TResult Function(_AddedUser value)? addedUser,
    TResult Function(_Shared value)? shared,
  }) {
    return addedUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_RemovedUser value)? removedUser,
    TResult Function(_AddedUser value)? addedUser,
    TResult Function(_Shared value)? shared,
    required TResult orElse(),
  }) {
    if (addedUser != null) {
      return addedUser(this);
    }
    return orElse();
  }
}

abstract class _AddedUser implements ShareExperienceInternallyEvent {
  const factory _AddedUser(User user) = _$_AddedUser;

  User get user;
  @JsonKey(ignore: true)
  _$AddedUserCopyWith<_AddedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SharedCopyWith<$Res> {
  factory _$SharedCopyWith(_Shared value, $Res Function(_Shared) then) =
      __$SharedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SharedCopyWithImpl<$Res>
    extends _$ShareExperienceInternallyEventCopyWithImpl<$Res>
    implements _$SharedCopyWith<$Res> {
  __$SharedCopyWithImpl(_Shared _value, $Res Function(_Shared) _then)
      : super(_value, (v) => _then(v as _Shared));

  @override
  _Shared get _value => super._value as _Shared;
}

/// @nodoc

class _$_Shared implements _Shared {
  const _$_Shared();

  @override
  String toString() {
    return 'ShareExperienceInternallyEvent.shared()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Shared);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experience experience) initialized,
    required TResult Function(User user) removedUser,
    required TResult Function(User user) addedUser,
    required TResult Function() shared,
  }) {
    return shared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Experience experience)? initialized,
    TResult Function(User user)? removedUser,
    TResult Function(User user)? addedUser,
    TResult Function()? shared,
  }) {
    return shared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experience experience)? initialized,
    TResult Function(User user)? removedUser,
    TResult Function(User user)? addedUser,
    TResult Function()? shared,
    required TResult orElse(),
  }) {
    if (shared != null) {
      return shared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_RemovedUser value) removedUser,
    required TResult Function(_AddedUser value) addedUser,
    required TResult Function(_Shared value) shared,
  }) {
    return shared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_RemovedUser value)? removedUser,
    TResult Function(_AddedUser value)? addedUser,
    TResult Function(_Shared value)? shared,
  }) {
    return shared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_RemovedUser value)? removedUser,
    TResult Function(_AddedUser value)? addedUser,
    TResult Function(_Shared value)? shared,
    required TResult orElse(),
  }) {
    if (shared != null) {
      return shared(this);
    }
    return orElse();
  }
}

abstract class _Shared implements ShareExperienceInternallyEvent {
  const factory _Shared() = _$_Shared;
}

/// @nodoc
class _$ShareExperienceInternallyStateTearOff {
  const _$ShareExperienceInternallyStateTearOff();

  _ShareExperienceInternallyState call(
      {required Experience experience,
      required KtSet<User> users,
      required bool submitted}) {
    return _ShareExperienceInternallyState(
      experience: experience,
      users: users,
      submitted: submitted,
    );
  }
}

/// @nodoc
const $ShareExperienceInternallyState =
    _$ShareExperienceInternallyStateTearOff();

/// @nodoc
mixin _$ShareExperienceInternallyState {
  Experience get experience => throw _privateConstructorUsedError;
  KtSet<User> get users => throw _privateConstructorUsedError;
  bool get submitted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShareExperienceInternallyStateCopyWith<ShareExperienceInternallyState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareExperienceInternallyStateCopyWith<$Res> {
  factory $ShareExperienceInternallyStateCopyWith(
          ShareExperienceInternallyState value,
          $Res Function(ShareExperienceInternallyState) then) =
      _$ShareExperienceInternallyStateCopyWithImpl<$Res>;
  $Res call({Experience experience, KtSet<User> users, bool submitted});

  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class _$ShareExperienceInternallyStateCopyWithImpl<$Res>
    implements $ShareExperienceInternallyStateCopyWith<$Res> {
  _$ShareExperienceInternallyStateCopyWithImpl(this._value, this._then);

  final ShareExperienceInternallyState _value;
  // ignore: unused_field
  final $Res Function(ShareExperienceInternallyState) _then;

  @override
  $Res call({
    Object? experience = freezed,
    Object? users = freezed,
    Object? submitted = freezed,
  }) {
    return _then(_value.copyWith(
      experience: experience == freezed
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as Experience,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as KtSet<User>,
      submitted: submitted == freezed
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ExperienceCopyWith<$Res> get experience {
    return $ExperienceCopyWith<$Res>(_value.experience, (value) {
      return _then(_value.copyWith(experience: value));
    });
  }
}

/// @nodoc
abstract class _$ShareExperienceInternallyStateCopyWith<$Res>
    implements $ShareExperienceInternallyStateCopyWith<$Res> {
  factory _$ShareExperienceInternallyStateCopyWith(
          _ShareExperienceInternallyState value,
          $Res Function(_ShareExperienceInternallyState) then) =
      __$ShareExperienceInternallyStateCopyWithImpl<$Res>;
  @override
  $Res call({Experience experience, KtSet<User> users, bool submitted});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class __$ShareExperienceInternallyStateCopyWithImpl<$Res>
    extends _$ShareExperienceInternallyStateCopyWithImpl<$Res>
    implements _$ShareExperienceInternallyStateCopyWith<$Res> {
  __$ShareExperienceInternallyStateCopyWithImpl(
      _ShareExperienceInternallyState _value,
      $Res Function(_ShareExperienceInternallyState) _then)
      : super(_value, (v) => _then(v as _ShareExperienceInternallyState));

  @override
  _ShareExperienceInternallyState get _value =>
      super._value as _ShareExperienceInternallyState;

  @override
  $Res call({
    Object? experience = freezed,
    Object? users = freezed,
    Object? submitted = freezed,
  }) {
    return _then(_ShareExperienceInternallyState(
      experience: experience == freezed
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as Experience,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as KtSet<User>,
      submitted: submitted == freezed
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShareExperienceInternallyState
    implements _ShareExperienceInternallyState {
  const _$_ShareExperienceInternallyState(
      {required this.experience, required this.users, required this.submitted});

  @override
  final Experience experience;
  @override
  final KtSet<User> users;
  @override
  final bool submitted;

  @override
  String toString() {
    return 'ShareExperienceInternallyState(experience: $experience, users: $users, submitted: $submitted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShareExperienceInternallyState &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.users, users) || other.users == users) &&
            (identical(other.submitted, submitted) ||
                other.submitted == submitted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, experience, users, submitted);

  @JsonKey(ignore: true)
  @override
  _$ShareExperienceInternallyStateCopyWith<_ShareExperienceInternallyState>
      get copyWith => __$ShareExperienceInternallyStateCopyWithImpl<
          _ShareExperienceInternallyState>(this, _$identity);
}

abstract class _ShareExperienceInternallyState
    implements ShareExperienceInternallyState {
  const factory _ShareExperienceInternallyState(
      {required Experience experience,
      required KtSet<User> users,
      required bool submitted}) = _$_ShareExperienceInternallyState;

  @override
  Experience get experience;
  @override
  KtSet<User> get users;
  @override
  bool get submitted;
  @override
  @JsonKey(ignore: true)
  _$ShareExperienceInternallyStateCopyWith<_ShareExperienceInternallyState>
      get copyWith => throw _privateConstructorUsedError;
}
