part of 'load_user_bloc.dart';

@freezed
class LoadUserEvent with _$LoadUserEvent {
  const factory LoadUserEvent.loadedUser() = _LoadedUser;
}
