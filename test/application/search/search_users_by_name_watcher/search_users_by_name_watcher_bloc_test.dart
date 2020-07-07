import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/search/use_case/search_users_by_name.dart';
import 'package:worldon/domain/search/use_case/search_users_by_username.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/search/search_users_by_name_watcher/search_users_by_name_watcher_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../test_descriptions.dart';

void main() {
  SearchUsersByUsername searchUsersByUsername;
  SearchUsersByName searchUsersByName;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      searchUsersByUsername = getIt<SearchUsersByUsername>();
      searchUsersByName = getIt<SearchUsersByName>();
    },
  );
  final searchTerm = SearchTerm("Test");
  final usersFound = {User.empty()};
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<SearchUsersByNameWatcherBloc>(),
    skip: 0,
    expect: [const SearchUsersByNameWatcherState.initial()],
  );
  group(
    "Testing watchUsersFoundByUsernameStarted event",
    () {
      blocTest(
        TestDescription.shouldEmitSuccess,
        build: () async {
          when(searchUsersByUsername.call(any)).thenAnswer((_) => createStream(right(usersFound)));
          return getIt<SearchUsersByNameWatcherBloc>();
        },
        act: (bloc) async {
          bloc.add(SearchUsersByNameWatcherEvent.watchUsersFoundByUsernameStarted(searchTerm));
          // This shouldn't be necessary, but it seems bloc_test "ignores" when events are added from the bloc itself
          bloc.add(SearchUsersByNameWatcherEvent.searchResultsReceived(right(usersFound)));
        },
        verify: (_) async {
          verify(searchUsersByUsername.call(any));
          verifyNoMoreInteractions(searchUsersByUsername);
        },
        expect: [
          const SearchUsersByNameWatcherState.searchInProgress(),
          SearchUsersByNameWatcherState.searchSuccess(usersFound),
        ],
      );
      blocTest(
        TestDescription.shouldEmitFailure,
        build: () async {
          when(searchUsersByUsername.call(any)).thenAnswer((_) => createStream(left(failure)));
          return getIt<SearchUsersByNameWatcherBloc>();
        },
        act: (bloc) async {
          bloc.add(SearchUsersByNameWatcherEvent.watchUsersFoundByUsernameStarted(searchTerm));
          // This shouldn't be necessary, but it seems bloc_test "ignores" when events are added from the bloc itself
          bloc.add(SearchUsersByNameWatcherEvent.searchResultsReceived(left(failure)));
        },
        verify: (_) async {
          verify(searchUsersByUsername.call(any));
          verifyNoMoreInteractions(searchUsersByUsername);
        },
        expect: [
          const SearchUsersByNameWatcherState.searchInProgress(),
          const SearchUsersByNameWatcherState.searchFailure(failure),
        ],
      );
    },
  );
  group(
    "Testing watchUsersFoundByNameStarted event",
    () {
      blocTest(
        TestDescription.shouldEmitSuccess,
        build: () async {
          when(searchUsersByName.call(any)).thenAnswer((_) => createStream(right(usersFound)));
          return getIt<SearchUsersByNameWatcherBloc>();
        },
        act: (bloc) async {
          bloc.add(SearchUsersByNameWatcherEvent.watchUsersFoundByNameStarted(searchTerm));
          // This shouldn't be necessary, but it seems bloc_test "ignores" when events are added from the bloc itself
          bloc.add(SearchUsersByNameWatcherEvent.searchResultsReceived(right(usersFound)));
        },
        verify: (_) async {
          verify(searchUsersByName.call(any));
          verifyNoMoreInteractions(searchUsersByName);
        },
        expect: [
          const SearchUsersByNameWatcherState.searchInProgress(),
          SearchUsersByNameWatcherState.searchSuccess(usersFound),
        ],
      );
      blocTest(
        TestDescription.shouldEmitFailure,
        build: () async {
          when(searchUsersByName.call(any)).thenAnswer((_) => createStream(left(failure)));
          return getIt<SearchUsersByNameWatcherBloc>();
        },
        act: (bloc) async {
          bloc.add(SearchUsersByNameWatcherEvent.watchUsersFoundByNameStarted(searchTerm));
          // This shouldn't be necessary, but it seems bloc_test "ignores" when events are added from the bloc itself
          bloc.add(SearchUsersByNameWatcherEvent.searchResultsReceived(left(failure)));
        },
        verify: (_) async {
          verify(searchUsersByName.call(any));
          verifyNoMoreInteractions(searchUsersByName);
        },
        expect: [
          const SearchUsersByNameWatcherState.searchInProgress(),
          const SearchUsersByNameWatcherState.searchFailure(failure),
        ],
      );
    },
  );
}
