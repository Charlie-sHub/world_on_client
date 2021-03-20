import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unicorndial/unicorndial.dart';
import 'package:worldon/application/search/search_users_by_name_watcher/search_users_by_name_watcher_bloc.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/generated/l10n.dart';

class SearchUsersUnicornDialer extends StatelessWidget {
  const SearchUsersUnicornDialer({
    Key key,
    @required this.searchTerm,
  }) : super(key: key);

  final SearchTerm searchTerm;

  @override
  Widget build(BuildContext context) {
    return UnicornDialer(
      parentHeroTag: "SearchUsersUnicornDialer",
      hasBackground: false,
      parentButton: const Icon(Icons.format_list_bulleted),
      childButtons: [
        UnicornButton(
          hasLabel: true,
          labelText: S.of(context).username,
          currentButton: FloatingActionButton(
            heroTag: "username",
            mini: true,
            onPressed: () => context.read<SearchUsersByNameWatcherBloc>().add(
                  SearchUsersByNameWatcherEvent.watchUsersFoundByUsernameStarted(searchTerm),
                ),
            child: const Icon(Icons.account_box),
          ),
        ),
        UnicornButton(
          hasLabel: true,
          labelText: S.of(context).name,
          currentButton: FloatingActionButton(
            heroTag: "name",
            mini: true,
            onPressed: () => context.read<SearchUsersByNameWatcherBloc>().add(
                  SearchUsersByNameWatcherEvent.watchUsersFoundByNameStarted(searchTerm),
                ),
            child: const Icon(Icons.assignment_ind),
          ),
        ),
      ],
    );
  }
}
