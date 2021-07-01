import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_watcher/profile_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/profile/widgets/profile/profile.dart';

import '../profile_critical_failure.dart';

class ProfileBuilder extends StatelessWidget {
  const ProfileBuilder({
    Key? key,
    required this.user,
    required this.isOwn,
  }) : super(key: key);

  final User user;
  final bool isOwn;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileWatcherBloc>()
        ..add(
          ProfileWatcherEvent.watchProfileStarted(user.id),
        ),
      child: BlocBuilder<ProfileWatcherBloc, ProfileWatcherState>(
        builder: (context, state) => state.map(
          initial: (value) => Profile(
            isOwn: isOwn,
            user: user,
          ),
          newProfileUpdate: (_newProfileUpdate) => Profile(
            isOwn: isOwn,
            user: _newProfileUpdate.user,
          ),
          failure: (value) => InkWell(
            onTap: () async => context.read<ProfileWatcherBloc>().add(
                  ProfileWatcherEvent.watchProfileStarted(user.id),
                ),
            child: const ProfileCriticalFailure(),
          ),
        ),
      ),
    );
  }
}
