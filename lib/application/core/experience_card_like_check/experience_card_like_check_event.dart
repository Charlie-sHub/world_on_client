part of 'experience_card_like_check_bloc.dart';

@freezed
abstract class ExperienceCardLikeCheckEvent with _$ExperienceCardLikeCheckEvent {
  const factory ExperienceCardLikeCheckEvent.initialized(Experience experience) = _Initialized;
}
