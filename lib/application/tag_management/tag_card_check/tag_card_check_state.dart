part of 'tag_card_check_bloc.dart';

@freezed
abstract class TagCardCheckState with _$TagCardCheckState {
  const factory TagCardCheckState.initial() = _Initial;

  const factory TagCardCheckState.inInterests() = _InInterests;

  const factory TagCardCheckState.notInInterests() = _NotInInterests;
}
