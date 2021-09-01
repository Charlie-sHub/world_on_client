import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'experience_management_show_case_bloc.freezed.dart';
part 'experience_management_show_case_event.dart';
part 'experience_management_show_case_state.dart';

@injectable
class ExperienceManagementShowCaseBloc
    extends Bloc<ExperienceManagementShowCaseEvent, ExperienceManagementShowCaseState> {
  ExperienceManagementShowCaseBloc() : super(const ExperienceManagementShowCaseState.showNot());

  @override
  Stream<ExperienceManagementShowCaseState> mapEventToState(ExperienceManagementShowCaseEvent event) async* {
    yield* event.map(
      helpButtonPressed: _onHelpButtonPressed,
      finished: _onFinished,
    );
  }

  Stream<ExperienceManagementShowCaseState> _onHelpButtonPressed(_HelpButtonPressed event) async* {
    yield const ExperienceManagementShowCaseState.show();
  }

  Stream<ExperienceManagementShowCaseState> _onFinished(_Finished event) async* {
    yield const ExperienceManagementShowCaseState.showNot();
  }
}
