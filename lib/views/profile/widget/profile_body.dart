import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/application/profile/profile_watcher/profile_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/widget/world_on_progress_indicator.dart';
import 'package:worldon/views/profile/widget/profile_critical_failure.dart';

import '../../../injection.dart';
import 'foreign_profile/foreign_profile.dart';
import 'own_profile/own_profile.dart';

// TODO: Implement some way to always go to the own profile
// Like a button in te appbar that will always take the user to its own profile
class ProfileBody extends StatelessWidget {
  final Option<User> userOption;

  const ProfileBody({Key key, @required this.userOption}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileWatcherBloc>()
        ..add(
          ProfileWatcherEvent.initializedForeignOrOwn(none()),
        ),
      child: BlocListener<NavigationActorBloc, NavigationActorState>(
        listener: (context, navigationState) => navigationState.maybeMap(
          profileView: (profileViewState) => profileViewState.userOption.fold(
            () => null,
            (user) => context.bloc<ProfileWatcherBloc>().add(
                  ProfileWatcherEvent.initializedForeignOrOwn(some(user)),
                ),
          ),
          orElse: () => null,
        ),
        child: BlocBuilder<ProfileWatcherBloc, ProfileWatcherState>(
          builder: (context, state) => state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => WorldOnProgressIndicator(),
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
