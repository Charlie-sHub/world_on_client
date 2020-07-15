// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'log_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LogInFormEventTearOff {
  const _$LogInFormEventTearOff();

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
  _LoggedIn loggedIn() {
    return const _LoggedIn();
  }

// ignore: unused_element
  _LoggedInGoogle loggedInGoogle() {
    return const _LoggedInGoogle();
  }
}

// ignore: unused_element
const $LogInFormEvent = _$LogInFormEventTearOff();

mixin _$LogInFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result usernameChanged(String username),
    @required Result passwordChanged(String password),
    @required Result loggedIn(),
    @required Result loggedInGoogle(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result usernameChanged(String username),
    Result passwordChanged(String password),
    Result loggedIn(),
    Result loggedInGoogle(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result usernameChanged(_UsernameChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result loggedIn(_LoggedIn value),
    @required Result loggedInGoogle(_LoggedInGoogle value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result usernameChanged(_UsernameChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result loggedIn(_LoggedIn value),
    Result loggedInGoogle(_LoggedInGoogle value),
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

abstract class _$UsernameChangedCopyWith<$Res> {
  factory _$UsernameChangedCopyWith(_UsernameChanged value, $Res Function(_UsernameChanged) then) =
  __$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String username});
}

class __$UsernameChangedCopyWithImpl<$Res> extends _$LogInFormEventCopyWithImpl<$Res>
  implements _$UsernameChangedCopyWith<$Res> {
  __$UsernameChangedCopyWithImpl(_UsernameChanged _value, $Res Function(_UsernameChanged) _then)
    : super(_value, (v) => _then(v as _UsernameChanged));

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
    return 'LogInFormEvent.usernameChanged(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _UsernameChanged &&
        (identical(other.username, username) ||
          const DeepCollectionEquality()
            .equals(other.username, username)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);

  @override
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith =>
    __$UsernameChangedCopyWithImpl<_UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result usernameChanged(String username),
    @required Result passwordChanged(String password),
    @required Result loggedIn(),
    @required Result loggedInGoogle(),
  }) {
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(loggedIn != null);
    assert(loggedInGoogle != null);
    return usernameChanged(username);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result usernameChanged(String username),
    Result passwordChanged(String password),
    Result loggedIn(),
    Result loggedInGoogle(),
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
    @required Result usernameChanged(_UsernameChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result loggedIn(_LoggedIn value),
    @required Result loggedInGoogle(_LoggedInGoogle value),
  }) {
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(loggedIn != null);
    assert(loggedInGoogle != null);
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result usernameChanged(_UsernameChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result loggedIn(_LoggedIn value),
    Result loggedInGoogle(_LoggedInGoogle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChanged implements LogInFormEvent {
  const factory _UsernameChanged(String username) = _$_UsernameChanged;

  String get username;
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith;
}

abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(_PasswordChanged value, $Res Function(_PasswordChanged) then) =
  __$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

class __$PasswordChangedCopyWithImpl<$Res> extends _$LogInFormEventCopyWithImpl<$Res>
  implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(_PasswordChanged _value, $Res Function(_PasswordChanged) _then)
    : super(_value, (v) => _then(v as _PasswordChanged));

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
    return 'LogInFormEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _PasswordChanged &&
        (identical(other.password, password) ||
          const DeepCollectionEquality()
            .equals(other.password, password)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
    __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result usernameChanged(String username),
    @required Result passwordChanged(String password),
    @required Result loggedIn(),
    @required Result loggedInGoogle(),
  }) {
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(loggedIn != null);
    assert(loggedInGoogle != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result usernameChanged(String username),
    Result passwordChanged(String password),
    Result loggedIn(),
    Result loggedInGoogle(),
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
    @required Result usernameChanged(_UsernameChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result loggedIn(_LoggedIn value),
    @required Result loggedInGoogle(_LoggedInGoogle value),
  }) {
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(loggedIn != null);
    assert(loggedInGoogle != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result usernameChanged(_UsernameChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result loggedIn(_LoggedIn value),
    Result loggedInGoogle(_LoggedInGoogle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements LogInFormEvent {
  const factory _PasswordChanged(String password) = _$_PasswordChanged;

  String get password;
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith;
}

abstract class _$LoggedInCopyWith<$Res> {
  factory _$LoggedInCopyWith(_LoggedIn value, $Res Function(_LoggedIn) then) =
  __$LoggedInCopyWithImpl<$Res>;
}

class __$LoggedInCopyWithImpl<$Res> extends _$LogInFormEventCopyWithImpl<$Res>
  implements _$LoggedInCopyWith<$Res> {
  __$LoggedInCopyWithImpl(_LoggedIn _value, $Res Function(_LoggedIn) _then)
    : super(_value, (v) => _then(v as _LoggedIn));

  @override
  _LoggedIn get _value => super._value as _LoggedIn;
}

class _$_LoggedIn implements _LoggedIn {
  const _$_LoggedIn();

  @override
  String toString() {
    return 'LogInFormEvent.loggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoggedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result usernameChanged(String username),
    @required Result passwordChanged(String password),
    @required Result loggedIn(),
    @required Result loggedInGoogle(),
  }) {
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(loggedIn != null);
    assert(loggedInGoogle != null);
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result usernameChanged(String username),
    Result passwordChanged(String password),
    Result loggedIn(),
    Result loggedInGoogle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result usernameChanged(_UsernameChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result loggedIn(_LoggedIn value),
    @required Result loggedInGoogle(_LoggedInGoogle value),
  }) {
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(loggedIn != null);
    assert(loggedInGoogle != null);
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result usernameChanged(_UsernameChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result loggedIn(_LoggedIn value),
    Result loggedInGoogle(_LoggedInGoogle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedIn implements LogInFormEvent {
  const factory _LoggedIn() = _$_LoggedIn;
}

abstract class _$LoggedInGoogleCopyWith<$Res> {
  factory _$LoggedInGoogleCopyWith(_LoggedInGoogle value, $Res Function(_LoggedInGoogle) then) =
  __$LoggedInGoogleCopyWithImpl<$Res>;
}

class __$LoggedInGoogleCopyWithImpl<$Res> extends _$LogInFormEventCopyWithImpl<$Res>
  implements _$LoggedInGoogleCopyWith<$Res> {
  __$LoggedInGoogleCopyWithImpl(_LoggedInGoogle _value, $Res Function(_LoggedInGoogle) _then)
    : super(_value, (v) => _then(v as _LoggedInGoogle));

  @override
  _LoggedInGoogle get _value => super._value as _LoggedInGoogle;
}

class _$_LoggedInGoogle implements _LoggedInGoogle {
  const _$_LoggedInGoogle();

  @override
  String toString() {
    return 'LogInFormEvent.loggedInGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoggedInGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result usernameChanged(String username),
    @required Result passwordChanged(String password),
    @required Result loggedIn(),
    @required Result loggedInGoogle(),
  }) {
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(loggedIn != null);
    assert(loggedInGoogle != null);
    return loggedInGoogle();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result usernameChanged(String username),
    Result passwordChanged(String password),
    Result loggedIn(),
    Result loggedInGoogle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedInGoogle != null) {
      return loggedInGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result usernameChanged(_UsernameChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result loggedIn(_LoggedIn value),
    @required Result loggedInGoogle(_LoggedInGoogle value),
  }) {
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(loggedIn != null);
    assert(loggedInGoogle != null);
    return loggedInGoogle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result usernameChanged(_UsernameChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result loggedIn(_LoggedIn value),
    Result loggedInGoogle(_LoggedInGoogle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedInGoogle != null) {
      return loggedInGoogle(this);
    }
    return orElse();
  }
}

abstract class _LoggedInGoogle implements LogInFormEvent {
  const factory _LoggedInGoogle() = _$_LoggedInGoogle;
}

class _$LogInFormStateTearOff {
  const _$LogInFormStateTearOff();

// ignore: unused_element
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
