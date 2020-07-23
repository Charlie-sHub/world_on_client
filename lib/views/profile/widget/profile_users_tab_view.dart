import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_users_watcher/profile_users_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/widget/cards/user_card.dart';
import 'package:worldon/views/core/widget/cards/user_error_card.dart';
import 'package:worldon/views/core/widget/critical_error_display.dart';
import 'package:worldon/views/core/widget/world_on_progress_indicator.dart';

import '../../../injection.dart';

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
      child: BlocConsumer<ProfileUsersWatcherBloc, ProfileUsersWatcherState>(
        listener: (context, state) {},
        builder: (context, state) => state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => WorldOnProgressIndicator(),
          loadSuccess: (state) => ListView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: state.users.size,
            itemBuilder: (context, index) {
              final _user = state.users[index];
              if (_user.isValid) {
                return UserCard(user: _user);
              } else {
                return UserErrorCard(user: _user);
              }
            },
          ),
          loadFailure: (state) => InkWell(
            onTap: () async => context.bloc<ProfileUsersWatcherBloc>().add(
                  ProfileUsersWatcherEvent.watchFollowedUsersStarted(user),
                ),
            child: CriticalErrorDisplay(failure: state.failure),
          ),
        ),
      ),
    );
  }
}
