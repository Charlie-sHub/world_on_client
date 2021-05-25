// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_editing_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileEditingFormEventTearOff {
  const _$ProfileEditingFormEventTearOff();

  _Initialized initialized(User userToEdit) {
    return _Initialized(
      userToEdit,
    );
  }

  _NameChanged nameChanged(String name) {
    return _NameChanged(
      name,
    );
  }

  _ImageChanged imageChanged(File imageFile) {
    return _ImageChanged(
      imageFile,
    );
  }

  _UsernameChanged usernameChanged(String username) {
    return _UsernameChanged(
      username,
    );
  }

  _PasswordChanged passwordChanged(String password) {
    return _PasswordChanged(
      password,
    );
  }

  _PasswordConfirmationChanged passwordConfirmationChanged(String passwordConfirmation) {
    return _PasswordConfirmationChanged(
      passwordConfirmation,
    );
  }

  _EmailAddressChanged emailAddressChanged(String emailAddress) {
    return _EmailAddressChanged(
      emailAddress,
    );
  }

  _BirthdayChanged birthdayChanged(DateTime birthday) {
    return _BirthdayChanged(
      birthday,
    );
  }

  _DescriptionChanged descriptionChanged(String description) {
    return _DescriptionChanged(
      description,
    );
  }

  _InterestsChanged interestsChanged(KtSet<Tag> interests) {
    return _InterestsChanged(
      interests,
    );
  }

  _Submitted submitted() {
    return const _Submitted();
  }
}

/// @nodoc
const $ProfileEditingFormEvent = _$ProfileEditingFormEventTearOff();

/// @nodoc
mixin _$ProfileEditingFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User userToEdit) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(File imageFile) imageChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String passwordConfirmation) passwordConfirmationChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(DateTime birthday) birthdayChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(KtSet<Tag> interests) interestsChanged,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User userToEdit)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String passwordConfirmation)? passwordConfirmationChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(DateTime birthday)? birthdayChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(KtSet<Tag> interests)? interestsChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordConfirmationChanged value) passwordConfirmationChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_BirthdayChanged value) birthdayChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_InterestsChanged value) interestsChanged,
    required TResult Function(_Submitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)? passwordConfirmationChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_BirthdayChanged value)? birthdayChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_InterestsChanged value)? interestsChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEditingFormEventCopyWith<$Res> {
  factory $ProfileEditingFormEventCopyWith(ProfileEditingFormEvent value, $Res Function(ProfileEditingFormEvent) then) = _$ProfileEditingFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEditingFormEventCopyWithImpl<$Res> implements $ProfileEditingFormEventCopyWith<$Res> {
  _$ProfileEditingFormEventCopyWithImpl(this._value, this._then);

  final ProfileEditingFormEvent _value;

  // ignore: unused_field
  final $Res Function(ProfileEditingFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(_Initialized value, $Res Function(_Initialized) then) = __$InitializedCopyWithImpl<$Res>;

  $Res call({User userToEdit});

  $UserCopyWith<$Res> get userToEdit;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$ProfileEditingFormEventCopyWithImpl<$Res> implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(_Initialized _value, $Res Function(_Initialized) _then) : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? userToEdit = freezed,
  }) {
    return _then(_Initialized(
      userToEdit == freezed
          ? _value.userToEdit
          : userToEdit // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get userToEdit {
    return $UserCopyWith<$Res>(_value.userToEdit, (value) {
      return _then(_value.copyWith(userToEdit: value));
    });
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.userToEdit);

  @override
  final User userToEdit;

  @override
  String toString() {
    return 'ProfileEditingFormEvent.initialized(userToEdit: $userToEdit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialized && (identical(other.userToEdit, userToEdit) || const DeepCollectionEquality().equals(other.userToEdit, userToEdit)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(userToEdit);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith => __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User userToEdit) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(File imageFile) imageChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String passwordConfirmation) passwordConfirmationChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(DateTime birthday) birthdayChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(KtSet<Tag> interests) interestsChanged,
    required TResult Function() submitted,
  }) {
    return initialized(userToEdit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User userToEdit)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String passwordConfirmation)? passwordConfirmationChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(DateTime birthday)? birthdayChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(KtSet<Tag> interests)? interestsChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(userToEdit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordConfirmationChanged value) passwordConfirmationChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_BirthdayChanged value) birthdayChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_InterestsChanged value) interestsChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)? passwordConfirmationChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_BirthdayChanged value)? birthdayChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_InterestsChanged value)? interestsChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ProfileEditingFormEvent {
  const factory _Initialized(User userToEdit) = _$_Initialized;

  User get userToEdit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(_NameChanged value, $Res Function(_NameChanged) then) = __$NameChangedCopyWithImpl<$Res>;

  $Res call({String name});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res> extends _$ProfileEditingFormEventCopyWithImpl<$Res> implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(_NameChanged _value, $Res Function(_NameChanged) _then) : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_NameChanged(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'ProfileEditingFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NameChanged && (identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith => __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User userToEdit) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(File imageFile) imageChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String passwordConfirmation) passwordConfirmationChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(DateTime birthday) birthdayChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(KtSet<Tag> interests) interestsChanged,
    required TResult Function() submitted,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User userToEdit)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String passwordConfirmation)? passwordConfirmationChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(DateTime birthday)? birthdayChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(KtSet<Tag> interests)? interestsChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordConfirmationChanged value) passwordConfirmationChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_BirthdayChanged value) birthdayChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_InterestsChanged value) interestsChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)? passwordConfirmationChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_BirthdayChanged value)? birthdayChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_InterestsChanged value)? interestsChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements ProfileEditingFormEvent {
  const factory _NameChanged(String name) = _$_NameChanged;

  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ImageChangedCopyWith<$Res> {
  factory _$ImageChangedCopyWith(_ImageChanged value, $Res Function(_ImageChanged) then) = __$ImageChangedCopyWithImpl<$Res>;

  $Res call({File imageFile});
}

/// @nodoc
class __$ImageChangedCopyWithImpl<$Res> extends _$ProfileEditingFormEventCopyWithImpl<$Res> implements _$ImageChangedCopyWith<$Res> {
  __$ImageChangedCopyWithImpl(_ImageChanged _value, $Res Function(_ImageChanged) _then) : super(_value, (v) => _then(v as _ImageChanged));

  @override
  _ImageChanged get _value => super._value as _ImageChanged;

  @override
  $Res call({
    Object? imageFile = freezed,
  }) {
    return _then(_ImageChanged(
      imageFile == freezed
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_ImageChanged implements _ImageChanged {
  const _$_ImageChanged(this.imageFile);

  @override
  final File imageFile;

  @override
  String toString() {
    return 'ProfileEditingFormEvent.imageChanged(imageFile: $imageFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ImageChanged && (identical(other.imageFile, imageFile) || const DeepCollectionEquality().equals(other.imageFile, imageFile)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageFile);

  @JsonKey(ignore: true)
  @override
  _$ImageChangedCopyWith<_ImageChanged> get copyWith => __$ImageChangedCopyWithImpl<_ImageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User userToEdit) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(File imageFile) imageChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String passwordConfirmation) passwordConfirmationChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(DateTime birthday) birthdayChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(KtSet<Tag> interests) interestsChanged,
    required TResult Function() submitted,
  }) {
    return imageChanged(imageFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User userToEdit)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String passwordConfirmation)? passwordConfirmationChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(DateTime birthday)? birthdayChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(KtSet<Tag> interests)? interestsChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(imageFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordConfirmationChanged value) passwordConfirmationChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_BirthdayChanged value) birthdayChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_InterestsChanged value) interestsChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return imageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)? passwordConfirmationChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_BirthdayChanged value)? birthdayChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_InterestsChanged value)? interestsChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(this);
    }
    return orElse();
  }
}

abstract class _ImageChanged implements ProfileEditingFormEvent {
  const factory _ImageChanged(File imageFile) = _$_ImageChanged;

  File get imageFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$ImageChangedCopyWith<_ImageChanged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UsernameChangedCopyWith<$Res> {
  factory _$UsernameChangedCopyWith(_UsernameChanged value, $Res Function(_UsernameChanged) then) = __$UsernameChangedCopyWithImpl<$Res>;

  $Res call({String username});
}

/// @nodoc
class __$UsernameChangedCopyWithImpl<$Res> extends _$ProfileEditingFormEventCopyWithImpl<$Res> implements _$UsernameChangedCopyWith<$Res> {
  __$UsernameChangedCopyWithImpl(_UsernameChanged _value, $Res Function(_UsernameChanged) _then) : super(_value, (v) => _then(v as _UsernameChanged));

  @override
  _UsernameChanged get _value => super._value as _UsernameChanged;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_UsernameChanged(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UsernameChanged implements _UsernameChanged {
  const _$_UsernameChanged(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'ProfileEditingFormEvent.usernameChanged(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UsernameChanged && (identical(other.username, username) || const DeepCollectionEquality().equals(other.username, username)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith => __$UsernameChangedCopyWithImpl<_UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User userToEdit) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(File imageFile) imageChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String passwordConfirmation) passwordConfirmationChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(DateTime birthday) birthdayChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(KtSet<Tag> interests) interestsChanged,
    required TResult Function() submitted,
  }) {
    return usernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User userToEdit)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String passwordConfirmation)? passwordConfirmationChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(DateTime birthday)? birthdayChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(KtSet<Tag> interests)? interestsChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordConfirmationChanged value) passwordConfirmationChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_BirthdayChanged value) birthdayChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_InterestsChanged value) interestsChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)? passwordConfirmationChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_BirthdayChanged value)? birthdayChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_InterestsChanged value)? interestsChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChanged implements ProfileEditingFormEvent {
  const factory _UsernameChanged(String username) = _$_UsernameChanged;

  String get username => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(_PasswordChanged value, $Res Function(_PasswordChanged) then) = __$PasswordChangedCopyWithImpl<$Res>;

  $Res call({String password});
}

/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res> extends _$ProfileEditingFormEventCopyWithImpl<$Res> implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(_PasswordChanged _value, $Res Function(_PasswordChanged) _then) : super(_value, (v) => _then(v as _PasswordChanged));

  @override
  _PasswordChanged get _value => super._value as _PasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_PasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'ProfileEditingFormEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PasswordChanged && (identical(other.password, password) || const DeepCollectionEquality().equals(other.password, password)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith => __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User userToEdit) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(File imageFile) imageChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String passwordConfirmation) passwordConfirmationChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(DateTime birthday) birthdayChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(KtSet<Tag> interests) interestsChanged,
    required TResult Function() submitted,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User userToEdit)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String passwordConfirmation)? passwordConfirmationChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(DateTime birthday)? birthdayChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(KtSet<Tag> interests)? interestsChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordConfirmationChanged value) passwordConfirmationChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_BirthdayChanged value) birthdayChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_InterestsChanged value) interestsChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)? passwordConfirmationChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_BirthdayChanged value)? birthdayChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_InterestsChanged value)? interestsChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements ProfileEditingFormEvent {
  const factory _PasswordChanged(String password) = _$_PasswordChanged;

  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordConfirmationChangedCopyWith<$Res> {
  factory _$PasswordConfirmationChangedCopyWith(_PasswordConfirmationChanged value, $Res Function(_PasswordConfirmationChanged) then) = __$PasswordConfirmationChangedCopyWithImpl<$Res>;

  $Res call({String passwordConfirmation});
}

/// @nodoc
class __$PasswordConfirmationChangedCopyWithImpl<$Res> extends _$ProfileEditingFormEventCopyWithImpl<$Res> implements _$PasswordConfirmationChangedCopyWith<$Res> {
  __$PasswordConfirmationChangedCopyWithImpl(_PasswordConfirmationChanged _value, $Res Function(_PasswordConfirmationChanged) _then) : super(_value, (v) => _then(v as _PasswordConfirmationChanged));

  @override
  _PasswordConfirmationChanged get _value => super._value as _PasswordConfirmationChanged;

  @override
  $Res call({
    Object? passwordConfirmation = freezed,
  }) {
    return _then(_PasswordConfirmationChanged(
      passwordConfirmation == freezed
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordConfirmationChanged implements _PasswordConfirmationChanged {
  const _$_PasswordConfirmationChanged(this.passwordConfirmation);

  @override
  final String passwordConfirmation;

  @override
  String toString() {
    return 'ProfileEditingFormEvent.passwordConfirmationChanged(passwordConfirmation: $passwordConfirmation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordConfirmationChanged &&
            (identical(other.passwordConfirmation, passwordConfirmation) || const DeepCollectionEquality().equals(other.passwordConfirmation, passwordConfirmation)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordConfirmation);

  @JsonKey(ignore: true)
  @override
  _$PasswordConfirmationChangedCopyWith<_PasswordConfirmationChanged> get copyWith => __$PasswordConfirmationChangedCopyWithImpl<_PasswordConfirmationChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User userToEdit) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(File imageFile) imageChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String passwordConfirmation) passwordConfirmationChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(DateTime birthday) birthdayChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(KtSet<Tag> interests) interestsChanged,
    required TResult Function() submitted,
  }) {
    return passwordConfirmationChanged(passwordConfirmation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User userToEdit)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String passwordConfirmation)? passwordConfirmationChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(DateTime birthday)? birthdayChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(KtSet<Tag> interests)? interestsChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (passwordConfirmationChanged != null) {
      return passwordConfirmationChanged(passwordConfirmation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordConfirmationChanged value) passwordConfirmationChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_BirthdayChanged value) birthdayChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_InterestsChanged value) interestsChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return passwordConfirmationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)? passwordConfirmationChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_BirthdayChanged value)? birthdayChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_InterestsChanged value)? interestsChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (passwordConfirmationChanged != null) {
      return passwordConfirmationChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordConfirmationChanged implements ProfileEditingFormEvent {
  const factory _PasswordConfirmationChanged(String passwordConfirmation) = _$_PasswordConfirmationChanged;

  String get passwordConfirmation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$PasswordConfirmationChangedCopyWith<_PasswordConfirmationChanged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmailAddressChangedCopyWith<$Res> {
  factory _$EmailAddressChangedCopyWith(_EmailAddressChanged value, $Res Function(_EmailAddressChanged) then) = __$EmailAddressChangedCopyWithImpl<$Res>;

  $Res call({String emailAddress});
}

/// @nodoc
class __$EmailAddressChangedCopyWithImpl<$Res> extends _$ProfileEditingFormEventCopyWithImpl<$Res> implements _$EmailAddressChangedCopyWith<$Res> {
  __$EmailAddressChangedCopyWithImpl(_EmailAddressChanged _value, $Res Function(_EmailAddressChanged) _then) : super(_value, (v) => _then(v as _EmailAddressChanged));

  @override
  _EmailAddressChanged get _value => super._value as _EmailAddressChanged;

  @override
  $Res call({
    Object? emailAddress = freezed,
  }) {
    return _then(_EmailAddressChanged(
      emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailAddressChanged implements _EmailAddressChanged {
  const _$_EmailAddressChanged(this.emailAddress);

  @override
  final String emailAddress;

  @override
  String toString() {
    return 'ProfileEditingFormEvent.emailAddressChanged(emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EmailAddressChanged && (identical(other.emailAddress, emailAddress) || const DeepCollectionEquality().equals(other.emailAddress, emailAddress)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailAddress);

  @JsonKey(ignore: true)
  @override
  _$EmailAddressChangedCopyWith<_EmailAddressChanged> get copyWith => __$EmailAddressChangedCopyWithImpl<_EmailAddressChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User userToEdit) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(File imageFile) imageChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String passwordConfirmation) passwordConfirmationChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(DateTime birthday) birthdayChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(KtSet<Tag> interests) interestsChanged,
    required TResult Function() submitted,
  }) {
    return emailAddressChanged(emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User userToEdit)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String passwordConfirmation)? passwordConfirmationChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(DateTime birthday)? birthdayChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(KtSet<Tag> interests)? interestsChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (emailAddressChanged != null) {
      return emailAddressChanged(emailAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordConfirmationChanged value) passwordConfirmationChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_BirthdayChanged value) birthdayChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_InterestsChanged value) interestsChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return emailAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)? passwordConfirmationChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_BirthdayChanged value)? birthdayChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_InterestsChanged value)? interestsChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (emailAddressChanged != null) {
      return emailAddressChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailAddressChanged implements ProfileEditingFormEvent {
  const factory _EmailAddressChanged(String emailAddress) = _$_EmailAddressChanged;

  String get emailAddress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$EmailAddressChangedCopyWith<_EmailAddressChanged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BirthdayChangedCopyWith<$Res> {
  factory _$BirthdayChangedCopyWith(_BirthdayChanged value, $Res Function(_BirthdayChanged) then) = __$BirthdayChangedCopyWithImpl<$Res>;

  $Res call({DateTime birthday});
}

/// @nodoc
class __$BirthdayChangedCopyWithImpl<$Res> extends _$ProfileEditingFormEventCopyWithImpl<$Res> implements _$BirthdayChangedCopyWith<$Res> {
  __$BirthdayChangedCopyWithImpl(_BirthdayChanged _value, $Res Function(_BirthdayChanged) _then) : super(_value, (v) => _then(v as _BirthdayChanged));

  @override
  _BirthdayChanged get _value => super._value as _BirthdayChanged;

  @override
  $Res call({
    Object? birthday = freezed,
  }) {
    return _then(_BirthdayChanged(
      birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_BirthdayChanged implements _BirthdayChanged {
  const _$_BirthdayChanged(this.birthday);

  @override
  final DateTime birthday;

  @override
  String toString() {
    return 'ProfileEditingFormEvent.birthdayChanged(birthday: $birthday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BirthdayChanged && (identical(other.birthday, birthday) || const DeepCollectionEquality().equals(other.birthday, birthday)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(birthday);

  @JsonKey(ignore: true)
  @override
  _$BirthdayChangedCopyWith<_BirthdayChanged> get copyWith => __$BirthdayChangedCopyWithImpl<_BirthdayChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User userToEdit) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(File imageFile) imageChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String passwordConfirmation) passwordConfirmationChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(DateTime birthday) birthdayChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(KtSet<Tag> interests) interestsChanged,
    required TResult Function() submitted,
  }) {
    return birthdayChanged(birthday);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User userToEdit)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String passwordConfirmation)? passwordConfirmationChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(DateTime birthday)? birthdayChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(KtSet<Tag> interests)? interestsChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (birthdayChanged != null) {
      return birthdayChanged(birthday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordConfirmationChanged value) passwordConfirmationChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_BirthdayChanged value) birthdayChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_InterestsChanged value) interestsChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return birthdayChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)? passwordConfirmationChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_BirthdayChanged value)? birthdayChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_InterestsChanged value)? interestsChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (birthdayChanged != null) {
      return birthdayChanged(this);
    }
    return orElse();
  }
}

abstract class _BirthdayChanged implements ProfileEditingFormEvent {
  const factory _BirthdayChanged(DateTime birthday) = _$_BirthdayChanged;

  DateTime get birthday => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$BirthdayChangedCopyWith<_BirthdayChanged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DescriptionChangedCopyWith<$Res> {
  factory _$DescriptionChangedCopyWith(_DescriptionChanged value, $Res Function(_DescriptionChanged) then) = __$DescriptionChangedCopyWithImpl<$Res>;

  $Res call({String description});
}

/// @nodoc
class __$DescriptionChangedCopyWithImpl<$Res> extends _$ProfileEditingFormEventCopyWithImpl<$Res> implements _$DescriptionChangedCopyWith<$Res> {
  __$DescriptionChangedCopyWithImpl(_DescriptionChanged _value, $Res Function(_DescriptionChanged) _then) : super(_value, (v) => _then(v as _DescriptionChanged));

  @override
  _DescriptionChanged get _value => super._value as _DescriptionChanged;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_DescriptionChanged(
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'ProfileEditingFormEvent.descriptionChanged(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DescriptionChanged && (identical(other.description, description) || const DeepCollectionEquality().equals(other.description, description)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith => __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User userToEdit) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(File imageFile) imageChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String passwordConfirmation) passwordConfirmationChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(DateTime birthday) birthdayChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(KtSet<Tag> interests) interestsChanged,
    required TResult Function() submitted,
  }) {
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User userToEdit)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String passwordConfirmation)? passwordConfirmationChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(DateTime birthday)? birthdayChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(KtSet<Tag> interests)? interestsChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordConfirmationChanged value) passwordConfirmationChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_BirthdayChanged value) birthdayChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_InterestsChanged value) interestsChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)? passwordConfirmationChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_BirthdayChanged value)? birthdayChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_InterestsChanged value)? interestsChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements ProfileEditingFormEvent {
  const factory _DescriptionChanged(String description) = _$_DescriptionChanged;

  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InterestsChangedCopyWith<$Res> {
  factory _$InterestsChangedCopyWith(_InterestsChanged value, $Res Function(_InterestsChanged) then) = __$InterestsChangedCopyWithImpl<$Res>;

  $Res call({KtSet<Tag> interests});
}

/// @nodoc
class __$InterestsChangedCopyWithImpl<$Res> extends _$ProfileEditingFormEventCopyWithImpl<$Res> implements _$InterestsChangedCopyWith<$Res> {
  __$InterestsChangedCopyWithImpl(_InterestsChanged _value, $Res Function(_InterestsChanged) _then) : super(_value, (v) => _then(v as _InterestsChanged));

  @override
  _InterestsChanged get _value => super._value as _InterestsChanged;

  @override
  $Res call({
    Object? interests = freezed,
  }) {
    return _then(_InterestsChanged(
      interests == freezed
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as KtSet<Tag>,
    ));
  }
}

/// @nodoc

class _$_InterestsChanged implements _InterestsChanged {
  const _$_InterestsChanged(this.interests);

  @override
  final KtSet<Tag> interests;

  @override
  String toString() {
    return 'ProfileEditingFormEvent.interestsChanged(interests: $interests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InterestsChanged && (identical(other.interests, interests) || const DeepCollectionEquality().equals(other.interests, interests)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(interests);

  @JsonKey(ignore: true)
  @override
  _$InterestsChangedCopyWith<_InterestsChanged> get copyWith => __$InterestsChangedCopyWithImpl<_InterestsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User userToEdit) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(File imageFile) imageChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String passwordConfirmation) passwordConfirmationChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(DateTime birthday) birthdayChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(KtSet<Tag> interests) interestsChanged,
    required TResult Function() submitted,
  }) {
    return interestsChanged(interests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User userToEdit)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String passwordConfirmation)? passwordConfirmationChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(DateTime birthday)? birthdayChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(KtSet<Tag> interests)? interestsChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (interestsChanged != null) {
      return interestsChanged(interests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordConfirmationChanged value) passwordConfirmationChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_BirthdayChanged value) birthdayChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_InterestsChanged value) interestsChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return interestsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)? passwordConfirmationChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_BirthdayChanged value)? birthdayChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_InterestsChanged value)? interestsChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (interestsChanged != null) {
      return interestsChanged(this);
    }
    return orElse();
  }
}

abstract class _InterestsChanged implements ProfileEditingFormEvent {
  const factory _InterestsChanged(KtSet<Tag> interests) = _$_InterestsChanged;

  KtSet<Tag> get interests => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$InterestsChangedCopyWith<_InterestsChanged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(_Submitted value, $Res Function(_Submitted) then) = __$SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmittedCopyWithImpl<$Res> extends _$ProfileEditingFormEventCopyWithImpl<$Res> implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(_Submitted _value, $Res Function(_Submitted) _then) : super(_value, (v) => _then(v as _Submitted));

  @override
  _Submitted get _value => super._value as _Submitted;
}

/// @nodoc

class _$_Submitted implements _Submitted {
  const _$_Submitted();

  @override
  String toString() {
    return 'ProfileEditingFormEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User userToEdit) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(File imageFile) imageChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String passwordConfirmation) passwordConfirmationChanged,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(DateTime birthday) birthdayChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(KtSet<Tag> interests) interestsChanged,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User userToEdit)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String passwordConfirmation)? passwordConfirmationChanged,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(DateTime birthday)? birthdayChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(KtSet<Tag> interests)? interestsChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordConfirmationChanged value) passwordConfirmationChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_BirthdayChanged value) birthdayChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_InterestsChanged value) interestsChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordConfirmationChanged value)? passwordConfirmationChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_BirthdayChanged value)? birthdayChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_InterestsChanged value)? interestsChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements ProfileEditingFormEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
class _$ProfileEditingFormStateTearOff {
  const _$ProfileEditingFormStateTearOff();

  _ProfileEditingFormState call(
      {required User user,
      required PasswordConfirmator passwordConfirmator,
      required String passwordToCompare,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<Failure, Unit>> failureOrSuccessOption}) {
    return _ProfileEditingFormState(
      user: user,
      passwordConfirmator: passwordConfirmator,
      passwordToCompare: passwordToCompare,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $ProfileEditingFormState = _$ProfileEditingFormStateTearOff();

/// @nodoc
mixin _$ProfileEditingFormState {
  User get user => throw _privateConstructorUsedError;

  PasswordConfirmator get passwordConfirmator => throw _privateConstructorUsedError;

  String get passwordToCompare => throw _privateConstructorUsedError;

  bool get showErrorMessages => throw _privateConstructorUsedError;

  bool get isSubmitting => throw _privateConstructorUsedError;

  Option<Either<Failure, Unit>> get failureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileEditingFormStateCopyWith<ProfileEditingFormState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEditingFormStateCopyWith<$Res> {
  factory $ProfileEditingFormStateCopyWith(ProfileEditingFormState value, $Res Function(ProfileEditingFormState) then) = _$ProfileEditingFormStateCopyWithImpl<$Res>;

  $Res call({User user, PasswordConfirmator passwordConfirmator, String passwordToCompare, bool showErrorMessages, bool isSubmitting, Option<Either<Failure, Unit>> failureOrSuccessOption});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ProfileEditingFormStateCopyWithImpl<$Res> implements $ProfileEditingFormStateCopyWith<$Res> {
  _$ProfileEditingFormStateCopyWithImpl(this._value, this._then);

  final ProfileEditingFormState _value;

  // ignore: unused_field
  final $Res Function(ProfileEditingFormState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? passwordConfirmator = freezed,
    Object? passwordToCompare = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      passwordConfirmator: passwordConfirmator == freezed
          ? _value.passwordConfirmator
          : passwordConfirmator // ignore: cast_nullable_to_non_nullable
              as PasswordConfirmator,
      passwordToCompare: passwordToCompare == freezed
          ? _value.passwordToCompare
          : passwordToCompare // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
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
abstract class _$ProfileEditingFormStateCopyWith<$Res> implements $ProfileEditingFormStateCopyWith<$Res> {
  factory _$ProfileEditingFormStateCopyWith(_ProfileEditingFormState value, $Res Function(_ProfileEditingFormState) then) = __$ProfileEditingFormStateCopyWithImpl<$Res>;

  @override
  $Res call({User user, PasswordConfirmator passwordConfirmator, String passwordToCompare, bool showErrorMessages, bool isSubmitting, Option<Either<Failure, Unit>> failureOrSuccessOption});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$ProfileEditingFormStateCopyWithImpl<$Res> extends _$ProfileEditingFormStateCopyWithImpl<$Res> implements _$ProfileEditingFormStateCopyWith<$Res> {
  __$ProfileEditingFormStateCopyWithImpl(_ProfileEditingFormState _value, $Res Function(_ProfileEditingFormState) _then) : super(_value, (v) => _then(v as _ProfileEditingFormState));

  @override
  _ProfileEditingFormState get _value => super._value as _ProfileEditingFormState;

  @override
  $Res call({
    Object? user = freezed,
    Object? passwordConfirmator = freezed,
    Object? passwordToCompare = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_ProfileEditingFormState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      passwordConfirmator: passwordConfirmator == freezed
          ? _value.passwordConfirmator
          : passwordConfirmator // ignore: cast_nullable_to_non_nullable
              as PasswordConfirmator,
      passwordToCompare: passwordToCompare == freezed
          ? _value.passwordToCompare
          : passwordToCompare // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ProfileEditingFormState implements _ProfileEditingFormState {
  const _$_ProfileEditingFormState(
      {required this.user, required this.passwordConfirmator, required this.passwordToCompare, required this.showErrorMessages, required this.isSubmitting, required this.failureOrSuccessOption});

  @override
  final User user;
  @override
  final PasswordConfirmator passwordConfirmator;
  @override
  final String passwordToCompare;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Failure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'ProfileEditingFormState(user: $user, passwordConfirmator: $passwordConfirmator, passwordToCompare: $passwordToCompare, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileEditingFormState &&
            (identical(other.user, user) || const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.passwordConfirmator, passwordConfirmator) || const DeepCollectionEquality().equals(other.passwordConfirmator, passwordConfirmator)) &&
            (identical(other.passwordToCompare, passwordToCompare) || const DeepCollectionEquality().equals(other.passwordToCompare, passwordToCompare)) &&
            (identical(other.showErrorMessages, showErrorMessages) || const DeepCollectionEquality().equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) || const DeepCollectionEquality().equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) || const DeepCollectionEquality().equals(other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(passwordConfirmator) ^
      const DeepCollectionEquality().hash(passwordToCompare) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);
  
  @JsonKey(ignore: true)
  @override
  _$ProfileEditingFormStateCopyWith<_ProfileEditingFormState> get copyWith => __$ProfileEditingFormStateCopyWithImpl<_ProfileEditingFormState>(this, _$identity);
}

abstract class _ProfileEditingFormState implements ProfileEditingFormState {
  const factory _ProfileEditingFormState(
      {required User user,
      required PasswordConfirmator passwordConfirmator,
      required String passwordToCompare,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<Failure, Unit>> failureOrSuccessOption}) = _$_ProfileEditingFormState;

  @override
  User get user => throw _privateConstructorUsedError;

  @override
  PasswordConfirmator get passwordConfirmator => throw _privateConstructorUsedError;

  @override
  String get passwordToCompare => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;

  @override
  Option<Either<Failure, Unit>> get failureOrSuccessOption => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$ProfileEditingFormStateCopyWith<_ProfileEditingFormState> get copyWith => throw _privateConstructorUsedError;
}
