import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'main_page_show_case_bloc.freezed.dart';
part 'main_page_show_case_event.dart';
part 'main_page_show_case_state.dart';

@injectable
class MainPageShowCaseBloc extends Bloc<MainPageShowCaseEvent, MainPageShowCaseState> {
  MainPageShowCaseBloc() : super(const MainPageShowCaseState.initial());

  @override
  Stream<MainPageShowCaseState> mapEventToState(MainPageShowCaseEvent event) async* {
    yield* event.map(
      initialized: _onInitialized,
      finished: _onFinished,
    );
  }

  Stream<MainPageShowCaseState> _onInitialized(_Initialized event) async* {
    if (event.isNewUser) {
      yield const MainPageShowCaseState.show();
    } else {
      yield const MainPageShowCaseState.showNot();
    }
  }

  Stream<MainPageShowCaseState> _onFinished(_Finished event) async* {
    yield const MainPageShowCaseState.showNot();
  }
}
