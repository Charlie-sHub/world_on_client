part of 'profile_foreign_or_own_bloc.dart';

@freezed
class ProfileForeignOrOwnEvent with _$ProfileForeignOrOwnEvent {
  // It's an option because if one enters the [ProfileBody] through the bottom navigation it'll send a none()
  // as opposed to entering the profile page through some [User] list where it'll send some([User])
  const factory ProfileForeignOrOwnEvent.initializedForeignOrOwn(Option<UniqueId> userIdOption) = _InitializedForeignOrOwn;
}
