part of 'tag_card_check_bloc.dart';

@freezed
abstract class TagCardCheckEvent with _$TagCardCheckEvent {
  const factory TagCardCheckEvent.initialized(Tag tag) = _Initialized;
}
