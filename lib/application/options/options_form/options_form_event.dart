part of 'options_form_bloc.dart';

@freezed
class OptionsFormEvent with _$OptionsFormEvent {
  const factory OptionsFormEvent.initialized(Option<Options> optionsOption) = _Initialized;

  const factory OptionsFormEvent.languageCodeChanged(String languageCode) = _LanguageCodeChanged;

  const factory OptionsFormEvent.submitted() = _Submitted;
}
