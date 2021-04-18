part of 'search_by_name_form_bloc.dart';

@freezed
class SearchByNameFormState with _$SearchByNameFormState {
  const factory SearchByNameFormState({
    required SearchTerm searchTerm,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<ValueFailure> failureOrSuccessOption,
  }) = _SearchByNameFormState;

  factory SearchByNameFormState.initial() => SearchByNameFormState(
        searchTerm: SearchTerm(""),
        showErrorMessages: false,
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
