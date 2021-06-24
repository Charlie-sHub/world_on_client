part of 'search_to_share_bloc.dart';

@freezed
class SearchToShareEvent with _$SearchToShareEvent {
  const factory SearchToShareEvent.initialized() = _Initialized;

  const factory SearchToShareEvent.searchTermChanged(String searchTermString) = _SearchTermChanged;

  const factory SearchToShareEvent.submitted() = _Submitted;
}
