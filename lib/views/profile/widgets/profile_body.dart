import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/application/profile/profile_watcher/profile_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';
import 'package:worldon/views/profile/widgets/foreign_profile/foreign_profile.dart';
import 'package:worldon/views/profile/widgets/own_profile/own_profile.dart';
import 'package:worldon/views/profile/widgets/profile_critical_failure.dart';

import '../../../injection.dart';

class ProfileBody extends StatelessWidget {
  final Option<User> userOption;
  final bool currentUserProfile;

  const ProfileBody({
    Key key,
    @required this.userOption,
    @required this.currentUserProfile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileWatcherBloc>()
        ..add(
          ProfileWatcherEvent.initializedForeignOrOwn(
            none(),
          ),
        ),
      child: BlocListener<NavigationActorBloc, NavigationActorState>(
        listenWhen: (previous, current) => current.maybeMap(
          profileView: (state) => true,
          orElse: () => false,
        ),
        listener: (context, navigationState) => navigationState.maybeMap(
          profileView: (state) => state.userOption.fold(
            () => state.currentUserProfile
                ? context.bloc<ProfileWatcherBloc>().add(
                      ProfileWatcherEvent.initializedForeignOrOwn(
                        none(),
                      ),
                    )
                : null,
            (user) => context.bloc<ProfileWatcherBloc>().add(
                  ProfileWatcherEvent.initializedForeignOrOwn(
                    some(user),
                  ),
                ),
          ),
          orElse: () => null,
        ),
        child: BlocBuilder<ProfileWatcherBloc, ProfileWatcherState>(
          builder: (context, state) => state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const WorldOnProgressIndicator(),
            own: (state) => OwnProfile(user: state.user),
            foreign: (state) => ForeignProfile(user: state.user),
            loadFailure: (state) => InkWell(
              onTap: () async => context.bloc<ProfileWatcherBloc>().add(
                    ProfileWatcherEvent.initializedForeignOrOwn(userOption),
                  ),
              child: const ProfileCriticalFailure(),
            ),
          ),
        ),
      ),
    );
  }
}
