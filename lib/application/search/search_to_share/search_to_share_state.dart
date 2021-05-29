part of 'search_to_share_bloc.dart';

@freezed
class SearchToShareState with _$SearchToShareState {
  const factory SearchToShareState({
    required SearchTerm searchTerm,
    required KtList<User> users,
    required Option<Failure> failureOrSuccessOption,
  }) = _SearchToShareState;

  factory SearchToShareState.initial() => SearchToShareState(
        searchTerm: SearchTerm(""),
        users: const KtList.empty(),
        failureOrSuccessOption: none(),
      );
}
