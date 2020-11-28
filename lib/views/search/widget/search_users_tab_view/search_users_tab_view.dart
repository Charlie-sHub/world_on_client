import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/search/search_by_name_form/search_by_name_form_bloc.dart';
import 'package:worldon/application/search/search_users_by_name_watcher/search_users_by_name_watcher_bloc.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widget/cards/error_card.dart';
import 'package:worldon/views/core/widget/cards/user_card/user_card.dart';
import 'package:worldon/views/core/widget/error/error_display.dart';
import 'package:worldon/views/core/widget/misc/world_on_progress_indicator.dart';
import 'package:worldon/views/search/widget/search_something.dart';
import 'package:worldon/views/search/widget/search_users_tab_view/search_users_unicorn_dialer.dart';

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
        searchInProgress: (_) => const WorldOnProgressIndicator(),
        searchSuccess: (state) => Scaffold(
          floatingActionButton: SearchUsersUnicornDialer(
            searchTerm: context.bloc<SearchByNameFormBloc>().state.searchTerm,
          ),
          body: ListView.builder(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(10),
            itemCount: state.usersFound.size,
            itemBuilder: (context, index) {
              final _user = state.usersFound[index];
              if (_user.isValid) {
                return UserCard(
                  user: _user,
                  key: Key(_user.id.toString()),
                );
              } else {
                return ErrorCard(
                  entityType: S.of(context).user,
                  valueFailureString: _user.failureOption.fold(
                    () => S.of(context).noError,
                    (failure) => failure.toString(),
                  ),
                );
              }
            },
          ),
        ),
        searchFailure: (state) => ErrorDisplay(
          retryFunction: () => context.bloc<SearchUsersByNameWatcherBloc>().add(
                SearchUsersByNameWatcherEvent.watchUsersFoundByNameStarted(searchTerm),
              ),
          failure: state.failure,
        ),
      ),
    );
  }
}
