// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profile_editing_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProfileEditingFormEventTearOff {
  const _$ProfileEditingFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(User userToEdit) {
    return _Initialized(
      userToEdit,
    );
  }

// ignore: unused_element
  _NameChanged nameChanged(String name) {
    return _NameChanged(
      name,
    );
  }

// ignore: unused_element
  _ImageChanged imageChanged(File imageFile) {
    return _ImageChanged(
      imageFile,
    );
  }

// ignore: unused_element
  _UsernameChanged usernameChanged(String username) {
    return _UsernameChanged(
      username,
    );
  }

// ignore: unused_element
  _PasswordChanged passwordChanged(String password) {
    return _PasswordChanged(
      password,
    );
  }

// ignore: unused_element
  _PasswordConfirmationChanged passwordConfirmationChanged(String passwordConfirmation) {
    return _PasswordConfirmationChanged(
      passwordConfirmation,
    );
  }

// ignore: unused_element
  _EmailAddressChanged emailAddressChanged(String emailAddress) {
    return _EmailAddressChanged(
      emailAddress,
    );
  }

// ignore: unused_element
  _BirthdayChanged birthdayChanged(DateTime birthday) {
    return _BirthdayChanged(
      birthday,
    );
  }

// ignore: unused_element
  _DescriptionChanged descriptionChanged(String description) {
    return _DescriptionChanged(
      description,
    );
  }

// ignore: unused_element
  _InterestsChanged interestsChanged(Set<Tag> interests) {
    return _InterestsChanged(
      interests,
    );
  }

// ignore: unused_element
  _Submitted submitted() {
    return const _Submitted();
  }
}

// ignore: unused_element
const $ProfileEditingFormEvent = _$ProfileEditingFormEventTearOff();

mixin _$ProfileEditingFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(User userToEdit),
    @required Result nameChanged(String name),
    @required Result imageChanged(File imageFile),
    @required Result usernameChanged(String username),
    @required Result passwordChanged(String password),
    @required Result passwordConfirmationChanged(String passwordConfirmation),
    @required Result emailAddressChanged(String emailAddress),
    @required Result birthdayChanged(DateTime birthday),
    @required Result descriptionChanged(String description),
    @required Result interestsChanged(Set<Tag> interests),
    @required Result submitted(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User userToEdit),
    Result nameChanged(String name),
    Result imageChanged(File imageFile),
    Result usernameChanged(String username),
    Result passwordChanged(String password),
    Result passwordConfirmationChanged(String passwordConfirmation),
    Result emailAddressChanged(String emailAddress),
    Result birthdayChanged(DateTime birthday),
    Result descriptionChanged(String description),
    Result interestsChanged(Set<Tag> interests),
    Result submitted(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result imageChanged(_ImageChanged value),
    @required Result usernameChanged(_UsernameChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result passwordConfirmationChanged(_PasswordConfirmationChanged value),
    @required Result emailAddressChanged(_EmailAddressChanged value),
    @required Result birthdayChanged(_BirthdayChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result interestsChanged(_InterestsChanged value),
    @required Result submitted(_Submitted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result imageChanged(_ImageChanged value),
    Result usernameChanged(_UsernameChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result passwordConfirmationChanged(_PasswordConfirmationChanged value),
    Result emailAddressChanged(_EmailAddressChanged value),
    Result birthdayChanged(_BirthdayChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result interestsChanged(_InterestsChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  });
}

abstract class $ProfileEditingFormEventCopyWith<$Res> {
  factory $ProfileEditingFormEventCopyWith(ProfileEditingFormEvent value, $Res Function(ProfileEditingFormEvent) then) = _$ProfileEditingFormEventCopyWithImpl<$Res>;
}

class _$ProfileEditingFormEventCopyWithImpl<$Res> implements $ProfileEditingFormEventCopyWith<$Res> {
  _$ProfileEditingFormEventCopyWithImpl(this._value, this._then);

  final ProfileEditingFormEvent _value;

  // ignore: unused_field
  final $Res Function(ProfileEditingFormEvent) _then;
}

abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(_Initialized value, $Res Function(_Initialized) then) = __$InitializedCopyWithImpl<$Res>;

  $Res call({User userToEdit});

  $UserCopyWith<$Res> get userToEdit;
}

class __$InitializedCopyWithImpl<$Res> extends _$ProfileEditingFormEventCopyWithImpl<$Res> implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(_Initialized _value, $Res Function(_Initialized) _then) : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object userToEdit = freezed,
  }) {
    return _then(_Initialized(
      userToEdit == freezed ? _value.userToEdit : userToEdit as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get userToEdit {
    if (_value.userToEdit == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.userToEdit, (value) {
      return _then(_value.copyWith(userToEdit: value));
    });
  }
}

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.userToEdit) : assert(userToEdit != null);

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

  @override
  _$InitializedCopyWith<_Initialized> get copyWith => __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(User userToEdit),
    @required Result nameChanged(String name),
    @required Result imageChanged(File imageFile),
    @required Result usernameChanged(String username),
    @required Result passwordChanged(String password),
    @required Result passwordConfirmationChanged(String passwordConfirmation),
    @required Result emailAddressChanged(String emailAddress),
    @required Result birthdayChanged(DateTime birthday),
    @required Result descriptionChanged(String description),
    @required Result interestsChanged(Set<Tag> interests),
    @required Result submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(emailAddressChanged != null);
    assert(birthdayChanged != null);
    assert(descriptionChanged != null);
    assert(interestsChanged != null);
    assert(submitted != null);
    return initialized(userToEdit);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User userToEdit),
    Result nameChanged(String name),
    Result imageChanged(File imageFile),
    Result usernameChanged(String username),
    Result passwordChanged(String password),
    Result passwordConfirmationChanged(String passwordConfirmation),
    Result emailAddressChanged(String emailAddress),
    Result birthdayChanged(DateTime birthday),
    Result descriptionChanged(String description),
    Result interestsChanged(Set<Tag> interests),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(userToEdit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result imageChanged(_ImageChanged value),
    @required Result usernameChanged(_UsernameChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result passwordConfirmationChanged(_PasswordConfirmationChanged value),
    @required Result emailAddressChanged(_EmailAddressChanged value),
    @required Result birthdayChanged(_BirthdayChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result interestsChanged(_InterestsChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(emailAddressChanged != null);
    assert(birthdayChanged != null);
    assert(descriptionChanged != null);
    assert(interestsChanged != null);
    assert(submitted != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result imageChanged(_ImageChanged value),
    Result usernameChanged(_UsernameChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result passwordConfirmationChanged(_PasswordConfirmationChanged value),
    Result emailAddressChanged(_EmailAddressChanged value),
    Result birthdayChanged(_BirthdayChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result interestsChanged(_InterestsChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ProfileEditingFormEvent {
  const factory _Initialized(User userToEdit) = _$_Initialized;

  User get userToEdit;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(_NameChanged value, $Res Function(_NameChanged) then) = __$NameChangedCopyWithImpl<$Res>;

  $Res call({String name});
}

class __$NameChangedCopyWithImpl<$Res> extends _$ProfileEditingFormEventCopyWithImpl<$Res> implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(_NameChanged _value, $Res Function(_NameChanged) _then) : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_NameChanged(
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.name) : assert(name != null);

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

  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith => __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(User userToEdit),
    @required Result nameChanged(String name),
    @required Result imageChanged(File imageFile),
    @required Result usernameChanged(String username),
    @required Result passwordChanged(String password),
    @required Result passwordConfirmationChanged(String passwordConfirmation),
    @required Result emailAddressChanged(String emailAddress),
    @required Result birthdayChanged(DateTime birthday),
    @required Result descriptionChanged(String description),
    @required Result interestsChanged(Set<Tag> interests),
    @required Result submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(emailAddressChanged != null);
    assert(birthdayChanged != null);
    assert(descriptionChanged != null);
    assert(interestsChanged != null);
    assert(submitted != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User userToEdit),
    Result nameChanged(String name),
    Result imageChanged(File imageFile),
    Result usernameChanged(String username),
    Result passwordChanged(String password),
    Result passwordConfirmationChanged(String passwordConfirmation),
    Result emailAddressChanged(String emailAddress),
    Result birthdayChanged(DateTime birthday),
    Result descriptionChanged(String description),
    Result interestsChanged(Set<Tag> interests),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result imageChanged(_ImageChanged value),
    @required Result usernameChanged(_UsernameChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result passwordConfirmationChanged(_PasswordConfirmationChanged value),
    @required Result emailAddressChanged(_EmailAddressChanged value),
    @required Result birthdayChanged(_BirthdayChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result interestsChanged(_InterestsChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(emailAddressChanged != null);
    assert(birthdayChanged != null);
    assert(descriptionChanged != null);
    assert(interestsChanged != null);
    assert(submitted != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result imageChanged(_ImageChanged value),
    Result usernameChanged(_UsernameChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result passwordConfirmationChanged(_PasswordConfirmationChanged value),
    Result emailAddressChanged(_EmailAddressChanged value),
    Result birthdayChanged(_BirthdayChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result interestsChanged(_InterestsChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements ProfileEditingFormEvent {
  const factory _NameChanged(String name) = _$_NameChanged;

  String get name;
  _$NameChangedCopyWith<_NameChanged> get copyWith;
}

abstract class _$ImageChangedCopyWith<$Res> {
  factory _$ImageChangedCopyWith(_ImageChanged value, $Res Function(_ImageChanged) then) = __$ImageChangedCopyWithImpl<$Res>;

  $Res call({File imageFile});
}

class __$ImageChangedCopyWithImpl<$Res> extends _$ProfileEditingFormEventCopyWithImpl<$Res> implements _$ImageChangedCopyWith<$Res> {
  __$ImageChangedCopyWithImpl(_ImageChanged _value, $Res Function(_ImageChanged) _then) : super(_value, (v) => _then(v as _ImageChanged));

  @override
  _ImageChanged get _value => super._value as _ImageChanged;

  @override
  $Res call({
    Object imageFile = freezed,
  }) {
    return _then(_ImageChanged(
      imageFile == freezed ? _value.imageFile : imageFile as File,
    ));
  }
}

class _$_ImageChanged implements _ImageChanged {
  const _$_ImageChanged(this.imageFile) : assert(imageFile != null);

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

  @override
  _$ImageChangedCopyWith<_ImageChanged> get copyWith => __$ImageChangedCopyWithImpl<_ImageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(User userToEdit),
    @required Result nameChanged(String name),
    @required Result imageChanged(File imageFile),
    @required Result usernameChanged(String username),
    @required Result passwordChanged(String password),
    @required Result passwordConfirmationChanged(String passwordConfirmation),
    @required Result emailAddressChanged(String emailAddress),
    @required Result birthdayChanged(DateTime birthday),
    @required Result descriptionChanged(String description),
    @required Result interestsChanged(Set<Tag> interests),
    @required Result submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(emailAddressChanged != null);
    assert(birthdayChanged != null);
    assert(descriptionChanged != null);
    assert(interestsChanged != null);
    assert(submitted != null);
    return imageChanged(imageFile);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User userToEdit),
    Result nameChanged(String name),
    Result imageChanged(File imageFile),
    Result usernameChanged(String username),
    Result passwordChanged(String password),
    Result passwordConfirmationChanged(String passwordConfirmation),
    Result emailAddressChanged(String emailAddress),
    Result birthdayChanged(DateTime birthday),
    Result descriptionChanged(String description),
    Result interestsChanged(Set<Tag> interests),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageChanged != null) {
      return imageChanged(imageFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result imageChanged(_ImageChanged value),
    @required Result usernameChanged(_UsernameChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result passwordConfirmationChanged(_PasswordConfirmationChanged value),
    @required Result emailAddressChanged(_EmailAddressChanged value),
    @required Result birthdayChanged(_BirthdayChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result interestsChanged(_InterestsChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(emailAddressChanged != null);
    assert(birthdayChanged != null);
    assert(descriptionChanged != null);
    assert(interestsChanged != null);
    assert(submitted != null);
    return imageChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result imageChanged(_ImageChanged value),
    Result usernameChanged(_UsernameChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result passwordConfirmationChanged(_PasswordConfirmationChanged value),
    Result emailAddressChanged(_EmailAddressChanged value),
    Result birthdayChanged(_BirthdayChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result interestsChanged(_InterestsChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageChanged != null) {
      return imageChanged(this);
    }
    return orElse();
  }
}

abstract class _ImageChanged implements ProfileEditingFormEvent {
  const factory _ImageChanged(File imageFile) = _$_ImageChanged;

  File get imageFile;
  _$ImageChangedCopyWith<_ImageChanged> get copyWith;
}

abstract class _$UsernameChangedCopyWith<$Res> {
  factory _$UsernameChangedCopyWith(_UsernameChanged value, $Res Function(_UsernameChanged) then) = __$UsernameChangedCopyWithImpl<$Res>;

  $Res call({String username});
}

class __$UsernameChangedCopyWithImpl<$Res> extends _$ProfileEditingFormEventCopyWithImpl<$Res> implements _$UsernameChangedCopyWith<$Res> {
  __$UsernameChangedCopyWithImpl(_UsernameChanged _value, $Res Function(_UsernameChanged) _then) : super(_value, (v) => _then(v as _UsernameChanged));

  @override
  _UsernameChanged get _value => super._value as _UsernameChanged;

  @override
  $Res call({
    Object username = freezed,
  }) {
    return _then(_UsernameChanged(
      username == freezed ? _value.username : username as String,
    ));
  }
}

class _$_UsernameChanged implements _UsernameChanged {
  const _$_UsernameChanged(this.username) : assert(username != null);

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

  @override
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith => __$UsernameChangedCopyWithImpl<_UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(User userToEdit),
    @required Result nameChanged(String name),
    @required Result imageChanged(File imageFile),
    @required Result usernameChanged(String username),
    @required Result passwordChanged(String password),
    @required Result passwordConfirmationChanged(String passwordConfirmation),
    @required Result emailAddressChanged(String emailAddress),
    @required Result birthdayChanged(DateTime birthday),
    @required Result descriptionChanged(String description),
    @required Result interestsChanged(Set<Tag> interests),
    @required Result submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(emailAddressChanged != null);
    assert(birthdayChanged != null);
    assert(descriptionChanged != null);
    assert(interestsChanged != null);
    assert(submitted != null);
    return usernameChanged(username);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User userToEdit),
    Result nameChanged(String name),
    Result imageChanged(File imageFile),
    Result usernameChanged(String username),
    Result passwordChanged(String password),
    Result passwordConfirmationChanged(String passwordConfirmation),
    Result emailAddressChanged(String emailAddress),
    Result birthdayChanged(DateTime birthday),
    Result descriptionChanged(String description),
    Result interestsChanged(Set<Tag> interests),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result imageChanged(_ImageChanged value),
    @required Result usernameChanged(_UsernameChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result passwordConfirmationChanged(_PasswordConfirmationChanged value),
    @required Result emailAddressChanged(_EmailAddressChanged value),
    @required Result birthdayChanged(_BirthdayChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result interestsChanged(_InterestsChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(emailAddressChanged != null);
    assert(birthdayChanged != null);
    assert(descriptionChanged != null);
    assert(interestsChanged != null);
    assert(submitted != null);
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result imageChanged(_ImageChanged value),
    Result usernameChanged(_UsernameChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result passwordConfirmationChanged(_PasswordConfirmationChanged value),
    Result emailAddressChanged(_EmailAddressChanged value),
    Result birthdayChanged(_BirthdayChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result interestsChanged(_InterestsChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChanged implements ProfileEditingFormEvent {
  const factory _UsernameChanged(String username) = _$_UsernameChanged;

  String get username;
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith;
}

abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(_PasswordChanged value, $Res Function(_PasswordChanged) then) = __$PasswordChangedCopyWithImpl<$Res>;

  $Res call({String password});
}

class __$PasswordChangedCopyWithImpl<$Res> extends _$ProfileEditingFormEventCopyWithImpl<$Res> implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(_PasswordChanged _value, $Res Function(_PasswordChanged) _then) : super(_value, (v) => _then(v as _PasswordChanged));

  @override
  _PasswordChanged get _value => super._value as _PasswordChanged;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(_PasswordChanged(
      password == freezed ? _value.password : password as String,
    ));
  }
}

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.password) : assert(password != null);

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

  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith => __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(User userToEdit),
    @required Result nameChanged(String name),
    @required Result imageChanged(File imageFile),
    @required Result usernameChanged(String username),
    @required Result passwordChanged(String password),
    @required Result passwordConfirmationChanged(String passwordConfirmation),
    @required Result emailAddressChanged(String emailAddress),
    @required Result birthdayChanged(DateTime birthday),
    @required Result descriptionChanged(String description),
    @required Result interestsChanged(Set<Tag> interests),
    @required Result submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(emailAddressChanged != null);
    assert(birthdayChanged != null);
    assert(descriptionChanged != null);
    assert(interestsChanged != null);
    assert(submitted != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User userToEdit),
    Result nameChanged(String name),
    Result imageChanged(File imageFile),
    Result usernameChanged(String username),
    Result passwordChanged(String password),
    Result passwordConfirmationChanged(String passwordConfirmation),
    Result emailAddressChanged(String emailAddress),
    Result birthdayChanged(DateTime birthday),
    Result descriptionChanged(String description),
    Result interestsChanged(Set<Tag> interests),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result imageChanged(_ImageChanged value),
    @required Result usernameChanged(_UsernameChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result passwordConfirmationChanged(_PasswordConfirmationChanged value),
    @required Result emailAddressChanged(_EmailAddressChanged value),
    @required Result birthdayChanged(_BirthdayChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result interestsChanged(_InterestsChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(emailAddressChanged != null);
    assert(birthdayChanged != null);
    assert(descriptionChanged != null);
    assert(interestsChanged != null);
    assert(submitted != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result imageChanged(_ImageChanged value),
    Result usernameChanged(_UsernameChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result passwordConfirmationChanged(_PasswordConfirmationChanged value),
    Result emailAddressChanged(_EmailAddressChanged value),
    Result birthdayChanged(_BirthdayChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result interestsChanged(_InterestsChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements ProfileEditingFormEvent {
  const factory _PasswordChanged(String password) = _$_PasswordChanged;

  String get password;
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith;
}

abstract class _$PasswordConfirmationChangedCopyWith<$Res> {
  factory _$PasswordConfirmationChangedCopyWith(_PasswordConfirmationChanged value, $Res Function(_PasswordConfirmationChanged) then) = __$PasswordConfirmationChangedCopyWithImpl<$Res>;

  $Res call({String passwordConfirmation});
}

class __$PasswordConfirmationChangedCopyWithImpl<$Res> extends _$ProfileEditingFormEventCopyWithImpl<$Res> implements _$PasswordConfirmationChangedCopyWith<$Res> {
  __$PasswordConfirmationChangedCopyWithImpl(_PasswordConfirmationChanged _value, $Res Function(_PasswordConfirmationChanged) _then) : super(_value, (v) => _then(v as _PasswordConfirmationChanged));

  @override
  _PasswordConfirmationChanged get _value => super._value as _PasswordConfirmationChanged;

  @override
  $Res call({
    Object passwordConfirmation = freezed,
  }) {
    return _then(_PasswordConfirmationChanged(
      passwordConfirmation == freezed ? _value.passwordConfirmation : passwordConfirmation as String,
    ));
  }
}

class _$_PasswordConfirmationChanged implements _PasswordConfirmationChanged {
  const _$_PasswordConfirmationChanged(this.passwordConfirmation) : assert(passwordConfirmation != null);

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

  @override
  _$PasswordConfirmationChangedCopyWith<_PasswordConfirmationChanged> get copyWith => __$PasswordConfirmationChangedCopyWithImpl<_PasswordConfirmationChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(User userToEdit),
    @required Result nameChanged(String name),
    @required Result imageChanged(File imageFile),
    @required Result usernameChanged(String username),
    @required Result passwordChanged(String password),
    @required Result passwordConfirmationChanged(String passwordConfirmation),
    @required Result emailAddressChanged(String emailAddress),
    @required Result birthdayChanged(DateTime birthday),
    @required Result descriptionChanged(String description),
    @required Result interestsChanged(Set<Tag> interests),
    @required Result submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(emailAddressChanged != null);
    assert(birthdayChanged != null);
    assert(descriptionChanged != null);
    assert(interestsChanged != null);
    assert(submitted != null);
    return passwordConfirmationChanged(passwordConfirmation);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User userToEdit),
    Result nameChanged(String name),
    Result imageChanged(File imageFile),
    Result usernameChanged(String username),
    Result passwordChanged(String password),
    Result passwordConfirmationChanged(String passwordConfirmation),
    Result emailAddressChanged(String emailAddress),
    Result birthdayChanged(DateTime birthday),
    Result descriptionChanged(String description),
    Result interestsChanged(Set<Tag> interests),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordConfirmationChanged != null) {
      return passwordConfirmationChanged(passwordConfirmation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result imageChanged(_ImageChanged value),
    @required Result usernameChanged(_UsernameChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result passwordConfirmationChanged(_PasswordConfirmationChanged value),
    @required Result emailAddressChanged(_EmailAddressChanged value),
    @required Result birthdayChanged(_BirthdayChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result interestsChanged(_InterestsChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(emailAddressChanged != null);
    assert(birthdayChanged != null);
    assert(descriptionChanged != null);
    assert(interestsChanged != null);
    assert(submitted != null);
    return passwordConfirmationChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result imageChanged(_ImageChanged value),
    Result usernameChanged(_UsernameChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result passwordConfirmationChanged(_PasswordConfirmationChanged value),
    Result emailAddressChanged(_EmailAddressChanged value),
    Result birthdayChanged(_BirthdayChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result interestsChanged(_InterestsChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordConfirmationChanged != null) {
      return passwordConfirmationChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordConfirmationChanged implements ProfileEditingFormEvent {
  const factory _PasswordConfirmationChanged(String passwordConfirmation) = _$_PasswordConfirmationChanged;

  String get passwordConfirmation;

  _$PasswordConfirmationChangedCopyWith<_PasswordConfirmationChanged> get copyWith;
}

abstract class _$EmailAddressChangedCopyWith<$Res> {
  factory _$EmailAddressChangedCopyWith(_EmailAddressChanged value, $Res Function(_EmailAddressChanged) then) = __$EmailAddressChangedCopyWithImpl<$Res>;
  $Res call({String emailAddress});
}

class __$EmailAddressChangedCopyWithImpl<$Res> extends _$ProfileEditingFormEventCopyWithImpl<$Res> implements _$EmailAddressChangedCopyWith<$Res> {
  __$EmailAddressChangedCopyWithImpl(_EmailAddressChanged _value, $Res Function(_EmailAddressChanged) _then) : super(_value, (v) => _then(v as _EmailAddressChanged));

  @override
  _EmailAddressChanged get _value => super._value as _EmailAddressChanged;

  @override
  $Res call({
    Object emailAddress = freezed,
  }) {
    return _then(_EmailAddressChanged(
      emailAddress == freezed ? _value.emailAddress : emailAddress as String,
    ));
  }
}

class _$_EmailAddressChanged implements _EmailAddressChanged {
  const _$_EmailAddressChanged(this.emailAddress) : assert(emailAddress != null);

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

  @override
  _$EmailAddressChangedCopyWith<_EmailAddressChanged> get copyWith => __$EmailAddressChangedCopyWithImpl<_EmailAddressChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(User userToEdit),
    @required Result nameChanged(String name),
    @required Result imageChanged(File imageFile),
    @required Result usernameChanged(String username),
    @required Result passwordChanged(String password),
    @required Result passwordConfirmationChanged(String passwordConfirmation),
    @required Result emailAddressChanged(String emailAddress),
    @required Result birthdayChanged(DateTime birthday),
    @required Result descriptionChanged(String description),
    @required Result interestsChanged(Set<Tag> interests),
    @required Result submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(emailAddressChanged != null);
    assert(birthdayChanged != null);
    assert(descriptionChanged != null);
    assert(interestsChanged != null);
    assert(submitted != null);
    return emailAddressChanged(emailAddress);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User userToEdit),
    Result nameChanged(String name),
    Result imageChanged(File imageFile),
    Result usernameChanged(String username),
    Result passwordChanged(String password),
    Result passwordConfirmationChanged(String passwordConfirmation),
    Result emailAddressChanged(String emailAddress),
    Result birthdayChanged(DateTime birthday),
    Result descriptionChanged(String description),
    Result interestsChanged(Set<Tag> interests),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAddressChanged != null) {
      return emailAddressChanged(emailAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result imageChanged(_ImageChanged value),
    @required Result usernameChanged(_UsernameChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result passwordConfirmationChanged(_PasswordConfirmationChanged value),
    @required Result emailAddressChanged(_EmailAddressChanged value),
    @required Result birthdayChanged(_BirthdayChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result interestsChanged(_InterestsChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(emailAddressChanged != null);
    assert(birthdayChanged != null);
    assert(descriptionChanged != null);
    assert(interestsChanged != null);
    assert(submitted != null);
    return emailAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result imageChanged(_ImageChanged value),
    Result usernameChanged(_UsernameChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result passwordConfirmationChanged(_PasswordConfirmationChanged value),
    Result emailAddressChanged(_EmailAddressChanged value),
    Result birthdayChanged(_BirthdayChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result interestsChanged(_InterestsChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAddressChanged != null) {
      return emailAddressChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailAddressChanged implements ProfileEditingFormEvent {
  const factory _EmailAddressChanged(String emailAddress) = _$_EmailAddressChanged;

  String get emailAddress;

  _$EmailAddressChangedCopyWith<_EmailAddressChanged> get copyWith;
}

abstract class _$BirthdayChangedCopyWith<$Res> {
  factory _$BirthdayChangedCopyWith(_BirthdayChanged value, $Res Function(_BirthdayChanged) then) = __$BirthdayChangedCopyWithImpl<$Res>;

  $Res call({DateTime birthday});
}

class __$BirthdayChangedCopyWithImpl<$Res> extends _$ProfileEditingFormEventCopyWithImpl<$Res> implements _$BirthdayChangedCopyWith<$Res> {
  __$BirthdayChangedCopyWithImpl(_BirthdayChanged _value, $Res Function(_BirthdayChanged) _then) : super(_value, (v) => _then(v as _BirthdayChanged));

  @override
  _BirthdayChanged get _value => super._value as _BirthdayChanged;

  @override
  $Res call({
    Object birthday = freezed,
  }) {
    return _then(_BirthdayChanged(
      birthday == freezed ? _value.birthday : birthday as DateTime,
    ));
  }
}

class _$_BirthdayChanged implements _BirthdayChanged {
  const _$_BirthdayChanged(this.birthday) : assert(birthday != null);

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

  @override
  _$BirthdayChangedCopyWith<_BirthdayChanged> get copyWith => __$BirthdayChangedCopyWithImpl<_BirthdayChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(User userToEdit),
    @required Result nameChanged(String name),
    @required Result imageChanged(File imageFile),
    @required Result usernameChanged(String username),
    @required Result passwordChanged(String password),
    @required Result passwordConfirmationChanged(String passwordConfirmation),
    @required Result emailAddressChanged(String emailAddress),
    @required Result birthdayChanged(DateTime birthday),
    @required Result descriptionChanged(String description),
    @required Result interestsChanged(Set<Tag> interests),
    @required Result submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(emailAddressChanged != null);
    assert(birthdayChanged != null);
    assert(descriptionChanged != null);
    assert(interestsChanged != null);
    assert(submitted != null);
    return birthdayChanged(birthday);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User userToEdit),
    Result nameChanged(String name),
    Result imageChanged(File imageFile),
    Result usernameChanged(String username),
    Result passwordChanged(String password),
    Result passwordConfirmationChanged(String passwordConfirmation),
    Result emailAddressChanged(String emailAddress),
    Result birthdayChanged(DateTime birthday),
    Result descriptionChanged(String description),
    Result interestsChanged(Set<Tag> interests),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (birthdayChanged != null) {
      return birthdayChanged(birthday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result imageChanged(_ImageChanged value),
    @required Result usernameChanged(_UsernameChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result passwordConfirmationChanged(_PasswordConfirmationChanged value),
    @required Result emailAddressChanged(_EmailAddressChanged value),
    @required Result birthdayChanged(_BirthdayChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result interestsChanged(_InterestsChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(emailAddressChanged != null);
    assert(birthdayChanged != null);
    assert(descriptionChanged != null);
    assert(interestsChanged != null);
    assert(submitted != null);
    return birthdayChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result imageChanged(_ImageChanged value),
    Result usernameChanged(_UsernameChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result passwordConfirmationChanged(_PasswordConfirmationChanged value),
    Result emailAddressChanged(_EmailAddressChanged value),
    Result birthdayChanged(_BirthdayChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result interestsChanged(_InterestsChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (birthdayChanged != null) {
      return birthdayChanged(this);
    }
    return orElse();
  }
}

abstract class _BirthdayChanged implements ProfileEditingFormEvent {
  const factory _BirthdayChanged(DateTime birthday) = _$_BirthdayChanged;

  DateTime get birthday;
  _$BirthdayChangedCopyWith<_BirthdayChanged> get copyWith;
}

abstract class _$DescriptionChangedCopyWith<$Res> {
  factory _$DescriptionChangedCopyWith(_DescriptionChanged value, $Res Function(_DescriptionChanged) then) = __$DescriptionChangedCopyWithImpl<$Res>;

  $Res call({String description});
}

class __$DescriptionChangedCopyWithImpl<$Res> extends _$ProfileEditingFormEventCopyWithImpl<$Res> implements _$DescriptionChangedCopyWith<$Res> {
  __$DescriptionChangedCopyWithImpl(_DescriptionChanged _value, $Res Function(_DescriptionChanged) _then) : super(_value, (v) => _then(v as _DescriptionChanged));

  @override
  _DescriptionChanged get _value => super._value as _DescriptionChanged;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(_DescriptionChanged(
      description == freezed ? _value.description : description as String,
    ));
  }
}

class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.description) : assert(description != null);

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

  @override
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith => __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(User userToEdit),
    @required Result nameChanged(String name),
    @required Result imageChanged(File imageFile),
    @required Result usernameChanged(String username),
    @required Result passwordChanged(String password),
    @required Result passwordConfirmationChanged(String passwordConfirmation),
    @required Result emailAddressChanged(String emailAddress),
    @required Result birthdayChanged(DateTime birthday),
    @required Result descriptionChanged(String description),
    @required Result interestsChanged(Set<Tag> interests),
    @required Result submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(emailAddressChanged != null);
    assert(birthdayChanged != null);
    assert(descriptionChanged != null);
    assert(interestsChanged != null);
    assert(submitted != null);
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User userToEdit),
    Result nameChanged(String name),
    Result imageChanged(File imageFile),
    Result usernameChanged(String username),
    Result passwordChanged(String password),
    Result passwordConfirmationChanged(String passwordConfirmation),
    Result emailAddressChanged(String emailAddress),
    Result birthdayChanged(DateTime birthday),
    Result descriptionChanged(String description),
    Result interestsChanged(Set<Tag> interests),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result imageChanged(_ImageChanged value),
    @required Result usernameChanged(_UsernameChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result passwordConfirmationChanged(_PasswordConfirmationChanged value),
    @required Result emailAddressChanged(_EmailAddressChanged value),
    @required Result birthdayChanged(_BirthdayChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result interestsChanged(_InterestsChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(emailAddressChanged != null);
    assert(birthdayChanged != null);
    assert(descriptionChanged != null);
    assert(interestsChanged != null);
    assert(submitted != null);
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result imageChanged(_ImageChanged value),
    Result usernameChanged(_UsernameChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result passwordConfirmationChanged(_PasswordConfirmationChanged value),
    Result emailAddressChanged(_EmailAddressChanged value),
    Result birthdayChanged(_BirthdayChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result interestsChanged(_InterestsChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements ProfileEditingFormEvent {
  const factory _DescriptionChanged(String description) = _$_DescriptionChanged;

  String get description;
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith;
}

abstract class _$InterestsChangedCopyWith<$Res> {
  factory _$InterestsChangedCopyWith(_InterestsChanged value, $Res Function(_InterestsChanged) then) = __$InterestsChangedCopyWithImpl<$Res>;

  $Res call({Set<Tag> interests});
}

class __$InterestsChangedCopyWithImpl<$Res> extends _$ProfileEditingFormEventCopyWithImpl<$Res> implements _$InterestsChangedCopyWith<$Res> {
  __$InterestsChangedCopyWithImpl(_InterestsChanged _value, $Res Function(_InterestsChanged) _then) : super(_value, (v) => _then(v as _InterestsChanged));

  @override
  _InterestsChanged get _value => super._value as _InterestsChanged;

  @override
  $Res call({
    Object interests = freezed,
  }) {
    return _then(_InterestsChanged(
      interests == freezed ? _value.interests : interests as Set<Tag>,
    ));
  }
}

class _$_InterestsChanged implements _InterestsChanged {
  const _$_InterestsChanged(this.interests) : assert(interests != null);

  @override
  final Set<Tag> interests;

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

  @override
  _$InterestsChangedCopyWith<_InterestsChanged> get copyWith => __$InterestsChangedCopyWithImpl<_InterestsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(User userToEdit),
    @required Result nameChanged(String name),
    @required Result imageChanged(File imageFile),
    @required Result usernameChanged(String username),
    @required Result passwordChanged(String password),
    @required Result passwordConfirmationChanged(String passwordConfirmation),
    @required Result emailAddressChanged(String emailAddress),
    @required Result birthdayChanged(DateTime birthday),
    @required Result descriptionChanged(String description),
    @required Result interestsChanged(Set<Tag> interests),
    @required Result submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(emailAddressChanged != null);
    assert(birthdayChanged != null);
    assert(descriptionChanged != null);
    assert(interestsChanged != null);
    assert(submitted != null);
    return interestsChanged(interests);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User userToEdit),
    Result nameChanged(String name),
    Result imageChanged(File imageFile),
    Result usernameChanged(String username),
    Result passwordChanged(String password),
    Result passwordConfirmationChanged(String passwordConfirmation),
    Result emailAddressChanged(String emailAddress),
    Result birthdayChanged(DateTime birthday),
    Result descriptionChanged(String description),
    Result interestsChanged(Set<Tag> interests),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (interestsChanged != null) {
      return interestsChanged(interests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result imageChanged(_ImageChanged value),
    @required Result usernameChanged(_UsernameChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result passwordConfirmationChanged(_PasswordConfirmationChanged value),
    @required Result emailAddressChanged(_EmailAddressChanged value),
    @required Result birthdayChanged(_BirthdayChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result interestsChanged(_InterestsChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(emailAddressChanged != null);
    assert(birthdayChanged != null);
    assert(descriptionChanged != null);
    assert(interestsChanged != null);
    assert(submitted != null);
    return interestsChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result imageChanged(_ImageChanged value),
    Result usernameChanged(_UsernameChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result passwordConfirmationChanged(_PasswordConfirmationChanged value),
    Result emailAddressChanged(_EmailAddressChanged value),
    Result birthdayChanged(_BirthdayChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result interestsChanged(_InterestsChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (interestsChanged != null) {
      return interestsChanged(this);
    }
    return orElse();
  }
}

abstract class _InterestsChanged implements ProfileEditingFormEvent {
  const factory _InterestsChanged(Set<Tag> interests) = _$_InterestsChanged;

  Set<Tag> get interests;
  _$InterestsChangedCopyWith<_InterestsChanged> get copyWith;
}

abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(_Submitted value, $Res Function(_Submitted) then) = __$SubmittedCopyWithImpl<$Res>;
}

class __$SubmittedCopyWithImpl<$Res> extends _$ProfileEditingFormEventCopyWithImpl<$Res> implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(_Submitted _value, $Res Function(_Submitted) _then) : super(_value, (v) => _then(v as _Submitted));

  @override
  _Submitted get _value => super._value as _Submitted;
}

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
  Result when<Result extends Object>({
    @required Result initialized(User userToEdit),
    @required Result nameChanged(String name),
    @required Result imageChanged(File imageFile),
    @required Result usernameChanged(String username),
    @required Result passwordChanged(String password),
    @required Result passwordConfirmationChanged(String passwordConfirmation),
    @required Result emailAddressChanged(String emailAddress),
    @required Result birthdayChanged(DateTime birthday),
    @required Result descriptionChanged(String description),
    @required Result interestsChanged(Set<Tag> interests),
    @required Result submitted(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(emailAddressChanged != null);
    assert(birthdayChanged != null);
    assert(descriptionChanged != null);
    assert(interestsChanged != null);
    assert(submitted != null);
    return submitted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User userToEdit),
    Result nameChanged(String name),
    Result imageChanged(File imageFile),
    Result usernameChanged(String username),
    Result passwordChanged(String password),
    Result passwordConfirmationChanged(String passwordConfirmation),
    Result emailAddressChanged(String emailAddress),
    Result birthdayChanged(DateTime birthday),
    Result descriptionChanged(String description),
    Result interestsChanged(Set<Tag> interests),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result imageChanged(_ImageChanged value),
    @required Result usernameChanged(_UsernameChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result passwordConfirmationChanged(_PasswordConfirmationChanged value),
    @required Result emailAddressChanged(_EmailAddressChanged value),
    @required Result birthdayChanged(_BirthdayChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result interestsChanged(_InterestsChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmationChanged != null);
    assert(emailAddressChanged != null);
    assert(birthdayChanged != null);
    assert(descriptionChanged != null);
    assert(interestsChanged != null);
    assert(submitted != null);
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result imageChanged(_ImageChanged value),
    Result usernameChanged(_UsernameChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result passwordConfirmationChanged(_PasswordConfirmationChanged value),
    Result emailAddressChanged(_EmailAddressChanged value),
    Result birthdayChanged(_BirthdayChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result interestsChanged(_InterestsChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements ProfileEditingFormEvent {
  const factory _Submitted() = _$_Submitted;
}

class _$ProfileEditingFormStateTearOff {
  const _$ProfileEditingFormStateTearOff();

// ignore: unused_element
  _ProfileEditingFormState call(
      {@required User user,
      @required PasswordConfirmator passwordConfirmator,
      @required String passwordToCompare,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<Failure, Unit>> failureOrSuccessOption}) {
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

// ignore: unused_element
const $ProfileEditingFormState = _$ProfileEditingFormStateTearOff();

mixin _$ProfileEditingFormState {
  User get user;
  PasswordConfirmator get passwordConfirmator;
  String get passwordToCompare;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<Failure, Unit>> get failureOrSuccessOption;

  $ProfileEditingFormStateCopyWith<ProfileEditingFormState> get copyWith;
}

abstract class $ProfileEditingFormStateCopyWith<$Res> {
  factory $ProfileEditingFormStateCopyWith(ProfileEditingFormState value, $Res Function(ProfileEditingFormState) then) = _$ProfileEditingFormStateCopyWithImpl<$Res>;

  $Res call({User user, PasswordConfirmator passwordConfirmator, String passwordToCompare, bool showErrorMessages, bool isSubmitting, Option<Either<Failure, Unit>> failureOrSuccessOption});

  $UserCopyWith<$Res> get user;
}

class _$ProfileEditingFormStateCopyWithImpl<$Res> implements $ProfileEditingFormStateCopyWith<$Res> {
  _$ProfileEditingFormStateCopyWithImpl(this._value, this._then);

  final ProfileEditingFormState _value;

  // ignore: unused_field
  final $Res Function(ProfileEditingFormState) _then;

  @override
  $Res call({
    Object user = freezed,
    Object passwordConfirmator = freezed,
    Object passwordToCompare = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as User,
      passwordConfirmator: passwordConfirmator == freezed ? _value.passwordConfirmator : passwordConfirmator as PasswordConfirmator,
      passwordToCompare: passwordToCompare == freezed ? _value.passwordToCompare : passwordToCompare as String,
      showErrorMessages: showErrorMessages == freezed ? _value.showErrorMessages : showErrorMessages as bool,
      isSubmitting: isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed ? _value.failureOrSuccessOption : failureOrSuccessOption as Option<Either<Failure, Unit>>,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

abstract class _$ProfileEditingFormStateCopyWith<$Res> implements $ProfileEditingFormStateCopyWith<$Res> {
  factory _$ProfileEditingFormStateCopyWith(_ProfileEditingFormState value, $Res Function(_ProfileEditingFormState) then) = __$ProfileEditingFormStateCopyWithImpl<$Res>;

  @override
  $Res call({User user, PasswordConfirmator passwordConfirmator, String passwordToCompare, bool showErrorMessages, bool isSubmitting, Option<Either<Failure, Unit>> failureOrSuccessOption});

  @override
  $UserCopyWith<$Res> get user;
}

class __$ProfileEditingFormStateCopyWithImpl<$Res> extends _$ProfileEditingFormStateCopyWithImpl<$Res> implements _$ProfileEditingFormStateCopyWith<$Res> {
  __$ProfileEditingFormStateCopyWithImpl(_ProfileEditingFormState _value, $Res Function(_ProfileEditingFormState) _then) : super(_value, (v) => _then(v as _ProfileEditingFormState));

  @override
  _ProfileEditingFormState get _value => super._value as _ProfileEditingFormState;

  @override
  $Res call({
    Object user = freezed,
    Object passwordConfirmator = freezed,
    Object passwordToCompare = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_ProfileEditingFormState(
      user: user == freezed ? _value.user : user as User,
      passwordConfirmator: passwordConfirmator == freezed ? _value.passwordConfirmator : passwordConfirmator as PasswordConfirmator,
      passwordToCompare: passwordToCompare == freezed ? _value.passwordToCompare : passwordToCompare as String,
      showErrorMessages: showErrorMessages == freezed ? _value.showErrorMessages : showErrorMessages as bool,
      isSubmitting: isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed ? _value.failureOrSuccessOption : failureOrSuccessOption as Option<Either<Failure, Unit>>,
    ));
  }
}

class _$_ProfileEditingFormState implements _ProfileEditingFormState {
  const _$_ProfileEditingFormState(
    {@required this.user, @required this.passwordConfirmator, @required this.passwordToCompare, @required this.showErrorMessages, @required this.isSubmitting, @required this.failureOrSuccessOption})
    : assert(user != null),
      assert(passwordConfirmator != null),
      assert(passwordToCompare != null),
      assert(showErrorMessages != null),
      assert(isSubmitting != null),
      assert(failureOrSuccessOption != null);
  
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
  
  @override
  _$ProfileEditingFormStateCopyWith<_ProfileEditingFormState> get copyWith => __$ProfileEditingFormStateCopyWithImpl<_ProfileEditingFormState>(this, _$identity);
}

abstract class _ProfileEditingFormState implements ProfileEditingFormState {
  const factory _ProfileEditingFormState({@required User user,
    @required PasswordConfirmator passwordConfirmator,
    @required String passwordToCompare,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<Failure, Unit>> failureOrSuccessOption}) = _$_ProfileEditingFormState;
  
  @override
  User get user;
  
  @override
  PasswordConfirmator get passwordConfirmator;
  
  @override
  String get passwordToCompare;

  @override
  bool get showErrorMessages;
  
  @override
  bool get isSubmitting;
  @override
  Option<Either<Failure, Unit>> get failureOrSuccessOption;
  @override
  _$ProfileEditingFormStateCopyWith<_ProfileEditingFormState> get copyWith;
}
