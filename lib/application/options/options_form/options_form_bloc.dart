import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/options/options.dart';
import 'package:worldon/domain/options/use_case/save_global_options.dart';
import 'package:worldon/injection.dart';

part 'options_form_bloc.freezed.dart';
part 'options_form_event.dart';
part 'options_form_state.dart';

@injectable
class OptionsFormBloc extends Bloc<OptionsFormEvent, OptionsFormState> {
  OptionsFormBloc() : super(OptionsFormState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_LanguageCodeChanged>(_onLanguageCodeChanged);
    on<_Submitted>(_onSubmitted);
  }

  FutureOr<void> _onSubmitted(_, Emitter emit) async {
    Either<Failure, Unit> failureOrSuccess;
    emit(
      state.copyWith(
        isSubmitting: true,
      ),
    );
    // Add validity check to the options if needed
    // And check it here before submitting of course
    failureOrSuccess = await getIt<SaveGlobalOptions>()(
      Params(options: state.options),
    );
    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        failureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }

  void _onLanguageCodeChanged(_LanguageCodeChanged event, Emitter emit) {
    emit(
      state.copyWith(
        options: state.options.copyWith(
          languageCode: event.languageCode,
        ),
        failureOrSuccessOption: none(),
      ),
    );
  }

  void _onInitialized(_Initialized event, Emitter emit) {
    emit(
      event.optionsOption.fold(
        () => state,
        (options) => state.copyWith(
          options: options,
        ),
      ),
    );
  }
}
