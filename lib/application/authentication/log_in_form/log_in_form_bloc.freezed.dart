// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'log_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LogInFormEventTearOff {
  const _$LogInFormEventTearOff();

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

  _LogIn logIn() {
    return const _LogIn();
  }

  _LogInGoogle logInGoogle() {
    return const _LogInGoogle();
  }
}

// ignore: unused_element
const $LogInFormEvent = _$LogInFormEventTearOff();

mixin _$LogInFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result usernameChange(String username),
    @required Result passwordChange(String password),
    @required Result logIn(),
    @required Result logInGoogle(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result usernameChange(String username),
    Result passwordChange(String password),
    Result logIn(),
    Result logInGoogle(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result usernameChange(_UsernameChange value),
    @required Result passwordChange(_PasswordChange value),
    @required Result logIn(_LogIn value),
    @required Result logInGoogle(_LogInGoogle value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result usernameChange(_UsernameChange value),
    Result passwordChange(_PasswordChange value),
    Result logIn(_LogIn value),
    Result logInGoogle(_LogInGoogle value),
    @required Result orElse(),
  });
}

abstract class $LogInFormEventCopyWith<$Res> {
  factory $LogInFormEventCopyWith(LogInFormEvent value, $Res Function(LogInFormEvent) then) = _$LogInFormEventCopyWithImpl<$Res>;
}

class _$LogInFormEventCopyWithImpl<$Res> implements $LogInFormEventCopyWith<$Res> {
  _$LogInFormEventCopyWithImpl(this._value, this._then);

  final LogInFormEvent _value;
  // ignore: unused_field
  final $Res Function(LogInFormEvent) _then;
}

abstract class _$UsernameChangeCopyWith<$Res> {
  factory _$UsernameChangeCopyWith(_UsernameChange value, $Res Function(_UsernameChange) then) =
  __$UsernameChangeCopyWithImpl<$Res>;
  $Res call({String username});
}

class __$UsernameChangeCopyWithImpl<$Res> extends _$LogInFormEventCopyWithImpl<$Res>
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
    return 'LogInFormEvent.usernameChange(username: $username)';
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
    @required Result usernameChange(String username),
    @required Result passwordChange(String password),
    @required Result logIn(),
    @required Result logInGoogle(),
  }) {
    assert(usernameChange != null);
    assert(passwordChange != null);
    assert(logIn != null);
    assert(logInGoogle != null);
    return usernameChange(username);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result usernameChange(String username),
    Result passwordChange(String password),
    Result logIn(),
    Result logInGoogle(),
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
    @required Result usernameChange(_UsernameChange value),
    @required Result passwordChange(_PasswordChange value),
    @required Result logIn(_LogIn value),
    @required Result logInGoogle(_LogInGoogle value),
  }) {
    assert(usernameChange != null);
    assert(passwordChange != null);
    assert(logIn != null);
    assert(logInGoogle != null);
    return usernameChange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result usernameChange(_UsernameChange value),
    Result passwordChange(_PasswordChange value),
    Result logIn(_LogIn value),
    Result logInGoogle(_LogInGoogle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameChange != null) {
      return usernameChange(this);
    }
    return orElse();
  }
}

abstract class _UsernameChange implements LogInFormEvent {
  const factory _UsernameChange(String username) = _$_UsernameChange;

  String get username;
  _$UsernameChangeCopyWith<_UsernameChange> get copyWith;
}

abstract class _$PasswordChangeCopyWith<$Res> {
  factory _$PasswordChangeCopyWith(_PasswordChange value, $Res Function(_PasswordChange) then) =
  __$PasswordChangeCopyWithImpl<$Res>;
  $Res call({String password});
}

class __$PasswordChangeCopyWithImpl<$Res> extends _$LogInFormEventCopyWithImpl<$Res>
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
    return 'LogInFormEvent.passwordChange(password: $password)';
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
    @required Result usernameChange(String username),
    @required Result passwordChange(String password),
    @required Result logIn(),
    @required Result logInGoogle(),
  }) {
    assert(usernameChange != null);
    assert(passwordChange != null);
    assert(logIn != null);
    assert(logInGoogle != null);
    return passwordChange(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result usernameChange(String username),
    Result passwordChange(String password),
    Result logIn(),
    Result logInGoogle(),
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
    @required Result usernameChange(_UsernameChange value),
    @required Result passwordChange(_PasswordChange value),
    @required Result logIn(_LogIn value),
    @required Result logInGoogle(_LogInGoogle value),
  }) {
    assert(usernameChange != null);
    assert(passwordChange != null);
    assert(logIn != null);
    assert(logInGoogle != null);
    return passwordChange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result usernameChange(_UsernameChange value),
    Result passwordChange(_PasswordChange value),
    Result logIn(_LogIn value),
    Result logInGoogle(_LogInGoogle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChange != null) {
      return passwordChange(this);
    }
    return orElse();
  }
}

abstract class _PasswordChange implements LogInFormEvent {
  const factory _PasswordChange(String password) = _$_PasswordChange;

  String get password;
  _$PasswordChangeCopyWith<_PasswordChange> get copyWith;
}

abstract class _$LogInCopyWith<$Res> {
  factory _$LogInCopyWith(_LogIn value, $Res Function(_LogIn) then) =
  __$LogInCopyWithImpl<$Res>;
}

class __$LogInCopyWithImpl<$Res> extends _$LogInFormEventCopyWithImpl<$Res>
  implements _$LogInCopyWith<$Res> {
  __$LogInCopyWithImpl(_LogIn _value, $Res Function(_LogIn) _then)
    : super(_value, (v) => _then(v as _LogIn));

  @override
  _LogIn get _value => super._value as _LogIn;
}

class _$_LogIn implements _LogIn {
  const _$_LogIn();

  @override
  String toString() {
    return 'LogInFormEvent.logIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LogIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result usernameChange(String username),
    @required Result passwordChange(String password),
    @required Result logIn(),
    @required Result logInGoogle(),
  }) {
    assert(usernameChange != null);
    assert(passwordChange != null);
    assert(logIn != null);
    assert(logInGoogle != null);
    return logIn();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result usernameChange(String username),
    Result passwordChange(String password),
    Result logIn(),
    Result logInGoogle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logIn != null) {
      return logIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result usernameChange(_UsernameChange value),
    @required Result passwordChange(_PasswordChange value),
    @required Result logIn(_LogIn value),
    @required Result logInGoogle(_LogInGoogle value),
  }) {
    assert(usernameChange != null);
    assert(passwordChange != null);
    assert(logIn != null);
    assert(logInGoogle != null);
    return logIn(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result usernameChange(_UsernameChange value),
    Result passwordChange(_PasswordChange value),
    Result logIn(_LogIn value),
    Result logInGoogle(_LogInGoogle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logIn != null) {
      return logIn(this);
    }
    return orElse();
  }
}

abstract class _LogIn implements LogInFormEvent {
  const factory _LogIn() = _$_LogIn;
}

abstract class _$LogInGoogleCopyWith<$Res> {
  factory _$LogInGoogleCopyWith(_LogInGoogle value, $Res Function(_LogInGoogle) then) =
  __$LogInGoogleCopyWithImpl<$Res>;
}

class __$LogInGoogleCopyWithImpl<$Res> extends _$LogInFormEventCopyWithImpl<$Res>
  implements _$LogInGoogleCopyWith<$Res> {
  __$LogInGoogleCopyWithImpl(_LogInGoogle _value, $Res Function(_LogInGoogle) _then)
    : super(_value, (v) => _then(v as _LogInGoogle));

  @override
  _LogInGoogle get _value => super._value as _LogInGoogle;
}

class _$_LogInGoogle implements _LogInGoogle {
  const _$_LogInGoogle();

  @override
  String toString() {
    return 'LogInFormEvent.logInGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LogInGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result usernameChange(String username),
    @required Result passwordChange(String password),
    @required Result logIn(),
    @required Result logInGoogle(),
  }) {
    assert(usernameChange != null);
    assert(passwordChange != null);
    assert(logIn != null);
    assert(logInGoogle != null);
    return logInGoogle();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result usernameChange(String username),
    Result passwordChange(String password),
    Result logIn(),
    Result logInGoogle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logInGoogle != null) {
      return logInGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result usernameChange(_UsernameChange value),
    @required Result passwordChange(_PasswordChange value),
    @required Result logIn(_LogIn value),
    @required Result logInGoogle(_LogInGoogle value),
  }) {
    assert(usernameChange != null);
    assert(passwordChange != null);
    assert(logIn != null);
    assert(logInGoogle != null);
    return logInGoogle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result usernameChange(_UsernameChange value),
    Result passwordChange(_PasswordChange value),
    Result logIn(_LogIn value),
    Result logInGoogle(_LogInGoogle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logInGoogle != null) {
      return logInGoogle(this);
    }
    return orElse();
  }
}

abstract class _LogInGoogle implements LogInFormEvent {
  const factory _LogInGoogle() = _$_LogInGoogle;
}

class _$LogInFormStateTearOff {
  const _$LogInFormStateTearOff();

  _LogInFormState call({@required Name username,
    @required Password password,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<Failure, Unit>> failureOrSuccessOption}) {
    return _LogInFormState(
      username: username,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $LogInFormState = _$LogInFormStateTearOff();

mixin _$LogInFormState {
  Name get username;
  Password get password;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<Failure, Unit>> get failureOrSuccessOption;

  $LogInFormStateCopyWith<LogInFormState> get copyWith;
}

abstract class $LogInFormStateCopyWith<$Res> {
  factory $LogInFormStateCopyWith(LogInFormState value, $Res Function(LogInFormState) then) =
  _$LogInFormStateCopyWithImpl<$Res>;
  
  $Res call({Name username,
    Password password,
    bool showErrorMessages,
    bool isSubmitting,
    Option<Either<Failure, Unit>> failureOrSuccessOption});
}

class _$LogInFormStateCopyWithImpl<$Res>
  implements $LogInFormStateCopyWith<$Res> {
  _$LogInFormStateCopyWithImpl(this._value, this._then);

  final LogInFormState _value;
  // ignore: unused_field
  final $Res Function(LogInFormState) _then;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as Name,
      password: password == freezed ? _value.password : password as Password,
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

abstract class _$LogInFormStateCopyWith<$Res>
  implements $LogInFormStateCopyWith<$Res> {
  factory _$LogInFormStateCopyWith(_LogInFormState value, $Res Function(_LogInFormState) then) =
  __$LogInFormStateCopyWithImpl<$Res>;
  @override
  $Res call({Name username,
    Password password,
    bool showErrorMessages,
    bool isSubmitting,
    Option<Either<Failure, Unit>> failureOrSuccessOption});
}

class __$LogInFormStateCopyWithImpl<$Res> extends _$LogInFormStateCopyWithImpl<$Res>
  implements _$LogInFormStateCopyWith<$Res> {
  __$LogInFormStateCopyWithImpl(_LogInFormState _value, $Res Function(_LogInFormState) _then)
    : super(_value, (v) => _then(v as _LogInFormState));

  @override
  _LogInFormState get _value => super._value as _LogInFormState;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_LogInFormState(
      username: username == freezed ? _value.username : username as Name,
      password: password == freezed ? _value.password : password as Password,
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

class _$_LogInFormState implements _LogInFormState {
  const _$_LogInFormState({@required this.username,
    @required this.password,
    @required this.showErrorMessages,
    @required this.isSubmitting,
    @required this.failureOrSuccessOption})
      : assert(username != null),
        assert(password != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(failureOrSuccessOption != null);

  @override
  final Name username;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Failure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'LogInFormState(username: $username, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LogInFormState &&
          (identical(other.username, username) ||
            const DeepCollectionEquality()
              .equals(other.username, username)) &&
          (identical(other.password, password) ||
            const DeepCollectionEquality()
              .equals(other.password, password)) &&
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
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @override
  _$LogInFormStateCopyWith<_LogInFormState> get copyWith =>
    __$LogInFormStateCopyWithImpl<_LogInFormState>(this, _$identity);
}

abstract class _LogInFormState implements LogInFormState {
  const factory _LogInFormState({@required Name username,
    @required Password password,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<Failure, Unit>> failureOrSuccessOption}) =
  _$_LogInFormState;

  @override
  Name get username;
  @override
  Password get password;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<Failure, Unit>> get failureOrSuccessOption;
  @override
  _$LogInFormStateCopyWith<_LogInFormState> get copyWith;
}
