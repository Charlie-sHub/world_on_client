import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_users_watcher/profile_users_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/widget/cards/error_card.dart';
import 'package:worldon/views/core/widget/cards/user_card/user_card.dart';
import 'package:worldon/views/core/widget/error/error_display.dart';
import 'package:worldon/views/core/widget/misc/world_on_progress_indicator.dart';
import 'package:worldon/views/profile/widget/profile_users_tab_view/profile_users_unicorn_dialer.dart';

import '../../../../injection.dart';

class ProfileUsersTabView extends StatelessWidget {
  const ProfileUsersTabView({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileUsersWatcherBloc>()
        ..add(
          ProfileUsersWatcherEvent.watchFollowedUsersStarted(user),
        ),
      child: BlocBuilder<ProfileUsersWatcherBloc, ProfileUsersWatcherState>(
        builder: (context, state) => Scaffold(
          floatingActionButton: ProfileUsersUnicornDialer(user: user),
          body: state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => WorldOnProgressIndicator(),
            loadSuccess: (state) => ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: state.users.size,
              itemBuilder: (context, index) {
                final _user = state.users[index];
                if (_user.isValid) {
                  return UserCard(
                    user: _user,
                    key: Key(_user.id.toString()),
                  );
                } else {
                  return ErrorCard(
                    entityType: "User",
                    valueFailureString: _user.failureOption.fold(
                      () => "",
                      (failure) => failure.toString(),
                    ),
                  );
                }
              },
            ),
            loadFailure: (state) => InkWell(
              onTap: () async => context.bloc<ProfileUsersWatcherBloc>().add(
                    ProfileUsersWatcherEvent.watchFollowedUsersStarted(user),
                  ),
              child: ErrorDisplay(failure: state.failure),
            ),
          ),
        ),
      ),
    );
  }
}
