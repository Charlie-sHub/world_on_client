// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'registration_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RegistrationFormEventTearOff {
  const _$RegistrationFormEventTearOff();

  _Initialize initialize() {
    return const _Initialize();
  }

  _NameChange nameChange(String name) {
    return _NameChange(
      name,
    );
  }

  _UsernameChange usernameChange(String username) {
    return _UsernameChange(
      username,
    );
  }

  _PasswordChange passwordChange(String password) {
    return _PasswordChange(
      password,
    );
  }

  _EmailAddressChange emailAddressChange(String emailAddress) {
    return _EmailAddressChange(
      emailAddress,
    );
  }

  _BirthdayChange birthdayChange(DateTime birthday) {
    return _BirthdayChange(
      birthday,
    );
  }

  _DescriptionChange descriptionChange(String description) {
    return _DescriptionChange(
      description,
    );
  }

  _InterestsChange interestsChange(Set<Tag> interests) {
    return _InterestsChange(
      interests,
    );
  }

  _Submit submit() {
    return const _Submit();
  }
}

// ignore: unused_element
const $RegistrationFormEvent = _$RegistrationFormEventTearOff();

mixin _$RegistrationFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(),
    @required Result nameChange(String name),
    @required Result usernameChange(String username),
    @required Result passwordChange(String password),
    @required Result emailAddressChange(String emailAddress),
    @required Result birthdayChange(DateTime birthday),
    @required Result descriptionChange(String description),
    @required Result interestsChange(Set<Tag> interests),
    @required Result submit(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(),
    Result nameChange(String name),
    Result usernameChange(String username),
    Result passwordChange(String password),
    Result emailAddressChange(String emailAddress),
    Result birthdayChange(DateTime birthday),
    Result descriptionChange(String description),
    Result interestsChange(Set<Tag> interests),
    Result submit(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result nameChange(_NameChange value),
    @required Result usernameChange(_UsernameChange value),
    @required Result passwordChange(_PasswordChange value),
    @required Result emailAddressChange(_EmailAddressChange value),
    @required Result birthdayChange(_BirthdayChange value),
    @required Result descriptionChange(_DescriptionChange value),
    @required Result interestsChange(_InterestsChange value),
    @required Result submit(_Submit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result nameChange(_NameChange value),
    Result usernameChange(_UsernameChange value),
    Result passwordChange(_PasswordChange value),
    Result emailAddressChange(_EmailAddressChange value),
    Result birthdayChange(_BirthdayChange value),
    Result descriptionChange(_DescriptionChange value),
    Result interestsChange(_InterestsChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  });
}

abstract class $RegistrationFormEventCopyWith<$Res> {
  factory $RegistrationFormEventCopyWith(RegistrationFormEvent value, $Res Function(RegistrationFormEvent) then) = _$RegistrationFormEventCopyWithImpl<$Res>;
}

class _$RegistrationFormEventCopyWithImpl<$Res> implements $RegistrationFormEventCopyWith<$Res> {
  _$RegistrationFormEventCopyWithImpl(this._value, this._then);

  final RegistrationFormEvent _value;
  // ignore: unused_field
  final $Res Function(RegistrationFormEvent) _then;
}

abstract class _$InitializeCopyWith<$Res> {
  factory _$InitializeCopyWith(_Initialize value, $Res Function(_Initialize) then) =
  __$InitializeCopyWithImpl<$Res>;
}

class __$InitializeCopyWithImpl<$Res> extends _$RegistrationFormEventCopyWithImpl<$Res>
  implements _$InitializeCopyWith<$Res> {
  __$InitializeCopyWithImpl(_Initialize _value, $Res Function(_Initialize) _then)
    : super(_value, (v) => _then(v as _Initialize));

  @override
  _Initialize get _value => super._value as _Initialize;
}

class _$_Initialize implements _Initialize {
  const _$_Initialize();

  @override
  String toString() {
    return 'RegistrationFormEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(),
    @required Result nameChange(String name),
    @required Result usernameChange(String username),
    @required Result passwordChange(String password),
    @required Result emailAddressChange(String emailAddress),
    @required Result birthdayChange(DateTime birthday),
    @required Result descriptionChange(String description),
    @required Result interestsChange(Set<Tag> interests),
    @required Result submit(),
  }) {
    assert(initialize != null);
    assert(nameChange != null);
    assert(usernameChange != null);
    assert(passwordChange != null);
    assert(emailAddressChange != null);
    assert(birthdayChange != null);
    assert(descriptionChange != null);
    assert(interestsChange != null);
    assert(submit != null);
    return initialize();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(),
    Result nameChange(String name),
    Result usernameChange(String username),
    Result passwordChange(String password),
    Result emailAddressChange(String emailAddress),
    Result birthdayChange(DateTime birthday),
    Result descriptionChange(String description),
    Result interestsChange(Set<Tag> interests),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result nameChange(_NameChange value),
    @required Result usernameChange(_UsernameChange value),
    @required Result passwordChange(_PasswordChange value),
    @required Result emailAddressChange(_EmailAddressChange value),
    @required Result birthdayChange(_BirthdayChange value),
    @required Result descriptionChange(_DescriptionChange value),
    @required Result interestsChange(_InterestsChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialize != null);
    assert(nameChange != null);
    assert(usernameChange != null);
    assert(passwordChange != null);
    assert(emailAddressChange != null);
    assert(birthdayChange != null);
    assert(descriptionChange != null);
    assert(interestsChange != null);
    assert(submit != null);
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result nameChange(_NameChange value),
    Result usernameChange(_UsernameChange value),
    Result passwordChange(_PasswordChange value),
    Result emailAddressChange(_EmailAddressChange value),
    Result birthdayChange(_BirthdayChange value),
    Result descriptionChange(_DescriptionChange value),
    Result interestsChange(_InterestsChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements RegistrationFormEvent {
  const factory _Initialize() = _$_Initialize;
}

abstract class _$NameChangeCopyWith<$Res> {
  factory _$NameChangeCopyWith(_NameChange value, $Res Function(_NameChange) then) =
  __$NameChangeCopyWithImpl<$Res>;
  $Res call({String name});
}

class __$NameChangeCopyWithImpl<$Res> extends _$RegistrationFormEventCopyWithImpl<$Res>
  implements _$NameChangeCopyWith<$Res> {
  __$NameChangeCopyWithImpl(_NameChange _value, $Res Function(_NameChange) _then)
    : super(_value, (v) => _then(v as _NameChange));

  @override
  _NameChange get _value => super._value as _NameChange;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_NameChange(
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$_NameChange implements _NameChange {
  const _$_NameChange(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'RegistrationFormEvent.nameChange(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _NameChange &&
        (identical(other.name, name) ||
          const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$NameChangeCopyWith<_NameChange> get copyWith =>
    __$NameChangeCopyWithImpl<_NameChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(),
    @required Result nameChange(String name),
    @required Result usernameChange(String username),
    @required Result passwordChange(String password),
    @required Result emailAddressChange(String emailAddress),
    @required Result birthdayChange(DateTime birthday),
    @required Result descriptionChange(String description),
    @required Result interestsChange(Set<Tag> interests),
    @required Result submit(),
  }) {
    assert(initialize != null);
    assert(nameChange != null);
    assert(usernameChange != null);
    assert(passwordChange != null);
    assert(emailAddressChange != null);
    assert(birthdayChange != null);
    assert(descriptionChange != null);
    assert(interestsChange != null);
    assert(submit != null);
    return nameChange(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(),
    Result nameChange(String name),
    Result usernameChange(String username),
    Result passwordChange(String password),
    Result emailAddressChange(String emailAddress),
    Result birthdayChange(DateTime birthday),
    Result descriptionChange(String description),
    Result interestsChange(Set<Tag> interests),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChange != null) {
      return nameChange(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result nameChange(_NameChange value),
    @required Result usernameChange(_UsernameChange value),
    @required Result passwordChange(_PasswordChange value),
    @required Result emailAddressChange(_EmailAddressChange value),
    @required Result birthdayChange(_BirthdayChange value),
    @required Result descriptionChange(_DescriptionChange value),
    @required Result interestsChange(_InterestsChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialize != null);
    assert(nameChange != null);
    assert(usernameChange != null);
    assert(passwordChange != null);
    assert(emailAddressChange != null);
    assert(birthdayChange != null);
    assert(descriptionChange != null);
    assert(interestsChange != null);
    assert(submit != null);
    return nameChange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result nameChange(_NameChange value),
    Result usernameChange(_UsernameChange value),
    Result passwordChange(_PasswordChange value),
    Result emailAddressChange(_EmailAddressChange value),
    Result birthdayChange(_BirthdayChange value),
    Result descriptionChange(_DescriptionChange value),
    Result interestsChange(_InterestsChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChange != null) {
      return nameChange(this);
    }
    return orElse();
  }
}

abstract class _NameChange implements RegistrationFormEvent {
  const factory _NameChange(String name) = _$_NameChange;

  String get name;
  _$NameChangeCopyWith<_NameChange> get copyWith;
}

abstract class _$UsernameChangeCopyWith<$Res> {
  factory _$UsernameChangeCopyWith(_UsernameChange value, $Res Function(_UsernameChange) then) =
  __$UsernameChangeCopyWithImpl<$Res>;
  $Res call({String username});
}

class __$UsernameChangeCopyWithImpl<$Res> extends _$RegistrationFormEventCopyWithImpl<$Res>
  implements _$UsernameChangeCopyWith<$Res> {
  __$UsernameChangeCopyWithImpl(_UsernameChange _value, $Res Function(_UsernameChange) _then)
    : super(_value, (v) => _then(v as _UsernameChange));

  @override
  _UsernameChange get _value => super._value as _UsernameChange;

  @override
  $Res call({
    Object username = freezed,
  }) {
    return _then(_UsernameChange(
      username == freezed ? _value.username : username as String,
    ));
  }
}

class _$_UsernameChange implements _UsernameChange {
  const _$_UsernameChange(this.username) : assert(username != null);

  @override
  final String username;

  @override
  String toString() {
    return 'RegistrationFormEvent.usernameChange(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _UsernameChange &&
        (identical(other.username, username) ||
          const DeepCollectionEquality()
            .equals(other.username, username)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);

  @override
  _$UsernameChangeCopyWith<_UsernameChange> get copyWith =>
    __$UsernameChangeCopyWithImpl<_UsernameChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(),
    @required Result nameChange(String name),
    @required Result usernameChange(String username),
    @required Result passwordChange(String password),
    @required Result emailAddressChange(String emailAddress),
    @required Result birthdayChange(DateTime birthday),
    @required Result descriptionChange(String description),
    @required Result interestsChange(Set<Tag> interests),
    @required Result submit(),
  }) {
    assert(initialize != null);
    assert(nameChange != null);
    assert(usernameChange != null);
    assert(passwordChange != null);
    assert(emailAddressChange != null);
    assert(birthdayChange != null);
    assert(descriptionChange != null);
    assert(interestsChange != null);
    assert(submit != null);
    return usernameChange(username);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(),
    Result nameChange(String name),
    Result usernameChange(String username),
    Result passwordChange(String password),
    Result emailAddressChange(String emailAddress),
    Result birthdayChange(DateTime birthday),
    Result descriptionChange(String description),
    Result interestsChange(Set<Tag> interests),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameChange != null) {
      return usernameChange(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result nameChange(_NameChange value),
    @required Result usernameChange(_UsernameChange value),
    @required Result passwordChange(_PasswordChange value),
    @required Result emailAddressChange(_EmailAddressChange value),
    @required Result birthdayChange(_BirthdayChange value),
    @required Result descriptionChange(_DescriptionChange value),
    @required Result interestsChange(_InterestsChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialize != null);
    assert(nameChange != null);
    assert(usernameChange != null);
    assert(passwordChange != null);
    assert(emailAddressChange != null);
    assert(birthdayChange != null);
    assert(descriptionChange != null);
    assert(interestsChange != null);
    assert(submit != null);
    return usernameChange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result nameChange(_NameChange value),
    Result usernameChange(_UsernameChange value),
    Result passwordChange(_PasswordChange value),
    Result emailAddressChange(_EmailAddressChange value),
    Result birthdayChange(_BirthdayChange value),
    Result descriptionChange(_DescriptionChange value),
    Result interestsChange(_InterestsChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameChange != null) {
      return usernameChange(this);
    }
    return orElse();
  }
}

abstract class _UsernameChange implements RegistrationFormEvent {
  const factory _UsernameChange(String username) = _$_UsernameChange;

  String get username;
  _$UsernameChangeCopyWith<_UsernameChange> get copyWith;
}

abstract class _$PasswordChangeCopyWith<$Res> {
  factory _$PasswordChangeCopyWith(_PasswordChange value, $Res Function(_PasswordChange) then) =
  __$PasswordChangeCopyWithImpl<$Res>;
  $Res call({String password});
}

class __$PasswordChangeCopyWithImpl<$Res> extends _$RegistrationFormEventCopyWithImpl<$Res>
  implements _$PasswordChangeCopyWith<$Res> {
  __$PasswordChangeCopyWithImpl(_PasswordChange _value, $Res Function(_PasswordChange) _then)
    : super(_value, (v) => _then(v as _PasswordChange));

  @override
  _PasswordChange get _value => super._value as _PasswordChange;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(_PasswordChange(
      password == freezed ? _value.password : password as String,
    ));
  }
}

class _$_PasswordChange implements _PasswordChange {
  const _$_PasswordChange(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'RegistrationFormEvent.passwordChange(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _PasswordChange &&
        (identical(other.password, password) ||
          const DeepCollectionEquality()
            .equals(other.password, password)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  _$PasswordChangeCopyWith<_PasswordChange> get copyWith =>
    __$PasswordChangeCopyWithImpl<_PasswordChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(),
    @required Result nameChange(String name),
    @required Result usernameChange(String username),
    @required Result passwordChange(String password),
    @required Result emailAddressChange(String emailAddress),
    @required Result birthdayChange(DateTime birthday),
    @required Result descriptionChange(String description),
    @required Result interestsChange(Set<Tag> interests),
    @required Result submit(),
  }) {
    assert(initialize != null);
    assert(nameChange != null);
    assert(usernameChange != null);
    assert(passwordChange != null);
    assert(emailAddressChange != null);
    assert(birthdayChange != null);
    assert(descriptionChange != null);
    assert(interestsChange != null);
    assert(submit != null);
    return passwordChange(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(),
    Result nameChange(String name),
    Result usernameChange(String username),
    Result passwordChange(String password),
    Result emailAddressChange(String emailAddress),
    Result birthdayChange(DateTime birthday),
    Result descriptionChange(String description),
    Result interestsChange(Set<Tag> interests),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChange != null) {
      return passwordChange(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result nameChange(_NameChange value),
    @required Result usernameChange(_UsernameChange value),
    @required Result passwordChange(_PasswordChange value),
    @required Result emailAddressChange(_EmailAddressChange value),
    @required Result birthdayChange(_BirthdayChange value),
    @required Result descriptionChange(_DescriptionChange value),
    @required Result interestsChange(_InterestsChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialize != null);
    assert(nameChange != null);
    assert(usernameChange != null);
    assert(passwordChange != null);
    assert(emailAddressChange != null);
    assert(birthdayChange != null);
    assert(descriptionChange != null);
    assert(interestsChange != null);
    assert(submit != null);
    return passwordChange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result nameChange(_NameChange value),
    Result usernameChange(_UsernameChange value),
    Result passwordChange(_PasswordChange value),
    Result emailAddressChange(_EmailAddressChange value),
    Result birthdayChange(_BirthdayChange value),
    Result descriptionChange(_DescriptionChange value),
    Result interestsChange(_InterestsChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChange != null) {
      return passwordChange(this);
    }
    return orElse();
  }
}

abstract class _PasswordChange implements RegistrationFormEvent {
  const factory _PasswordChange(String password) = _$_PasswordChange;

  String get password;
  _$PasswordChangeCopyWith<_PasswordChange> get copyWith;
}

abstract class _$EmailAddressChangeCopyWith<$Res> {
  factory _$EmailAddressChangeCopyWith(_EmailAddressChange value, $Res Function(_EmailAddressChange) then) =
  __$EmailAddressChangeCopyWithImpl<$Res>;
  $Res call({String emailAddress});
}

class __$EmailAddressChangeCopyWithImpl<$Res> extends _$RegistrationFormEventCopyWithImpl<$Res>
  implements _$EmailAddressChangeCopyWith<$Res> {
  __$EmailAddressChangeCopyWithImpl(_EmailAddressChange _value, $Res Function(_EmailAddressChange) _then)
    : super(_value, (v) => _then(v as _EmailAddressChange));

  @override
  _EmailAddressChange get _value => super._value as _EmailAddressChange;

  @override
  $Res call({
    Object emailAddress = freezed,
  }) {
    return _then(_EmailAddressChange(
      emailAddress == freezed ? _value.emailAddress : emailAddress as String,
    ));
  }
}

class _$_EmailAddressChange implements _EmailAddressChange {
  const _$_EmailAddressChange(this.emailAddress) : assert(emailAddress != null);

  @override
  final String emailAddress;

  @override
  String toString() {
    return 'RegistrationFormEvent.emailAddressChange(emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _EmailAddressChange &&
        (identical(other.emailAddress, emailAddress) ||
          const DeepCollectionEquality()
            .equals(other.emailAddress, emailAddress)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailAddress);

  @override
  _$EmailAddressChangeCopyWith<_EmailAddressChange> get copyWith =>
    __$EmailAddressChangeCopyWithImpl<_EmailAddressChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(),
    @required Result nameChange(String name),
    @required Result usernameChange(String username),
    @required Result passwordChange(String password),
    @required Result emailAddressChange(String emailAddress),
    @required Result birthdayChange(DateTime birthday),
    @required Result descriptionChange(String description),
    @required Result interestsChange(Set<Tag> interests),
    @required Result submit(),
  }) {
    assert(initialize != null);
    assert(nameChange != null);
    assert(usernameChange != null);
    assert(passwordChange != null);
    assert(emailAddressChange != null);
    assert(birthdayChange != null);
    assert(descriptionChange != null);
    assert(interestsChange != null);
    assert(submit != null);
    return emailAddressChange(emailAddress);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(),
    Result nameChange(String name),
    Result usernameChange(String username),
    Result passwordChange(String password),
    Result emailAddressChange(String emailAddress),
    Result birthdayChange(DateTime birthday),
    Result descriptionChange(String description),
    Result interestsChange(Set<Tag> interests),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAddressChange != null) {
      return emailAddressChange(emailAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result nameChange(_NameChange value),
    @required Result usernameChange(_UsernameChange value),
    @required Result passwordChange(_PasswordChange value),
    @required Result emailAddressChange(_EmailAddressChange value),
    @required Result birthdayChange(_BirthdayChange value),
    @required Result descriptionChange(_DescriptionChange value),
    @required Result interestsChange(_InterestsChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialize != null);
    assert(nameChange != null);
    assert(usernameChange != null);
    assert(passwordChange != null);
    assert(emailAddressChange != null);
    assert(birthdayChange != null);
    assert(descriptionChange != null);
    assert(interestsChange != null);
    assert(submit != null);
    return emailAddressChange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result nameChange(_NameChange value),
    Result usernameChange(_UsernameChange value),
    Result passwordChange(_PasswordChange value),
    Result emailAddressChange(_EmailAddressChange value),
    Result birthdayChange(_BirthdayChange value),
    Result descriptionChange(_DescriptionChange value),
    Result interestsChange(_InterestsChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAddressChange != null) {
      return emailAddressChange(this);
    }
    return orElse();
  }
}

abstract class _EmailAddressChange implements RegistrationFormEvent {
  const factory _EmailAddressChange(String emailAddress) =
  _$_EmailAddressChange;

  String get emailAddress;
  _$EmailAddressChangeCopyWith<_EmailAddressChange> get copyWith;
}

abstract class _$BirthdayChangeCopyWith<$Res> {
  factory _$BirthdayChangeCopyWith(_BirthdayChange value, $Res Function(_BirthdayChange) then) =
  __$BirthdayChangeCopyWithImpl<$Res>;
  $Res call({DateTime birthday});
}

class __$BirthdayChangeCopyWithImpl<$Res> extends _$RegistrationFormEventCopyWithImpl<$Res>
  implements _$BirthdayChangeCopyWith<$Res> {
  __$BirthdayChangeCopyWithImpl(_BirthdayChange _value, $Res Function(_BirthdayChange) _then)
    : super(_value, (v) => _then(v as _BirthdayChange));

  @override
  _BirthdayChange get _value => super._value as _BirthdayChange;

  @override
  $Res call({
    Object birthday = freezed,
  }) {
    return _then(_BirthdayChange(
      birthday == freezed ? _value.birthday : birthday as DateTime,
    ));
  }
}

class _$_BirthdayChange implements _BirthdayChange {
  const _$_BirthdayChange(this.birthday) : assert(birthday != null);

  @override
  final DateTime birthday;

  @override
  String toString() {
    return 'RegistrationFormEvent.birthdayChange(birthday: $birthday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _BirthdayChange &&
        (identical(other.birthday, birthday) ||
          const DeepCollectionEquality()
            .equals(other.birthday, birthday)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(birthday);

  @override
  _$BirthdayChangeCopyWith<_BirthdayChange> get copyWith =>
    __$BirthdayChangeCopyWithImpl<_BirthdayChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(),
    @required Result nameChange(String name),
    @required Result usernameChange(String username),
    @required Result passwordChange(String password),
    @required Result emailAddressChange(String emailAddress),
    @required Result birthdayChange(DateTime birthday),
    @required Result descriptionChange(String description),
    @required Result interestsChange(Set<Tag> interests),
    @required Result submit(),
  }) {
    assert(initialize != null);
    assert(nameChange != null);
    assert(usernameChange != null);
    assert(passwordChange != null);
    assert(emailAddressChange != null);
    assert(birthdayChange != null);
    assert(descriptionChange != null);
    assert(interestsChange != null);
    assert(submit != null);
    return birthdayChange(birthday);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(),
    Result nameChange(String name),
    Result usernameChange(String username),
    Result passwordChange(String password),
    Result emailAddressChange(String emailAddress),
    Result birthdayChange(DateTime birthday),
    Result descriptionChange(String description),
    Result interestsChange(Set<Tag> interests),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (birthdayChange != null) {
      return birthdayChange(birthday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result nameChange(_NameChange value),
    @required Result usernameChange(_UsernameChange value),
    @required Result passwordChange(_PasswordChange value),
    @required Result emailAddressChange(_EmailAddressChange value),
    @required Result birthdayChange(_BirthdayChange value),
    @required Result descriptionChange(_DescriptionChange value),
    @required Result interestsChange(_InterestsChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialize != null);
    assert(nameChange != null);
    assert(usernameChange != null);
    assert(passwordChange != null);
    assert(emailAddressChange != null);
    assert(birthdayChange != null);
    assert(descriptionChange != null);
    assert(interestsChange != null);
    assert(submit != null);
    return birthdayChange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result nameChange(_NameChange value),
    Result usernameChange(_UsernameChange value),
    Result passwordChange(_PasswordChange value),
    Result emailAddressChange(_EmailAddressChange value),
    Result birthdayChange(_BirthdayChange value),
    Result descriptionChange(_DescriptionChange value),
    Result interestsChange(_InterestsChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (birthdayChange != null) {
      return birthdayChange(this);
    }
    return orElse();
  }
}

abstract class _BirthdayChange implements RegistrationFormEvent {
  const factory _BirthdayChange(DateTime birthday) = _$_BirthdayChange;

  DateTime get birthday;
  _$BirthdayChangeCopyWith<_BirthdayChange> get copyWith;
}

abstract class _$DescriptionChangeCopyWith<$Res> {
  factory _$DescriptionChangeCopyWith(_DescriptionChange value, $Res Function(_DescriptionChange) then) =
  __$DescriptionChangeCopyWithImpl<$Res>;
  $Res call({String description});
}

class __$DescriptionChangeCopyWithImpl<$Res> extends _$RegistrationFormEventCopyWithImpl<$Res>
  implements _$DescriptionChangeCopyWith<$Res> {
  __$DescriptionChangeCopyWithImpl(_DescriptionChange _value, $Res Function(_DescriptionChange) _then)
    : super(_value, (v) => _then(v as _DescriptionChange));

  @override
  _DescriptionChange get _value => super._value as _DescriptionChange;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(_DescriptionChange(
      description == freezed ? _value.description : description as String,
    ));
  }
}

class _$_DescriptionChange implements _DescriptionChange {
  const _$_DescriptionChange(this.description) : assert(description != null);

  @override
  final String description;

  @override
  String toString() {
    return 'RegistrationFormEvent.descriptionChange(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _DescriptionChange &&
        (identical(other.description, description) ||
          const DeepCollectionEquality()
            .equals(other.description, description)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @override
  _$DescriptionChangeCopyWith<_DescriptionChange> get copyWith =>
    __$DescriptionChangeCopyWithImpl<_DescriptionChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(),
    @required Result nameChange(String name),
    @required Result usernameChange(String username),
    @required Result passwordChange(String password),
    @required Result emailAddressChange(String emailAddress),
    @required Result birthdayChange(DateTime birthday),
    @required Result descriptionChange(String description),
    @required Result interestsChange(Set<Tag> interests),
    @required Result submit(),
  }) {
    assert(initialize != null);
    assert(nameChange != null);
    assert(usernameChange != null);
    assert(passwordChange != null);
    assert(emailAddressChange != null);
    assert(birthdayChange != null);
    assert(descriptionChange != null);
    assert(interestsChange != null);
    assert(submit != null);
    return descriptionChange(description);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(),
    Result nameChange(String name),
    Result usernameChange(String username),
    Result passwordChange(String password),
    Result emailAddressChange(String emailAddress),
    Result birthdayChange(DateTime birthday),
    Result descriptionChange(String description),
    Result interestsChange(Set<Tag> interests),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChange != null) {
      return descriptionChange(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result nameChange(_NameChange value),
    @required Result usernameChange(_UsernameChange value),
    @required Result passwordChange(_PasswordChange value),
    @required Result emailAddressChange(_EmailAddressChange value),
    @required Result birthdayChange(_BirthdayChange value),
    @required Result descriptionChange(_DescriptionChange value),
    @required Result interestsChange(_InterestsChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialize != null);
    assert(nameChange != null);
    assert(usernameChange != null);
    assert(passwordChange != null);
    assert(emailAddressChange != null);
    assert(birthdayChange != null);
    assert(descriptionChange != null);
    assert(interestsChange != null);
    assert(submit != null);
    return descriptionChange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result nameChange(_NameChange value),
    Result usernameChange(_UsernameChange value),
    Result passwordChange(_PasswordChange value),
    Result emailAddressChange(_EmailAddressChange value),
    Result birthdayChange(_BirthdayChange value),
    Result descriptionChange(_DescriptionChange value),
    Result interestsChange(_InterestsChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChange != null) {
      return descriptionChange(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChange implements RegistrationFormEvent {
  const factory _DescriptionChange(String description) = _$_DescriptionChange;

  String get description;
  _$DescriptionChangeCopyWith<_DescriptionChange> get copyWith;
}

abstract class _$InterestsChangeCopyWith<$Res> {
  factory _$InterestsChangeCopyWith(_InterestsChange value, $Res Function(_InterestsChange) then) =
  __$InterestsChangeCopyWithImpl<$Res>;
  $Res call({Set<Tag> interests});
}

class __$InterestsChangeCopyWithImpl<$Res> extends _$RegistrationFormEventCopyWithImpl<$Res>
  implements _$InterestsChangeCopyWith<$Res> {
  __$InterestsChangeCopyWithImpl(_InterestsChange _value, $Res Function(_InterestsChange) _then)
    : super(_value, (v) => _then(v as _InterestsChange));

  @override
  _InterestsChange get _value => super._value as _InterestsChange;

  @override
  $Res call({
    Object interests = freezed,
  }) {
    return _then(_InterestsChange(
      interests == freezed ? _value.interests : interests as Set<Tag>,
    ));
  }
}

class _$_InterestsChange implements _InterestsChange {
  const _$_InterestsChange(this.interests) : assert(interests != null);

  @override
  final Set<Tag> interests;

  @override
  String toString() {
    return 'RegistrationFormEvent.interestsChange(interests: $interests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _InterestsChange &&
        (identical(other.interests, interests) ||
          const DeepCollectionEquality()
            .equals(other.interests, interests)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(interests);

  @override
  _$InterestsChangeCopyWith<_InterestsChange> get copyWith =>
    __$InterestsChangeCopyWithImpl<_InterestsChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(),
    @required Result nameChange(String name),
    @required Result usernameChange(String username),
    @required Result passwordChange(String password),
    @required Result emailAddressChange(String emailAddress),
    @required Result birthdayChange(DateTime birthday),
    @required Result descriptionChange(String description),
    @required Result interestsChange(Set<Tag> interests),
    @required Result submit(),
  }) {
    assert(initialize != null);
    assert(nameChange != null);
    assert(usernameChange != null);
    assert(passwordChange != null);
    assert(emailAddressChange != null);
    assert(birthdayChange != null);
    assert(descriptionChange != null);
    assert(interestsChange != null);
    assert(submit != null);
    return interestsChange(interests);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(),
    Result nameChange(String name),
    Result usernameChange(String username),
    Result passwordChange(String password),
    Result emailAddressChange(String emailAddress),
    Result birthdayChange(DateTime birthday),
    Result descriptionChange(String description),
    Result interestsChange(Set<Tag> interests),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (interestsChange != null) {
      return interestsChange(interests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result nameChange(_NameChange value),
    @required Result usernameChange(_UsernameChange value),
    @required Result passwordChange(_PasswordChange value),
    @required Result emailAddressChange(_EmailAddressChange value),
    @required Result birthdayChange(_BirthdayChange value),
    @required Result descriptionChange(_DescriptionChange value),
    @required Result interestsChange(_InterestsChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialize != null);
    assert(nameChange != null);
    assert(usernameChange != null);
    assert(passwordChange != null);
    assert(emailAddressChange != null);
    assert(birthdayChange != null);
    assert(descriptionChange != null);
    assert(interestsChange != null);
    assert(submit != null);
    return interestsChange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result nameChange(_NameChange value),
    Result usernameChange(_UsernameChange value),
    Result passwordChange(_PasswordChange value),
    Result emailAddressChange(_EmailAddressChange value),
    Result birthdayChange(_BirthdayChange value),
    Result descriptionChange(_DescriptionChange value),
    Result interestsChange(_InterestsChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (interestsChange != null) {
      return interestsChange(this);
    }
    return orElse();
  }
}

abstract class _InterestsChange implements RegistrationFormEvent {
  const factory _InterestsChange(Set<Tag> interests) = _$_InterestsChange;

  Set<Tag> get interests;
  _$InterestsChangeCopyWith<_InterestsChange> get copyWith;
}

abstract class _$SubmitCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
  __$SubmitCopyWithImpl<$Res>;
}

class __$SubmitCopyWithImpl<$Res> extends _$RegistrationFormEventCopyWithImpl<$Res>
  implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(_Submit _value, $Res Function(_Submit) _then)
    : super(_value, (v) => _then(v as _Submit));

  @override
  _Submit get _value => super._value as _Submit;
}

class _$_Submit implements _Submit {
  const _$_Submit();

  @override
  String toString() {
    return 'RegistrationFormEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Submit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(),
    @required Result nameChange(String name),
    @required Result usernameChange(String username),
    @required Result passwordChange(String password),
    @required Result emailAddressChange(String emailAddress),
    @required Result birthdayChange(DateTime birthday),
    @required Result descriptionChange(String description),
    @required Result interestsChange(Set<Tag> interests),
    @required Result submit(),
  }) {
    assert(initialize != null);
    assert(nameChange != null);
    assert(usernameChange != null);
    assert(passwordChange != null);
    assert(emailAddressChange != null);
    assert(birthdayChange != null);
    assert(descriptionChange != null);
    assert(interestsChange != null);
    assert(submit != null);
    return submit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(),
    Result nameChange(String name),
    Result usernameChange(String username),
    Result passwordChange(String password),
    Result emailAddressChange(String emailAddress),
    Result birthdayChange(DateTime birthday),
    Result descriptionChange(String description),
    Result interestsChange(Set<Tag> interests),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result nameChange(_NameChange value),
    @required Result usernameChange(_UsernameChange value),
    @required Result passwordChange(_PasswordChange value),
    @required Result emailAddressChange(_EmailAddressChange value),
    @required Result birthdayChange(_BirthdayChange value),
    @required Result descriptionChange(_DescriptionChange value),
    @required Result interestsChange(_InterestsChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialize != null);
    assert(nameChange != null);
    assert(usernameChange != null);
    assert(passwordChange != null);
    assert(emailAddressChange != null);
    assert(birthdayChange != null);
    assert(descriptionChange != null);
    assert(interestsChange != null);
    assert(submit != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result nameChange(_NameChange value),
    Result usernameChange(_UsernameChange value),
    Result passwordChange(_PasswordChange value),
    Result emailAddressChange(_EmailAddressChange value),
    Result birthdayChange(_BirthdayChange value),
    Result descriptionChange(_DescriptionChange value),
    Result interestsChange(_InterestsChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements RegistrationFormEvent {
  const factory _Submit() = _$_Submit;
}

class _$RegistrationFormStateTearOff {
  const _$RegistrationFormStateTearOff();

  _RegistrationFormState call({@required User user,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<Failure, Unit>> failureOrSuccessOption}) {
    return _RegistrationFormState(
      user: user,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $RegistrationFormState = _$RegistrationFormStateTearOff();

mixin _$RegistrationFormState {
  User get user;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<Failure, Unit>> get failureOrSuccessOption;

  $RegistrationFormStateCopyWith<RegistrationFormState> get copyWith;
}

abstract class $RegistrationFormStateCopyWith<$Res> {
  factory $RegistrationFormStateCopyWith(RegistrationFormState value,
    $Res Function(RegistrationFormState) then) =
  _$RegistrationFormStateCopyWithImpl<$Res>;

  $Res call({User user,
    bool showErrorMessages,
    bool isSubmitting,
    Option<Either<Failure, Unit>> failureOrSuccessOption});

  $UserCopyWith<$Res> get user;
}

class _$RegistrationFormStateCopyWithImpl<$Res>
  implements $RegistrationFormStateCopyWith<$Res> {
  _$RegistrationFormStateCopyWithImpl(this._value, this._then);

  final RegistrationFormState _value;
  // ignore: unused_field
  final $Res Function(RegistrationFormState) _then;

  @override
  $Res call({
    Object user = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as User,
      showErrorMessages: showErrorMessages == freezed
        ? _value.showErrorMessages
        : showErrorMessages as bool,
      isSubmitting:
      isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
        ? _value.failureOrSuccessOption
        : failureOrSuccessOption as Option<Either<Failure, Unit>>,
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

abstract class _$RegistrationFormStateCopyWith<$Res>
  implements $RegistrationFormStateCopyWith<$Res> {
  factory _$RegistrationFormStateCopyWith(_RegistrationFormState value,
    $Res Function(_RegistrationFormState) then) =
  __$RegistrationFormStateCopyWithImpl<$Res>;
  @override
  $Res call({User user,
    bool showErrorMessages,
    bool isSubmitting,
    Option<Either<Failure, Unit>> failureOrSuccessOption});

  @override
  $UserCopyWith<$Res> get user;
}

class __$RegistrationFormStateCopyWithImpl<$Res> extends _$RegistrationFormStateCopyWithImpl<$Res>
  implements _$RegistrationFormStateCopyWith<$Res> {
  __$RegistrationFormStateCopyWithImpl(_RegistrationFormState _value,
    $Res Function(_RegistrationFormState) _then)
    : super(_value, (v) => _then(v as _RegistrationFormState));

  @override
  _RegistrationFormState get _value => super._value as _RegistrationFormState;

  @override
  $Res call({
    Object user = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_RegistrationFormState(
      user: user == freezed ? _value.user : user as User,
      showErrorMessages: showErrorMessages == freezed
        ? _value.showErrorMessages
        : showErrorMessages as bool,
      isSubmitting:
      isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
        ? _value.failureOrSuccessOption
        : failureOrSuccessOption as Option<Either<Failure, Unit>>,
    ));
  }
}

class _$_RegistrationFormState implements _RegistrationFormState {
  const _$_RegistrationFormState({@required this.user,
    @required this.showErrorMessages,
    @required this.isSubmitting,
    @required this.failureOrSuccessOption})
      : assert(user != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(failureOrSuccessOption != null);

  @override
  final User user;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Failure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'RegistrationFormState(user: $user, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegistrationFormState &&
          (identical(other.user, user) ||
            const DeepCollectionEquality().equals(other.user, user)) &&
          (identical(other.showErrorMessages, showErrorMessages) ||
            const DeepCollectionEquality()
              .equals(other.showErrorMessages, showErrorMessages)) &&
          (identical(other.isSubmitting, isSubmitting) ||
            const DeepCollectionEquality()
              .equals(other.isSubmitting, isSubmitting)) &&
          (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
            const DeepCollectionEquality().equals(
              other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @override
  _$RegistrationFormStateCopyWith<_RegistrationFormState> get copyWith =>
    __$RegistrationFormStateCopyWithImpl<_RegistrationFormState>(
      this, _$identity);
}

abstract class _RegistrationFormState implements RegistrationFormState {
  const factory _RegistrationFormState({@required User user,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<Failure, Unit>> failureOrSuccessOption}) =
      _$_RegistrationFormState;

  @override
  User get user;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<Failure, Unit>> get failureOrSuccessOption;
  @override
  _$RegistrationFormStateCopyWith<_RegistrationFormState> get copyWith;
}
