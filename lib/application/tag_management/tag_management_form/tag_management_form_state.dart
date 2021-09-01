part of 'tag_management_form_bloc.dart';

@freezed
class TagManagementFormState with _$TagManagementFormState {
  const factory TagManagementFormState({
    required Tag tag,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSubmitting,
    required Option<Either<Failure, Unit>> failureOrSuccessOption,
  }) = _TagManagementFormState;

  factory TagManagementFormState.initial() => TagManagementFormState(
        tag: Tag.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
