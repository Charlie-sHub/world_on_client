part of 'main_page_show_case_bloc.dart';

@freezed
class MainPageShowCaseEvent with _$MainPageShowCaseEvent {
  const factory MainPageShowCaseEvent.initialized({
    required bool isNewUser,
  }) = _Initialized;

  const factory MainPageShowCaseEvent.finished() = _Finished;
}
