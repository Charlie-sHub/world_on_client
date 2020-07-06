part of 'registration_form_bloc.dart';

@freezed
abstract class RegistrationFormEvent with _$RegistrationFormEvent {
  const factory RegistrationFormEvent.initialized() = _Initialized;

  const factory RegistrationFormEvent.nameChanged(String name) = _NameChanged;

  const factory RegistrationFormEvent.usernameChanged(String username) = _UsernameChanged;

  const factory RegistrationFormEvent.passwordChanged(String password) = _PasswordChanged;

  const factory RegistrationFormEvent.emailAddressChanged(String emailAddress) = _EmailAddressChanged;

  const factory RegistrationFormEvent.birthdayChanged(DateTime birthday) = _BirthdayChanged;

  const factory RegistrationFormEvent.descriptionChanged(String description) = _DescriptionChanged;

  const factory RegistrationFormEvent.interestsChanged(Set<Tag> interests) = _InterestsChanged;

  const factory RegistrationFormEvent.submitted() = _Submitted;
}
