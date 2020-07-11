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
  OptionsFormBloc() : super(OptionsFormState.initial());

  @override
  Stream<OptionsFormState> mapEventToState(OptionsFormEvent event) async* {
    yield* event.map(
      initialized: onInitialized,
      languageCodeChanged: onLanguageCodeChanged,
      submitted: onSubmitted,
    );
  }

  Stream<OptionsFormState> onSubmitted(_Submitted event) async* {
    Either<Failure, Unit> _failureOrSuccess;
    yield state.copyWith(
      isSubmitting: true,
    );
    // If state.options.isValid when validity check is added to the Options
    final _saveGlobalOptions = getIt<SaveGlobalOptions>();
    _failureOrSuccess = await _saveGlobalOptions(
      Params(options: state.options),
    );
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      failureOrSuccessOption: optionOf(_failureOrSuccess),
    );
  }

  Stream<OptionsFormState> onLanguageCodeChanged(_LanguageCodeChanged event) async* {
    yield state.copyWith(
      options: state.options.copyWith(
        languageCode: event.languageCode,
      ),
      failureOrSuccessOption: none(),
    );
  }

  Stream<OptionsFormState> onInitialized(_Initialized event) async* {
    yield event.optionsOption.fold(
      () => state,
      (options) => state.copyWith(
        options: options,
      ),
    );
  }
}
