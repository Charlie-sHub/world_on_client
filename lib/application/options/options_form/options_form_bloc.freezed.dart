// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'options_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$OptionsFormEventTearOff {
  const _$OptionsFormEventTearOff();

  _Initialize initialize(Option<Options> optionsOption) {
    return _Initialize(
      optionsOption,
    );
  }

  _LanguageCodeChange languageCodeChange(String languageCode) {
    return _LanguageCodeChange(
      languageCode,
    );
  }

  _Submit submit() {
    return const _Submit();
  }
}

// ignore: unused_element
const $OptionsFormEvent = _$OptionsFormEventTearOff();

mixin _$OptionsFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(Option<Options> optionsOption),
    @required Result languageCodeChange(String languageCode),
    @required Result submit(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Options> optionsOption),
    Result languageCodeChange(String languageCode),
    Result submit(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result languageCodeChange(_LanguageCodeChange value),
    @required Result submit(_Submit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result languageCodeChange(_LanguageCodeChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  });
}

abstract class $OptionsFormEventCopyWith<$Res> {
  factory $OptionsFormEventCopyWith(OptionsFormEvent value, $Res Function(OptionsFormEvent) then) = _$OptionsFormEventCopyWithImpl<$Res>;
}

class _$OptionsFormEventCopyWithImpl<$Res> implements $OptionsFormEventCopyWith<$Res> {
  _$OptionsFormEventCopyWithImpl(this._value, this._then);

  final OptionsFormEvent _value;
  // ignore: unused_field
  final $Res Function(OptionsFormEvent) _then;
}

abstract class _$InitializeCopyWith<$Res> {
  factory _$InitializeCopyWith(_Initialize value, $Res Function(_Initialize) then) =
  __$InitializeCopyWithImpl<$Res>;
  $Res call({Option<Options> optionsOption});
}

class __$InitializeCopyWithImpl<$Res> extends _$OptionsFormEventCopyWithImpl<$Res>
  implements _$InitializeCopyWith<$Res> {
  __$InitializeCopyWithImpl(_Initialize _value, $Res Function(_Initialize) _then)
    : super(_value, (v) => _then(v as _Initialize));

  @override
  _Initialize get _value => super._value as _Initialize;

  @override
  $Res call({
    Object optionsOption = freezed,
  }) {
    return _then(_Initialize(
      optionsOption == freezed
        ? _value.optionsOption
        : optionsOption as Option<Options>,
    ));
  }
}

class _$_Initialize implements _Initialize {
  const _$_Initialize(this.optionsOption) : assert(optionsOption != null);

  @override
  final Option<Options> optionsOption;

  @override
  String toString() {
    return 'OptionsFormEvent.initialize(optionsOption: $optionsOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _Initialize &&
        (identical(other.optionsOption, optionsOption) ||
          const DeepCollectionEquality()
            .equals(other.optionsOption, optionsOption)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(optionsOption);

  @override
  _$InitializeCopyWith<_Initialize> get copyWith =>
    __$InitializeCopyWithImpl<_Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(Option<Options> optionsOption),
    @required Result languageCodeChange(String languageCode),
    @required Result submit(),
  }) {
    assert(initialize != null);
    assert(languageCodeChange != null);
    assert(submit != null);
    return initialize(optionsOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Options> optionsOption),
    Result languageCodeChange(String languageCode),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(optionsOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result languageCodeChange(_LanguageCodeChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialize != null);
    assert(languageCodeChange != null);
    assert(submit != null);
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result languageCodeChange(_LanguageCodeChange value),
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

abstract class _Initialize implements OptionsFormEvent {
  const factory _Initialize(Option<Options> optionsOption) = _$_Initialize;

  Option<Options> get optionsOption;
  _$InitializeCopyWith<_Initialize> get copyWith;
}

abstract class _$LanguageCodeChangeCopyWith<$Res> {
  factory _$LanguageCodeChangeCopyWith(_LanguageCodeChange value, $Res Function(_LanguageCodeChange) then) =
  __$LanguageCodeChangeCopyWithImpl<$Res>;
  $Res call({String languageCode});
}

class __$LanguageCodeChangeCopyWithImpl<$Res> extends _$OptionsFormEventCopyWithImpl<$Res>
  implements _$LanguageCodeChangeCopyWith<$Res> {
  __$LanguageCodeChangeCopyWithImpl(_LanguageCodeChange _value, $Res Function(_LanguageCodeChange) _then)
    : super(_value, (v) => _then(v as _LanguageCodeChange));

  @override
  _LanguageCodeChange get _value => super._value as _LanguageCodeChange;

  @override
  $Res call({
    Object languageCode = freezed,
  }) {
    return _then(_LanguageCodeChange(
      languageCode == freezed ? _value.languageCode : languageCode as String,
    ));
  }
}

class _$_LanguageCodeChange implements _LanguageCodeChange {
  const _$_LanguageCodeChange(this.languageCode) : assert(languageCode != null);

  @override
  final String languageCode;

  @override
  String toString() {
    return 'OptionsFormEvent.languageCodeChange(languageCode: $languageCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _LanguageCodeChange &&
        (identical(other.languageCode, languageCode) ||
          const DeepCollectionEquality()
            .equals(other.languageCode, languageCode)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(languageCode);

  @override
  _$LanguageCodeChangeCopyWith<_LanguageCodeChange> get copyWith =>
    __$LanguageCodeChangeCopyWithImpl<_LanguageCodeChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(Option<Options> optionsOption),
    @required Result languageCodeChange(String languageCode),
    @required Result submit(),
  }) {
    assert(initialize != null);
    assert(languageCodeChange != null);
    assert(submit != null);
    return languageCodeChange(languageCode);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Options> optionsOption),
    Result languageCodeChange(String languageCode),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (languageCodeChange != null) {
      return languageCodeChange(languageCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result languageCodeChange(_LanguageCodeChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialize != null);
    assert(languageCodeChange != null);
    assert(submit != null);
    return languageCodeChange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result languageCodeChange(_LanguageCodeChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (languageCodeChange != null) {
      return languageCodeChange(this);
    }
    return orElse();
  }
}

abstract class _LanguageCodeChange implements OptionsFormEvent {
  const factory _LanguageCodeChange(String languageCode) =
  _$_LanguageCodeChange;

  String get languageCode;
  _$LanguageCodeChangeCopyWith<_LanguageCodeChange> get copyWith;
}

abstract class _$SubmitCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
  __$SubmitCopyWithImpl<$Res>;
}

class __$SubmitCopyWithImpl<$Res> extends _$OptionsFormEventCopyWithImpl<$Res>
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
    return 'OptionsFormEvent.submit()';
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
    @required Result initialize(Option<Options> optionsOption),
    @required Result languageCodeChange(String languageCode),
    @required Result submit(),
  }) {
    assert(initialize != null);
    assert(languageCodeChange != null);
    assert(submit != null);
    return submit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Options> optionsOption),
    Result languageCodeChange(String languageCode),
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
    @required Result languageCodeChange(_LanguageCodeChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialize != null);
    assert(languageCodeChange != null);
    assert(submit != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result languageCodeChange(_LanguageCodeChange value),
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

abstract class _Submit implements OptionsFormEvent {
  const factory _Submit() = _$_Submit;
}

class _$OptionsFormStateTearOff {
  const _$OptionsFormStateTearOff();

  _OptionsFormState call({@required Options options,
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

// ignore: unused_element
const $OptionsFormState = _$OptionsFormStateTearOff();

mixin _$OptionsFormState {
  Options get options;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<Failure, Unit>> get failureOrSuccessOption;

  $OptionsFormStateCopyWith<OptionsFormState> get copyWith;
}

abstract class $OptionsFormStateCopyWith<$Res> {
  factory $OptionsFormStateCopyWith(OptionsFormState value, $Res Function(OptionsFormState) then) =
  _$OptionsFormStateCopyWithImpl<$Res>;
  
  $Res call({Options options,
    bool showErrorMessages,
    bool isSubmitting,
    Option<Either<Failure, Unit>> failureOrSuccessOption});

  $OptionsCopyWith<$Res> get options;
}

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

abstract class _$OptionsFormStateCopyWith<$Res>
  implements $OptionsFormStateCopyWith<$Res> {
  factory _$OptionsFormStateCopyWith(_OptionsFormState value, $Res Function(_OptionsFormState) then) =
  __$OptionsFormStateCopyWithImpl<$Res>;
  @override
  $Res call({Options options,
    bool showErrorMessages,
    bool isSubmitting,
    Option<Either<Failure, Unit>> failureOrSuccessOption});

  @override
  $OptionsCopyWith<$Res> get options;
}

class __$OptionsFormStateCopyWithImpl<$Res> extends _$OptionsFormStateCopyWithImpl<$Res>
  implements _$OptionsFormStateCopyWith<$Res> {
  __$OptionsFormStateCopyWithImpl(_OptionsFormState _value, $Res Function(_OptionsFormState) _then)
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

class _$_OptionsFormState implements _OptionsFormState {
  const _$_OptionsFormState({@required this.options,
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

  @override
  _$OptionsFormStateCopyWith<_OptionsFormState> get copyWith =>
    __$OptionsFormStateCopyWithImpl<_OptionsFormState>(this, _$identity);
}

abstract class _OptionsFormState implements OptionsFormState {
  const factory _OptionsFormState({@required Options options,
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
  _$OptionsFormStateCopyWith<_OptionsFormState> get copyWith;
}
