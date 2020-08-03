part of 'profile_editing_form_bloc.dart';

@freezed
abstract class ProfileEditingFormEvent with _$ProfileEditingFormEvent {
  const factory ProfileEditingFormEvent.initialized() = _Initialized;

  const factory ProfileEditingFormEvent.nameChanged(String name) = _NameChanged;

  const factory ProfileEditingFormEvent.imageChanged(File imageFile) = _ImageChanged;

  const factory ProfileEditingFormEvent.usernameChanged(String username) = _UsernameChanged;

  const factory ProfileEditingFormEvent.passwordChanged(String password) = _PasswordChanged;

  const factory ProfileEditingFormEvent.passwordConfirmationChanged(String passwordConfirmation) = _PasswordConfirmationChanged;

  const factory ProfileEditingFormEvent.emailAddressChanged(String emailAddress) = _EmailAddressChanged;

  const factory ProfileEditingFormEvent.birthdayChanged(DateTime birthday) = _BirthdayChanged;

  const factory ProfileEditingFormEvent.descriptionChanged(String description) = _DescriptionChanged;

  const factory ProfileEditingFormEvent.interestsChanged(Set<Tag> interests) = _InterestsChanged;

  const factory ProfileEditingFormEvent.submitted() = _Submitted;
}
