import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'experience_management_show_case_bloc.freezed.dart';
part 'experience_management_show_case_event.dart';
part 'experience_management_show_case_state.dart';

@injectable
class ExperienceManagementShowCaseBloc extends Bloc<
    ExperienceManagementShowCaseEvent, ExperienceManagementShowCaseState> {
  ExperienceManagementShowCaseBloc()
      : super(const ExperienceManagementShowCaseState.showNot()) {
    on<_HelpButtonPressed>(_onHelpButtonPressed);
    on<_Finished>(_onFinished);
  }

  void _onHelpButtonPressed(_HelpButtonPressed event, Emitter emit) {
    emit(const ExperienceManagementShowCaseState.show());
  }

  void _onFinished(_Finished event, Emitter emit) {
    emit(const ExperienceManagementShowCaseState.showNot());
  }
}
