part of 'experience_management_show_case_bloc.dart';

@freezed
class ExperienceManagementShowCaseEvent with _$ExperienceManagementShowCaseEvent {
  const factory ExperienceManagementShowCaseEvent.helpButtonPressed() = _HelpButtonPressed;

  const factory ExperienceManagementShowCaseEvent.finished() = _Finished;
}
