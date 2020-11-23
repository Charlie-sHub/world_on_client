// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'log_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LogInFormEventTearOff {
  const _$LogInFormEventTearOff();

// ignore: unused_element
  _EmailChanged emailChanged(String email) {
    return _EmailChanged(
      email,
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

/// @nodoc
// ignore: unused_element
const $LogInFormEvent = _$LogInFormEventTearOff();

/// @nodoc
mixin _$LogInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult loggedIn(),
    @required TResult loggedInGoogle(),
  });

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult loggedIn(),
    TResult loggedInGoogle(),
    @required TResult orElse(),
  });

  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult loggedIn(_LoggedIn value),
    @required TResult loggedInGoogle(_LoggedInGoogle value),
  });

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult loggedIn(_LoggedIn value),
    TResult loggedInGoogle(_LoggedInGoogle value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LogInFormEventCopyWith<$Res> {
  factory $LogInFormEventCopyWith(LogInFormEvent value, $Res Function(LogInFormEvent) then) = _$LogInFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogInFormEventCopyWithImpl<$Res> implements $LogInFormEventCopyWith<$Res> {
  _$LogInFormEventCopyWithImpl(this._value, this._then);

  final LogInFormEvent _value;
  // ignore: unused_field
  final $Res Function(LogInFormEvent) _then;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(_EmailChanged value, $Res Function(_EmailChanged) then) = __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res> extends _$LogInFormEventCopyWithImpl<$Res> implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(_EmailChanged _value, $Res Function(_EmailChanged) _then) : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_EmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'LogInFormEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EmailChanged && (identical(other.email, email) || const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith => __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult loggedIn(),
    @required TResult loggedInGoogle(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loggedIn != null);
    assert(loggedInGoogle != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult loggedIn(),
    TResult loggedInGoogle(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult loggedIn(_LoggedIn value),
    @required TResult loggedInGoogle(_LoggedInGoogle value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loggedIn != null);
    assert(loggedInGoogle != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult loggedIn(_LoggedIn value),
    TResult loggedInGoogle(_LoggedInGoogle value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements LogInFormEvent {
  const factory _EmailChanged(String email) = _$_EmailChanged;

  String get email;
  _$EmailChangedCopyWith<_EmailChanged> get copyWith;
}

/// @nodoc
abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(_PasswordChanged value, $Res Function(_PasswordChanged) then) = __$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res> extends _$LogInFormEventCopyWithImpl<$Res> implements _$PasswordChangedCopyWith<$Res> {
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

/// @nodoc
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
    return identical(this, other) || (other is _PasswordChanged && (identical(other.password, password) || const DeepCollectionEquality().equals(other.password, password)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith => __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult loggedIn(),
    @required TResult loggedInGoogle(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loggedIn != null);
    assert(loggedInGoogle != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult loggedIn(),
    TResult loggedInGoogle(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult loggedIn(_LoggedIn value),
    @required TResult loggedInGoogle(_LoggedInGoogle value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loggedIn != null);
    assert(loggedInGoogle != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult loggedIn(_LoggedIn value),
    TResult loggedInGoogle(_LoggedInGoogle value),
    @required TResult orElse(),
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

/// @nodoc
abstract class _$LoggedInCopyWith<$Res> {
  factory _$LoggedInCopyWith(_LoggedIn value, $Res Function(_LoggedIn) then) = __$LoggedInCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoggedInCopyWithImpl<$Res> extends _$LogInFormEventCopyWithImpl<$Res> implements _$LoggedInCopyWith<$Res> {
  __$LoggedInCopyWithImpl(_LoggedIn _value, $Res Function(_LoggedIn) _then) : super(_value, (v) => _then(v as _LoggedIn));

  @override
  _LoggedIn get _value => super._value as _LoggedIn;
}

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult loggedIn(),
    @required TResult loggedInGoogle(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loggedIn != null);
    assert(loggedInGoogle != null);
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult loggedIn(),
    TResult loggedInGoogle(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult loggedIn(_LoggedIn value),
    @required TResult loggedInGoogle(_LoggedInGoogle value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loggedIn != null);
    assert(loggedInGoogle != null);
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult loggedIn(_LoggedIn value),
    TResult loggedInGoogle(_LoggedInGoogle value),
    @required TResult orElse(),
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

/// @nodoc
abstract class _$LoggedInGoogleCopyWith<$Res> {
  factory _$LoggedInGoogleCopyWith(_LoggedInGoogle value, $Res Function(_LoggedInGoogle) then) = __$LoggedInGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoggedInGoogleCopyWithImpl<$Res> extends _$LogInFormEventCopyWithImpl<$Res> implements _$LoggedInGoogleCopyWith<$Res> {
  __$LoggedInGoogleCopyWithImpl(_LoggedInGoogle _value, $Res Function(_LoggedInGoogle) _then) : super(_value, (v) => _then(v as _LoggedInGoogle));

  @override
  _LoggedInGoogle get _value => super._value as _LoggedInGoogle;
}

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult loggedIn(),
    @required TResult loggedInGoogle(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loggedIn != null);
    assert(loggedInGoogle != null);
    return loggedInGoogle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult loggedIn(),
    TResult loggedInGoogle(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loggedInGoogle != null) {
      return loggedInGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult loggedIn(_LoggedIn value),
    @required TResult loggedInGoogle(_LoggedInGoogle value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loggedIn != null);
    assert(loggedInGoogle != null);
    return loggedInGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult loggedIn(_LoggedIn value),
    TResult loggedInGoogle(_LoggedInGoogle value),
    @required TResult orElse(),
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

/// @nodoc
class _$LogInFormStateTearOff {
  const _$LogInFormStateTearOff();

// ignore: unused_element
  _LogInFormState call(
      {@required EmailAddress email, @required Password password, @required bool showErrorMessages, @required bool isSubmitting, @required Option<Either<Failure, Unit>> failureOrSuccessOption}) {
    return _LogInFormState(
      email: email,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LogInFormState = _$LogInFormStateTearOff();

/// @nodoc
mixin _$LogInFormState {
  EmailAddress get email;
  Password get password;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<Failure, Unit>> get failureOrSuccessOption;

  $LogInFormStateCopyWith<LogInFormState> get copyWith;
}

/// @nodoc
abstract class $LogInFormStateCopyWith<$Res> {
  factory $LogInFormStateCopyWith(LogInFormState value, $Res Function(LogInFormState) then) = _$LogInFormStateCopyWithImpl<$Res>;
  $Res call({EmailAddress email, Password password, bool showErrorMessages, bool isSubmitting, Option<Either<Failure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$LogInFormStateCopyWithImpl<$Res> implements $LogInFormStateCopyWith<$Res> {
  _$LogInFormStateCopyWithImpl(this._value, this._then);

  final LogInFormState _value;
  // ignore: unused_field
  final $Res Function(LogInFormState) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed ? _value.showErrorMessages : showErrorMessages as bool,
      isSubmitting: isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed ? _value.failureOrSuccessOption : failureOrSuccessOption as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$LogInFormStateCopyWith<$Res> implements $LogInFormStateCopyWith<$Res> {
  factory _$LogInFormStateCopyWith(_LogInFormState value, $Res Function(_LogInFormState) then) = __$LogInFormStateCopyWithImpl<$Res>;
  @override
  $Res call({EmailAddress email, Password password, bool showErrorMessages, bool isSubmitting, Option<Either<Failure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$LogInFormStateCopyWithImpl<$Res> extends _$LogInFormStateCopyWithImpl<$Res> implements _$LogInFormStateCopyWith<$Res> {
  __$LogInFormStateCopyWithImpl(_LogInFormState _value, $Res Function(_LogInFormState) _then) : super(_value, (v) => _then(v as _LogInFormState));

  @override
  _LogInFormState get _value => super._value as _LogInFormState;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_LogInFormState(
      email: email == freezed ? _value.email : email as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed ? _value.showErrorMessages : showErrorMessages as bool,
      isSubmitting: isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed ? _value.failureOrSuccessOption : failureOrSuccessOption as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_LogInFormState implements _LogInFormState {
  const _$_LogInFormState({@required this.email, @required this.password, @required this.showErrorMessages, @required this.isSubmitting, @required this.failureOrSuccessOption})
      : assert(email != null),
        assert(password != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(failureOrSuccessOption != null);

  @override
  final EmailAddress email;
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
    return 'LogInFormState(email: $email, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LogInFormState &&
            (identical(other.email, email) || const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) || const DeepCollectionEquality().equals(other.password, password)) &&
            (identical(other.showErrorMessages, showErrorMessages) || const DeepCollectionEquality().equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) || const DeepCollectionEquality().equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) || const DeepCollectionEquality().equals(other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @override
  _$LogInFormStateCopyWith<_LogInFormState> get copyWith => __$LogInFormStateCopyWithImpl<_LogInFormState>(this, _$identity);
}

abstract class _LogInFormState implements LogInFormState {
  const factory _LogInFormState(
      {@required EmailAddress email,
      @required Password password,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<Failure, Unit>> failureOrSuccessOption}) = _$_LogInFormState;

  @override
  EmailAddress get email;
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
