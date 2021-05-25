part of 'share_experience_internally_bloc.dart';

@freezed
abstract class ShareExperienceInternallyState with _$ShareExperienceInternallyState {
  const factory ShareExperienceInternallyState({
    required Experience experience,
    required KtSet<User> users,
    required bool submitted,
  }) = _ShareExperienceInternallyState;

  factory ShareExperienceInternallyState.initial() => ShareExperienceInternallyState(
        experience: Experience.empty(),
        users: const KtSet.empty(),
        submitted: false,
      );
}
