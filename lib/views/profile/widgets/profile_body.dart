import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/application/profile/profile_foreign_or_own/profile_foreign_or_own_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';
import 'package:worldon/views/profile/widgets/profile/profile_builder.dart';
import 'package:worldon/views/profile/widgets/profile_critical_failure.dart';

import '../../../injection.dart';

class ProfileBody extends StatelessWidget {
  final Option<User> userOption;
  final bool currentUserProfile;

  const ProfileBody({
    Key? key,
    required this.userOption,
    required this.currentUserProfile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileForeignOrOwnBloc>()
        ..add(
          ProfileForeignOrOwnEvent.initializedForeignOrOwn(
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
                ? context.read<ProfileForeignOrOwnBloc>().add(
                      ProfileForeignOrOwnEvent.initializedForeignOrOwn(
                        none(),
                      ),
                    )
                : null,
            (user) => context.read<ProfileForeignOrOwnBloc>().add(
                  ProfileForeignOrOwnEvent.initializedForeignOrOwn(
                    some(user),
                  ),
                ),
          ),
          orElse: () {},
        ),
        child: BlocBuilder<ProfileForeignOrOwnBloc, ProfileForeignOrOwnState>(
          builder: (context, state) => state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const WorldOnProgressIndicator(
              size: 60,
            ),
            own: (state) => ProfileBuilder(
              user: state.user,
              isOwn: true,
            ),
            foreign: (state) => ProfileBuilder(
              user: state.user,
              isOwn: false,
            ),
            loadFailure: (_) => InkWell(
              onTap: () async => context.read<ProfileForeignOrOwnBloc>().add(
                    ProfileForeignOrOwnEvent.initializedForeignOrOwn(userOption),
                  ),
              child: const ProfileCriticalFailure(),
            ),
          ),
        ),
      ),
    );
  }
}
