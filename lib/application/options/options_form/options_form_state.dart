part of 'options_form_bloc.dart';

@freezed
class OptionsFormState with _$OptionsFormState {
  const factory OptionsFormState({
    required Options options,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<Failure, Unit>> failureOrSuccessOption,
  }) = _OptionsFormState;

  factory OptionsFormState.initial() => OptionsFormState(
        options: Options.empty(),
        showErrorMessages: false,
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
