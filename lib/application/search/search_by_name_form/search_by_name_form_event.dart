part of 'search_by_name_form_bloc.dart';

@freezed
abstract class SearchByNameFormEvent with _$SearchByNameFormEvent {
  const factory SearchByNameFormEvent.searchTermChanged(String searchTermString) = _SearchTermChanged;

  const factory SearchByNameFormEvent.submitted() = _Submitted;
}
