part of 'registration_form_bloc.dart';

@freezed
abstract class RegistrationFormEvent with _$RegistrationFormEvent {
  const factory RegistrationFormEvent.initialized() = _Initialized;

  const factory RegistrationFormEvent.imageChanged(File imageFile) = _ImageChanged;

  const factory RegistrationFormEvent.nameChanged(String name) = _NameChanged;

  const factory RegistrationFormEvent.usernameChanged(String username) = _UsernameChanged;

  const factory RegistrationFormEvent.passwordChanged(String password) = _PasswordChanged;

  const factory RegistrationFormEvent.passwordConfirmationChanged(String passwordConfirmation) = _PasswordConfirmationChanged;

  const factory RegistrationFormEvent.emailAddressChanged(String emailAddress) = _EmailAddressChanged;

  const factory RegistrationFormEvent.birthdayChanged(DateTime birthday) = _BirthdayChanged;

  const factory RegistrationFormEvent.descriptionChanged(String description) = _DescriptionChanged;

  const factory RegistrationFormEvent.interestsChanged(KtSet<Tag> interests) = _InterestsChanged;

  const factory RegistrationFormEvent.tappedEULA() = _TappedEULA;

  const factory RegistrationFormEvent.submitted() = _Submitted;
}
