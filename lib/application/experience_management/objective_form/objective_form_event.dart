part of 'objective_form_bloc.dart';

@freezed
abstract class ObjectiveFormEvent with _$ObjectiveFormEvent {
  // TODO: create initialized event to set the coordinates
  const factory ObjectiveFormEvent.descriptionChanged(String description) = _DescriptionChanged;

  const factory ObjectiveFormEvent.coordinatesChanged({
    @required double latitude,
    @required double longitude,
  }) = _CoordinatesChanged;

  const factory ObjectiveFormEvent.imageChanged(File imageFile) = _ImageChanged;

  const factory ObjectiveFormEvent.submitted() = _Submitted;
}
