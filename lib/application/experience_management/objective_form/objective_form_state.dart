part of 'objective_form_bloc.dart';

@freezed
abstract class ObjectiveFormState implements _$ObjectiveFormState {
  const factory ObjectiveFormState({
    @required Objective objective,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required bool loadedCoordinates,
  }) = _ObjectiveFormState;

  factory ObjectiveFormState.initial() => ObjectiveFormState(
        objective: Objective.empty(),
        showErrorMessages: false,
        isSubmitting: false,
        loadedCoordinates: false,
      );
}
