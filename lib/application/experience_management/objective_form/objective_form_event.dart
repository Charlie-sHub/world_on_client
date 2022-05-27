part of 'objective_form_bloc.dart';

@freezed
class ObjectiveFormEvent with _$ObjectiveFormEvent {
  const factory ObjectiveFormEvent.initialized() = _Initialized;

  const factory ObjectiveFormEvent.descriptionChanged(
    String description,
  ) = _DescriptionChanged;

  const factory ObjectiveFormEvent.titleChanged(
    String title,
  ) = _TitleChanged;

  const factory ObjectiveFormEvent.coordinatesChanged({
    required double latitude,
    required double longitude,
  }) = _CoordinatesChanged;

  const factory ObjectiveFormEvent.imageChanged(
    File imageFile,
  ) = _ImageChanged;

  const factory ObjectiveFormEvent.submitted() = _Submitted;
}
