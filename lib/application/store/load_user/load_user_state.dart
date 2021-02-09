part of 'load_user_bloc.dart';

@freezed
abstract class LoadUserState with _$LoadUserState {
  const factory LoadUserState.initial() = _Initial;

  const factory LoadUserState.actionInProgress() = _ActionInProgress;

  const factory LoadUserState.loadSuccess(User user) = _LoadSuccess;

  const factory LoadUserState.loadFailure(Failure<dynamic> failure) = _LoadFailure;
}
