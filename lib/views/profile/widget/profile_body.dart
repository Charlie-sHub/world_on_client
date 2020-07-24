import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_watcher/profile_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/world_on_progress_indicator.dart';
import 'package:worldon/views/profile/widget/foreign_profile.dart';
import 'package:worldon/views/profile/widget/own_profile.dart';

import '../../../injection.dart';

class ProfileBody extends StatelessWidget {
  final Option<User> userOption;

  const ProfileBody({Key key, @required this.userOption}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileWatcherBloc>()
        ..add(
          ProfileWatcherEvent.initializedForeignOrOwn(userOption),
        ),
      // TODO: Change the where and when the initializedForeignOrOwn event is added
      // As it is now the profile only initializes once and so it doesn't change
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
    );
  }
}

/// This class only exists because the GetLoggedInUser use case doesn't give back possible failures
/// Something to rework in the future for sure
class ProfileCriticalFailure extends StatelessWidget {
  const ProfileCriticalFailure({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.error_outline,
              color: WorldOnColors.red,
              size: 70,
            ),
            const SizedBox(height: 10),
            const Text(
              "There's been a critical failure",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            const Text(
              "Tap to try again",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
