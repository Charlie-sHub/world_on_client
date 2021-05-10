// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'log_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LogInFormEventTearOff {
  const _$LogInFormEventTearOff();

  _EmailChanged emailChanged(String email) {
    return _EmailChanged(
      email,
    );
  }

  _PasswordChanged passwordChanged(String password) {
    return _PasswordChanged(
      password,
    );
  }

  _LoggedIn loggedIn() {
    return const _LoggedIn();
  }

  _LoggedInGoogle loggedInGoogle() {
    return const _LoggedInGoogle();
  }
}

/// @nodoc
const $LogInFormEvent = _$LogInFormEventTearOff();

/// @nodoc
mixin _$LogInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() loggedIn,
    required TResult Function() loggedInGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? loggedIn,
    TResult Function()? loggedInGoogle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedInGoogle value) loggedInGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedInGoogle value)? loggedInGoogle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
    Object? email = freezed,
  }) {
    return _then(_EmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.email);

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

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith => __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() loggedIn,
    required TResult Function() loggedInGoogle,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? loggedIn,
    TResult Function()? loggedInGoogle,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedInGoogle value) loggedInGoogle,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedInGoogle value)? loggedInGoogle,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements LogInFormEvent {
  const factory _EmailChanged(String email) = _$_EmailChanged;

  String get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith => throw _privateConstructorUsedError;
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
    return 'LogInFormEvent.passwordChanged(password: $password)';
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
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() loggedIn,
    required TResult Function() loggedInGoogle,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? loggedIn,
    TResult Function()? loggedInGoogle,
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
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedInGoogle value) loggedInGoogle,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedInGoogle value)? loggedInGoogle,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements LogInFormEvent {
  const factory _PasswordChanged(String password) = _$_PasswordChanged;

  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith => throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() loggedIn,
    required TResult Function() loggedInGoogle,
  }) {
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? loggedIn,
    TResult Function()? loggedInGoogle,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedInGoogle value) loggedInGoogle,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedInGoogle value)? loggedInGoogle,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() loggedIn,
    required TResult Function() loggedInGoogle,
  }) {
    return loggedInGoogle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? loggedIn,
    TResult Function()? loggedInGoogle,
    required TResult orElse(),
  }) {
    if (loggedInGoogle != null) {
      return loggedInGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedInGoogle value) loggedInGoogle,
  }) {
    return loggedInGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedInGoogle value)? loggedInGoogle,
    required TResult orElse(),
  }) {
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

  _LogInFormState call(
      {required EmailAddress email,
      required Password password,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<User> thirdPartyUserOption,
      required Option<Either<Failure, Unit>> failureOrSuccessOption}) {
    return _LogInFormState(
      email: email,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      thirdPartyUserOption: thirdPartyUserOption,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $LogInFormState = _$LogInFormStateTearOff();

/// @nodoc
mixin _$LogInFormState {
  EmailAddress get email => throw _privateConstructorUsedError;

  Password get password => throw _privateConstructorUsedError;

  bool get showErrorMessages => throw _privateConstructorUsedError;

  bool get isSubmitting => throw _privateConstructorUsedError;

  Option<User> get thirdPartyUserOption => throw _privateConstructorUsedError;

  Option<Either<Failure, Unit>> get failureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LogInFormStateCopyWith<LogInFormState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInFormStateCopyWith<$Res> {
  factory $LogInFormStateCopyWith(LogInFormState value, $Res Function(LogInFormState) then) = _$LogInFormStateCopyWithImpl<$Res>;

  $Res call({EmailAddress email, Password password, bool showErrorMessages, bool isSubmitting, Option<User> thirdPartyUserOption, Option<Either<Failure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$LogInFormStateCopyWithImpl<$Res> implements $LogInFormStateCopyWith<$Res> {
  _$LogInFormStateCopyWithImpl(this._value, this._then);

  final LogInFormState _value;

  // ignore: unused_field
  final $Res Function(LogInFormState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? thirdPartyUserOption = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      thirdPartyUserOption: thirdPartyUserOption == freezed
          ? _value.thirdPartyUserOption
          : thirdPartyUserOption // ignore: cast_nullable_to_non_nullable
              as Option<User>,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$LogInFormStateCopyWith<$Res> implements $LogInFormStateCopyWith<$Res> {
  factory _$LogInFormStateCopyWith(_LogInFormState value, $Res Function(_LogInFormState) then) = __$LogInFormStateCopyWithImpl<$Res>;

  @override
  $Res call({EmailAddress email, Password password, bool showErrorMessages, bool isSubmitting, Option<User> thirdPartyUserOption, Option<Either<Failure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$LogInFormStateCopyWithImpl<$Res> extends _$LogInFormStateCopyWithImpl<$Res> implements _$LogInFormStateCopyWith<$Res> {
  __$LogInFormStateCopyWithImpl(_LogInFormState _value, $Res Function(_LogInFormState) _then) : super(_value, (v) => _then(v as _LogInFormState));

  @override
  _LogInFormState get _value => super._value as _LogInFormState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? thirdPartyUserOption = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_LogInFormState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      thirdPartyUserOption: thirdPartyUserOption == freezed
          ? _value.thirdPartyUserOption
          : thirdPartyUserOption // ignore: cast_nullable_to_non_nullable
              as Option<User>,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_LogInFormState implements _LogInFormState {
  const _$_LogInFormState(
      {required this.email, required this.password, required this.showErrorMessages, required this.isSubmitting, required this.thirdPartyUserOption, required this.failureOrSuccessOption});

  @override
  final EmailAddress email;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<User> thirdPartyUserOption;
  @override
  final Option<Either<Failure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'LogInFormState(email: $email, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, thirdPartyUserOption: $thirdPartyUserOption, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LogInFormState &&
            (identical(other.email, email) || const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) || const DeepCollectionEquality().equals(other.password, password)) &&
            (identical(other.showErrorMessages, showErrorMessages) || const DeepCollectionEquality().equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) || const DeepCollectionEquality().equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.thirdPartyUserOption, thirdPartyUserOption) || const DeepCollectionEquality().equals(other.thirdPartyUserOption, thirdPartyUserOption)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) || const DeepCollectionEquality().equals(other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(thirdPartyUserOption) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$LogInFormStateCopyWith<_LogInFormState> get copyWith => __$LogInFormStateCopyWithImpl<_LogInFormState>(this, _$identity);
}

abstract class _LogInFormState implements LogInFormState {
  const factory _LogInFormState(
      {required EmailAddress email,
      required Password password,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<User> thirdPartyUserOption,
      required Option<Either<Failure, Unit>> failureOrSuccessOption}) = _$_LogInFormState;

  @override
  EmailAddress get email => throw _privateConstructorUsedError;

  @override
  Password get password => throw _privateConstructorUsedError;

  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;

  @override
  bool get isSubmitting => throw _privateConstructorUsedError;

  @override
  Option<User> get thirdPartyUserOption => throw _privateConstructorUsedError;

  @override
  Option<Either<Failure, Unit>> get failureOrSuccessOption => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$LogInFormStateCopyWith<_LogInFormState> get copyWith => throw _privateConstructorUsedError;
}
