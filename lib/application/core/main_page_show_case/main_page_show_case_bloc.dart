import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'main_page_show_case_bloc.freezed.dart';
part 'main_page_show_case_event.dart';
part 'main_page_show_case_state.dart';

@injectable
class MainPageShowCaseBloc
    extends Bloc<MainPageShowCaseEvent, MainPageShowCaseState> {
  MainPageShowCaseBloc() : super(const MainPageShowCaseState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_Finished>(_onFinished);
  }

  void _onInitialized(_Initialized event, Emitter emit) {
    if (event.isNewUser) {
      emit(const MainPageShowCaseState.show());
    } else {
      emit(const MainPageShowCaseState.showNot());
    }
  }

  void _onFinished(_Finished event, Emitter emit) {
    emit(const MainPageShowCaseState.showNot());
  }
}
