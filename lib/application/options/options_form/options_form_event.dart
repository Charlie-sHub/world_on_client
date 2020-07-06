part of 'options_form_bloc.dart';

@freezed
abstract class OptionsFormEvent with _$OptionsFormEvent {
  const factory OptionsFormEvent.initialize(Option<Options> optionsOption) = _Initialize;

  const factory OptionsFormEvent.languageCodeChange(String languageCode) = _LanguageCodeChange;

  const factory OptionsFormEvent.submit() = _Submit;
// TODO: Implement this event
// const factory OptionsFormEvent.deleteUser(User user) = _DeleteUser;
}
