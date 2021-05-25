part of 'share_experience_internally_bloc.dart';

@freezed
abstract class ShareExperienceInternallyEvent with _$ShareExperienceInternallyEvent {
  const factory ShareExperienceInternallyEvent.initialized(Experience experience) = _Initialized;

  const factory ShareExperienceInternallyEvent.removedUser(User user) = _RemovedUser;

  const factory ShareExperienceInternallyEvent.addedUser(User user) = _AddedUser;

  const factory ShareExperienceInternallyEvent.shared() = _Shared;
}
