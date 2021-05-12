import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/search/search_by_name_form/search_by_name_form_bloc.dart';
import 'package:worldon/application/search/search_users_by_name_watcher/search_users_by_name_watcher_bloc.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/core/widgets/cards/user_card/simple_square_user_card.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';

import '../search_error_display.dart';

class SearchUsersTabView extends StatelessWidget {
  final SearchTerm searchTerm;

  const SearchUsersTabView({
    Key? key,
    required this.searchTerm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchUsersByNameWatcherBloc, SearchUsersByNameWatcherState>(
      builder: (context, state) => state.map(
        initial: (_) => Container(),
        searchInProgress: (_) => const WorldOnProgressIndicator(
          size: 30,
        ),
        searchSuccess: (state) => ListView.builder(
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          itemCount: state.usersFound.size,
          itemBuilder: (context, index) {
            final _user = state.usersFound[index];
            if (_user.isValid) {
              return SimpleSquareUserCard(
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
        searchFailure: (state) => SearchErrorDisplay(
          retryFunction: () => context.read<SearchUsersByNameWatcherBloc>().add(
                SearchUsersByNameWatcherEvent.watchUsersFoundByNameStarted(
                  context.read<SearchByNameFormBloc>().state.searchTerm,
                ),
              ),
          failure: state.failure,
          specificMessage: some(S.of(context).notFoundErrorSearch),
        ),
      ),
    );
  }
}
