part of 'tag_management_form_bloc.dart';

@freezed
class TagManagementFormEvent with _$TagManagementFormEvent {
  const factory TagManagementFormEvent.initialized(
    Option<Tag> tagOption,
  ) = _Initialized;

  const factory TagManagementFormEvent.nameChanged(
    String name,
  ) = _NameChanged;

  const factory TagManagementFormEvent.submitted() = _Submitted;
}
