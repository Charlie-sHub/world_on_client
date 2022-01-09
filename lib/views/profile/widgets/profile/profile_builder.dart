import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_watcher/profile_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/profile/widgets/profile/profile.dart';
import 'package:worldon/views/profile/widgets/profile_critical_failure.dart';

class ProfileBuilder extends StatelessWidget {
  final GlobalKey<State<StatefulWidget>> userLevelShowKey;
  final User user;
  final bool isOwn;

  const ProfileBuilder({
    Key? key,
    required this.user,
    required this.isOwn,
    required this.userLevelShowKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => getIt<ProfileWatcherBloc>()
          ..add(
            ProfileWatcherEvent.watchProfileStarted(user.id),
          ),
        child: BlocBuilder<ProfileWatcherBloc, ProfileWatcherState>(
          buildWhen: (previous, current) {
            final _previousUser = previous.maybeMap(
              newProfileUpdate: (state) => state.user,
              orElse: () => user,
            );
            final _currentUser = current.maybeMap(
              newProfileUpdate: (state) => state.user,
              orElse: () => user,
            );
            return _previousUser != _currentUser;
          },
          builder: (context, state) => state.map(
            initial: (_) => Profile(
              isOwn: isOwn,
              user: user,
              userLevelShowKey: userLevelShowKey,
            ),
            newProfileUpdate: (updateState) => Profile(
              isOwn: isOwn,
              user: updateState.user,
              userLevelShowKey: userLevelShowKey,
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
