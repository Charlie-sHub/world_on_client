part of 'registration_form_bloc.dart';

@freezed
abstract class RegistrationFormEvent with _$RegistrationFormEvent {
  const factory RegistrationFormEvent.initialize() = _Initialize;

  const factory RegistrationFormEvent.nameChange(String name) = _NameChange;

  const factory RegistrationFormEvent.usernameChange(String username) = _UsernameChange;

  const factory RegistrationFormEvent.passwordChange(String password) = _PasswordChange;

  const factory RegistrationFormEvent.emailAddressChange(String emailAddress) = _EmailAddressChange;

  const factory RegistrationFormEvent.birthdayChange(DateTime birthday) = _BirthdayChange;

  const factory RegistrationFormEvent.descriptionChange(String description) = _DescriptionChange;

  const factory RegistrationFormEvent.interestsChange(Set<Tag> interests) = _InterestsChange;

  const factory RegistrationFormEvent.submit() = _Submit;
}
