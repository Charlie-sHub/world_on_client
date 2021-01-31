// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'options_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$OptionsFormEventTearOff {
  const _$OptionsFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<Options> optionsOption) {
    return _Initialized(
      optionsOption,
    );
  }

// ignore: unused_element
  _LanguageCodeChanged languageCodeChanged(String languageCode) {
    return _LanguageCodeChanged(
      languageCode,
    );
  }

// ignore: unused_element
  _Submitted submitted() {
    return const _Submitted();
  }
}

/// @nodoc
// ignore: unused_element
const $OptionsFormEvent = _$OptionsFormEventTearOff();

/// @nodoc
mixin _$OptionsFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Options> optionsOption),
    @required TResult languageCodeChanged(String languageCode),
    @required TResult submitted(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Options> optionsOption),
    TResult languageCodeChanged(String languageCode),
    TResult submitted(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult languageCodeChanged(_LanguageCodeChanged value),
    @required TResult submitted(_Submitted value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult languageCodeChanged(_LanguageCodeChanged value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $OptionsFormEventCopyWith<$Res> {
  factory $OptionsFormEventCopyWith(
          OptionsFormEvent value, $Res Function(OptionsFormEvent) then) =
      _$OptionsFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OptionsFormEventCopyWithImpl<$Res>
    implements $OptionsFormEventCopyWith<$Res> {
  _$OptionsFormEventCopyWithImpl(this._value, this._then);

  final OptionsFormEvent _value;
  // ignore: unused_field
  final $Res Function(OptionsFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Options> optionsOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$OptionsFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object optionsOption = freezed,
  }) {
    return _then(_Initialized(
      optionsOption == freezed
          ? _value.optionsOption
          : optionsOption as Option<Options>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.optionsOption) : assert(optionsOption != null);

  @override
  final Option<Options> optionsOption;

  @override
  String toString() {
    return 'OptionsFormEvent.initialized(optionsOption: $optionsOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.optionsOption, optionsOption) ||
                const DeepCollectionEquality()
                    .equals(other.optionsOption, optionsOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(optionsOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Options> optionsOption),
    @required TResult languageCodeChanged(String languageCode),
    @required TResult submitted(),
  }) {
    assert(initialized != null);
    assert(languageCodeChanged != null);
    assert(submitted != null);
    return initialized(optionsOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Options> optionsOption),
    TResult languageCodeChanged(String languageCode),
    TResult submitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(optionsOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult languageCodeChanged(_LanguageCodeChanged value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(languageCodeChanged != null);
    assert(submitted != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult languageCodeChanged(_LanguageCodeChanged value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements OptionsFormEvent {
  const factory _Initialized(Option<Options> optionsOption) = _$_Initialized;

  Option<Options> get optionsOption;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$LanguageCodeChangedCopyWith<$Res> {
  factory _$LanguageCodeChangedCopyWith(_LanguageCodeChanged value,
          $Res Function(_LanguageCodeChanged) then) =
      __$LanguageCodeChangedCopyWithImpl<$Res>;
  $Res call({String languageCode});
}

/// @nodoc
class __$LanguageCodeChangedCopyWithImpl<$Res>
    extends _$OptionsFormEventCopyWithImpl<$Res>
    implements _$LanguageCodeChangedCopyWith<$Res> {
  __$LanguageCodeChangedCopyWithImpl(
      _LanguageCodeChanged _value, $Res Function(_LanguageCodeChanged) _then)
      : super(_value, (v) => _then(v as _LanguageCodeChanged));

  @override
  _LanguageCodeChanged get _value => super._value as _LanguageCodeChanged;

  @override
  $Res call({
    Object languageCode = freezed,
  }) {
    return _then(_LanguageCodeChanged(
      languageCode == freezed ? _value.languageCode : languageCode as String,
    ));
  }
}

/// @nodoc
class _$_LanguageCodeChanged implements _LanguageCodeChanged {
  const _$_LanguageCodeChanged(this.languageCode)
      : assert(languageCode != null);

  @override
  final String languageCode;

  @override
  String toString() {
    return 'OptionsFormEvent.languageCodeChanged(languageCode: $languageCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LanguageCodeChanged &&
            (identical(other.languageCode, languageCode) ||
                const DeepCollectionEquality()
                    .equals(other.languageCode, languageCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(languageCode);

  @JsonKey(ignore: true)
  @override
  _$LanguageCodeChangedCopyWith<_LanguageCodeChanged> get copyWith =>
      __$LanguageCodeChangedCopyWithImpl<_LanguageCodeChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Options> optionsOption),
    @required TResult languageCodeChanged(String languageCode),
    @required TResult submitted(),
  }) {
    assert(initialized != null);
    assert(languageCodeChanged != null);
    assert(submitted != null);
    return languageCodeChanged(languageCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Options> optionsOption),
    TResult languageCodeChanged(String languageCode),
    TResult submitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (languageCodeChanged != null) {
      return languageCodeChanged(languageCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult languageCodeChanged(_LanguageCodeChanged value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(languageCodeChanged != null);
    assert(submitted != null);
    return languageCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult languageCodeChanged(_LanguageCodeChanged value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (languageCodeChanged != null) {
      return languageCodeChanged(this);
    }
    return orElse();
  }
}

abstract class _LanguageCodeChanged implements OptionsFormEvent {
  const factory _LanguageCodeChanged(String languageCode) =
      _$_LanguageCodeChanged;

  String get languageCode;
  @JsonKey(ignore: true)
  _$LanguageCodeChangedCopyWith<_LanguageCodeChanged> get copyWith;
}

/// @nodoc
abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(
          _Submitted value, $Res Function(_Submitted) then) =
      __$SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmittedCopyWithImpl<$Res>
    extends _$OptionsFormEventCopyWithImpl<$Res>
    implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(_Submitted _value, $Res Function(_Submitted) _then)
      : super(_value, (v) => _then(v as _Submitted));

  @override
  _Submitted get _value => super._value as _Submitted;
}

/// @nodoc
class _$_Submitted implements _Submitted {
  const _$_Submitted();

  @override
  String toString() {
    return 'OptionsFormEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Options> optionsOption),
    @required TResult languageCodeChanged(String languageCode),
    @required TResult submitted(),
  }) {
    assert(initialized != null);
    assert(languageCodeChanged != null);
    assert(submitted != null);
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Options> optionsOption),
    TResult languageCodeChanged(String languageCode),
    TResult submitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult languageCodeChanged(_LanguageCodeChanged value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(languageCodeChanged != null);
    assert(submitted != null);
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult languageCodeChanged(_LanguageCodeChanged value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements OptionsFormEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
class _$OptionsFormStateTearOff {
  const _$OptionsFormStateTearOff();

// ignore: unused_element
  _OptionsFormState call(
      {@required Options options,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<Failure, Unit>> failureOrSuccessOption}) {
    return _OptionsFormState(
      options: options,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OptionsFormState = _$OptionsFormStateTearOff();

/// @nodoc
mixin _$OptionsFormState {
  Options get options;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<Failure, Unit>> get failureOrSuccessOption;

  @JsonKey(ignore: true)
  $OptionsFormStateCopyWith<OptionsFormState> get copyWith;
}

/// @nodoc
abstract class $OptionsFormStateCopyWith<$Res> {
  factory $OptionsFormStateCopyWith(
          OptionsFormState value, $Res Function(OptionsFormState) then) =
      _$OptionsFormStateCopyWithImpl<$Res>;
  $Res call(
      {Options options,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Failure, Unit>> failureOrSuccessOption});

  $OptionsCopyWith<$Res> get options;
}

/// @nodoc
class _$OptionsFormStateCopyWithImpl<$Res>
    implements $OptionsFormStateCopyWith<$Res> {
  _$OptionsFormStateCopyWithImpl(this._value, this._then);

  final OptionsFormState _value;
  // ignore: unused_field
  final $Res Function(OptionsFormState) _then;

  @override
  $Res call({
    Object options = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      options: options == freezed ? _value.options : options as Options,
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
  $OptionsCopyWith<$Res> get options {
    if (_value.options == null) {
      return null;
    }
    return $OptionsCopyWith<$Res>(_value.options, (value) {
      return _then(_value.copyWith(options: value));
    });
  }
}

/// @nodoc
abstract class _$OptionsFormStateCopyWith<$Res>
    implements $OptionsFormStateCopyWith<$Res> {
  factory _$OptionsFormStateCopyWith(
          _OptionsFormState value, $Res Function(_OptionsFormState) then) =
      __$OptionsFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Options options,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Failure, Unit>> failureOrSuccessOption});

  @override
  $OptionsCopyWith<$Res> get options;
}

/// @nodoc
class __$OptionsFormStateCopyWithImpl<$Res>
    extends _$OptionsFormStateCopyWithImpl<$Res>
    implements _$OptionsFormStateCopyWith<$Res> {
  __$OptionsFormStateCopyWithImpl(
      _OptionsFormState _value, $Res Function(_OptionsFormState) _then)
      : super(_value, (v) => _then(v as _OptionsFormState));

  @override
  _OptionsFormState get _value => super._value as _OptionsFormState;

  @override
  $Res call({
    Object options = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_OptionsFormState(
      options: options == freezed ? _value.options : options as Options,
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

/// @nodoc
class _$_OptionsFormState implements _OptionsFormState {
  const _$_OptionsFormState(
      {@required this.options,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.failureOrSuccessOption})
      : assert(options != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(failureOrSuccessOption != null);

  @override
  final Options options;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Failure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'OptionsFormState(options: $options, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OptionsFormState &&
            (identical(other.options, options) ||
                const DeepCollectionEquality()
                    .equals(other.options, options)) &&
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
      const DeepCollectionEquality().hash(options) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$OptionsFormStateCopyWith<_OptionsFormState> get copyWith =>
      __$OptionsFormStateCopyWithImpl<_OptionsFormState>(this, _$identity);
}

abstract class _OptionsFormState implements OptionsFormState {
  const factory _OptionsFormState(
          {@required Options options,
          @required bool showErrorMessages,
          @required bool isSubmitting,
          @required Option<Either<Failure, Unit>> failureOrSuccessOption}) =
      _$_OptionsFormState;

  @override
  Options get options;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<Failure, Unit>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$OptionsFormStateCopyWith<_OptionsFormState> get copyWith;
}
