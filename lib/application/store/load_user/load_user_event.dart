part of 'load_user_bloc.dart';

@freezed
abstract class LoadUserEvent with _$LoadUserEvent {
  const factory LoadUserEvent.loadedUser() = _LoadedUser;
}
