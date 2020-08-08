import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unicorndial/unicorndial.dart';
import 'package:worldon/application/search/search_by_name_form/search_by_name_form_bloc.dart';
import 'package:worldon/application/search/search_users_by_name_watcher/search_users_by_name_watcher_bloc.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/views/core/widget/cards/error_card.dart';
import 'package:worldon/views/core/widget/cards/user_card.dart';
import 'package:worldon/views/core/widget/critical_error_display.dart';
import 'package:worldon/views/core/widget/world_on_progress_indicator.dart';
import 'package:worldon/views/search/widget/search_something.dart';

class SearchUsersTabView extends StatelessWidget {
  final SearchTerm searchTerm;

  const SearchUsersTabView({
    Key key,
    @required this.searchTerm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchUsersByNameWatcherBloc, SearchUsersByNameWatcherState>(
      builder: (context, state) => state.map(
        initial: (_) => SearchSomething(),
        searchInProgress: (_) => WorldOnProgressIndicator(),
        searchSuccess: (state) => Scaffold(
          floatingActionButton: SearchUsersUnicornDialer(
            searchTerm: context.bloc<SearchByNameFormBloc>().state.searchTerm,
          ),
          body: ListView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: state.usersFound.size,
            itemBuilder: (context, index) {
              final _user = state.usersFound[index];
              if (_user.isValid) {
                return UserCard(user: _user);
              } else {
                return ErrorCard(
                  entityType: "User",
                  valueFailure: _user.failureOption.fold(
                    () => "",
                    (failure) => failure.toString(),
                  ),
                );
              }
            },
          ),
        ),
        searchFailure: (state) => InkWell(
          onTap: () async => context.bloc<SearchUsersByNameWatcherBloc>().add(
                SearchUsersByNameWatcherEvent.watchUsersFoundByNameStarted(searchTerm),
              ),
          child: CriticalErrorDisplay(failure: state.failure),
        ),
      ),
    );
  }
}

class SearchUsersUnicornDialer extends StatelessWidget {
  const SearchUsersUnicornDialer({
    Key key,
    @required this.searchTerm,
  }) : super(key: key);

  final SearchTerm searchTerm;

  @override
  Widget build(BuildContext context) {
    return UnicornDialer(
      hasBackground: false,
      orientation: UnicornOrientation.VERTICAL,
      parentButton: Icon(Icons.format_list_bulleted),
      childButtons: [
        UnicornButton(
          hasLabel: true,
          labelText: "Username",
          currentButton: FloatingActionButton(
            heroTag: "username",
            mini: true,
            onPressed: () => context.bloc<SearchUsersByNameWatcherBloc>().add(
                  SearchUsersByNameWatcherEvent.watchUsersFoundByUsernameStarted(searchTerm),
                ),
            child: const Icon(Icons.account_box),
          ),
        ),
        UnicornButton(
          hasLabel: true,
          labelText: "Name",
          currentButton: FloatingActionButton(
            heroTag: "name",
            mini: true,
            onPressed: () => context.bloc<SearchUsersByNameWatcherBloc>().add(
                  SearchUsersByNameWatcherEvent.watchUsersFoundByNameStarted(searchTerm),
                ),
            child: const Icon(Icons.assignment_ind),
          ),
        ),
      ],
    );
  }
}
