import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_users_watcher/profile_users_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/core/widgets/cards/user_card/circular_avatar_user_card.dart';
import 'package:worldon/views/core/widgets/error/error_display.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';
import 'package:worldon/views/profile/widgets/profile_users_tab_view/profile_users_dialer.dart';

import '../../../../injection.dart';

class ProfileUsersTabView extends StatelessWidget {
  const ProfileUsersTabView({
    Key? key,
    required this.user,
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
        builder: (context, state) => Stack(
          children: [
            state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => const WorldOnProgressIndicator(
                size: 50,
              ),
              loadSuccess: (state) => GridView.builder(
                physics: const ClampingScrollPhysics(),
                padding: const EdgeInsets.only(
                  bottom: kFloatingActionButtonMargin + 50,
                  left: 10,
                  right: 10,
                  top: 10,
                ),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  mainAxisExtent: 120,
                ),
                itemCount: state.users.size,
                itemBuilder: (context, index) {
                  final _user = state.users[index];
                  if (_user.isValid) {
                    return CircularAvatarUserCard(
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
              loadFailure: (state) => ErrorDisplay(
                retryFunction: () => context.read<ProfileUsersWatcherBloc>().add(
                      ProfileUsersWatcherEvent.watchFollowedUsersStarted(user),
                    ),
                failure: state.failure,
                specificMessage: none(),
                // TODO: Find way to distinguish what feed was being watched to show the proper not found message
                // "notFoundErrorFollowing"
                // "notFoundErrorFollowed"
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: ProfileUsersDialer(user: user),
              ),
            )
          ],
        ),
      ),
    );
  }
}
