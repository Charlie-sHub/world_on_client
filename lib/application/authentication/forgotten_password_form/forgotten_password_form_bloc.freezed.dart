// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'forgotten_password_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ForgottenPasswordFormEventTearOff {
  const _$ForgottenPasswordFormEventTearOff();

  _EmailChanged emailChanged(String email) {
    return _EmailChanged(
      email,
    );
  }

  _SentRequest sentRequest() {
    return const _SentRequest();
  }
}

/// @nodoc
const $ForgottenPasswordFormEvent = _$ForgottenPasswordFormEventTearOff();

/// @nodoc
mixin _$ForgottenPasswordFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() sentRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? sentRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_SentRequest value) sentRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_SentRequest value)? sentRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgottenPasswordFormEventCopyWith<$Res> {
  factory $ForgottenPasswordFormEventCopyWith(
          ForgottenPasswordFormEvent value, $Res Function(ForgottenPasswordFormEvent) then) =
      _$ForgottenPasswordFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForgottenPasswordFormEventCopyWithImpl<$Res>
    implements $ForgottenPasswordFormEventCopyWith<$Res> {
  _$ForgottenPasswordFormEventCopyWithImpl(this._value, this._then);

  final ForgottenPasswordFormEvent _value;

  // ignore: unused_field
  final $Res Function(ForgottenPasswordFormEvent) _then;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(_EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;

  $Res call({String email});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res> extends _$ForgottenPasswordFormEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(_EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

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
    return 'ForgottenPasswordFormEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() sentRequest,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? sentRequest,
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
    required TResult Function(_SentRequest value) sentRequest,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_SentRequest value)? sentRequest,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements ForgottenPasswordFormEvent {
  const factory _EmailChanged(String email) = _$_EmailChanged;

  String get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SentRequestCopyWith<$Res> {
  factory _$SentRequestCopyWith(_SentRequest value, $Res Function(_SentRequest) then) =
      __$SentRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$SentRequestCopyWithImpl<$Res> extends _$ForgottenPasswordFormEventCopyWithImpl<$Res>
    implements _$SentRequestCopyWith<$Res> {
  __$SentRequestCopyWithImpl(_SentRequest _value, $Res Function(_SentRequest) _then)
      : super(_value, (v) => _then(v as _SentRequest));

  @override
  _SentRequest get _value => super._value as _SentRequest;
}

/// @nodoc

class _$_SentRequest implements _SentRequest {
  const _$_SentRequest();

  @override
  String toString() {
    return 'ForgottenPasswordFormEvent.sentRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SentRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() sentRequest,
  }) {
    return sentRequest();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? sentRequest,
    required TResult orElse(),
  }) {
    if (sentRequest != null) {
      return sentRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_SentRequest value) sentRequest,
  }) {
    return sentRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_SentRequest value)? sentRequest,
    required TResult orElse(),
  }) {
    if (sentRequest != null) {
      return sentRequest(this);
    }
    return orElse();
  }
}

abstract class _SentRequest implements ForgottenPasswordFormEvent {
  const factory _SentRequest() = _$_SentRequest;
}

/// @nodoc
class _$ForgottenPasswordFormStateTearOff {
  const _$ForgottenPasswordFormStateTearOff();

  _ForgottenPasswordFormState call(
      {required EmailAddress email,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<Failure, Unit>> failureOrSuccessOption}) {
    return _ForgottenPasswordFormState(
      email: email,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $ForgottenPasswordFormState = _$ForgottenPasswordFormStateTearOff();

/// @nodoc
mixin _$ForgottenPasswordFormState {
  EmailAddress get email => throw _privateConstructorUsedError;

  bool get showErrorMessages => throw _privateConstructorUsedError;

  bool get isSubmitting => throw _privateConstructorUsedError;

  Option<Either<Failure, Unit>> get failureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgottenPasswordFormStateCopyWith<ForgottenPasswordFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgottenPasswordFormStateCopyWith<$Res> {
  factory $ForgottenPasswordFormStateCopyWith(
          ForgottenPasswordFormState value, $Res Function(ForgottenPasswordFormState) then) =
      _$ForgottenPasswordFormStateCopyWithImpl<$Res>;

  $Res call(
      {EmailAddress email,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Failure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$ForgottenPasswordFormStateCopyWithImpl<$Res>
    implements $ForgottenPasswordFormStateCopyWith<$Res> {
  _$ForgottenPasswordFormStateCopyWithImpl(this._value, this._then);

  final ForgottenPasswordFormState _value;

  // ignore: unused_field
  final $Res Function(ForgottenPasswordFormState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
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
abstract class _$ForgottenPasswordFormStateCopyWith<$Res>
    implements $ForgottenPasswordFormStateCopyWith<$Res> {
  factory _$ForgottenPasswordFormStateCopyWith(
          _ForgottenPasswordFormState value, $Res Function(_ForgottenPasswordFormState) then) =
      __$ForgottenPasswordFormStateCopyWithImpl<$Res>;

  @override
  $Res call(
      {EmailAddress email,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Failure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$ForgottenPasswordFormStateCopyWithImpl<$Res>
    extends _$ForgottenPasswordFormStateCopyWithImpl<$Res>
    implements _$ForgottenPasswordFormStateCopyWith<$Res> {
  __$ForgottenPasswordFormStateCopyWithImpl(
      _ForgottenPasswordFormState _value, $Res Function(_ForgottenPasswordFormState) _then)
      : super(_value, (v) => _then(v as _ForgottenPasswordFormState));

  @override
  _ForgottenPasswordFormState get _value => super._value as _ForgottenPasswordFormState;

  @override
  $Res call({
    Object? email = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_ForgottenPasswordFormState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
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

class _$_ForgottenPasswordFormState implements _ForgottenPasswordFormState {
  const _$_ForgottenPasswordFormState(
      {required this.email,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.failureOrSuccessOption});

  @override
  final EmailAddress email;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Failure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'ForgottenPasswordFormState(email: $email, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForgottenPasswordFormState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality().equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$ForgottenPasswordFormStateCopyWith<_ForgottenPasswordFormState> get copyWith =>
      __$ForgottenPasswordFormStateCopyWithImpl<_ForgottenPasswordFormState>(this, _$identity);
}

abstract class _ForgottenPasswordFormState implements ForgottenPasswordFormState {
  const factory _ForgottenPasswordFormState(
          {required EmailAddress email,
          required bool showErrorMessages,
          required bool isSubmitting,
          required Option<Either<Failure, Unit>> failureOrSuccessOption}) =
      _$_ForgottenPasswordFormState;

  @override
  EmailAddress get email => throw _privateConstructorUsedError;

  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;

  @override
  bool get isSubmitting => throw _privateConstructorUsedError;

  @override
  Option<Either<Failure, Unit>> get failureOrSuccessOption => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$ForgottenPasswordFormStateCopyWith<_ForgottenPasswordFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
