part of 'experience_card_like_check_bloc.dart';

@freezed
abstract class ExperienceCardLikeCheckState with _$ExperienceCardLikeCheckState {
  const factory ExperienceCardLikeCheckState.initial() = _Initial;

  const factory ExperienceCardLikeCheckState.likes() = _Likes;

  const factory ExperienceCardLikeCheckState.neutral() = _Neutral;
}
