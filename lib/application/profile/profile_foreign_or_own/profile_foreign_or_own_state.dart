part of 'profile_foreign_or_own_bloc.dart';

@freezed
class ProfileForeignOrOwnState with _$ProfileForeignOrOwnState {
  const factory ProfileForeignOrOwnState.initial() = _Initial;

  const factory ProfileForeignOrOwnState.loadInProgress() = _LoadInProgress;

  const factory ProfileForeignOrOwnState.own(User user) = _Own;

  const factory ProfileForeignOrOwnState.foreign(User user) = _Foreign;

  const factory ProfileForeignOrOwnState.loadFailure() = _LoadFailure;
}
