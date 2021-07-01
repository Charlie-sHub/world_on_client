import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/watch_current_user/watch_current_user_bloc.dart';
import 'package:worldon/application/experience_navigation/experience_like_actor/experience_like_actor_bloc.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/injection.dart';

import 'dislike_experience_button.dart';
import 'like_experience_button.dart';

class LikeDislikeButtonBuilder extends StatelessWidget {
  const LikeDislikeButtonBuilder({
    Key? key,
    required this.experienceId,
  }) : super(key: key);

  final UniqueId experienceId;

  @override
  Widget build(BuildContext context) {
    const double _size = 30;
    return SizedBox(
      height: _size,
      width: _size,
      child: BlocBuilder<WatchCurrentUserBloc, WatchCurrentUserState>(
        buildWhen: _buildWhen,
        builder: (context, state) => state.map(
          initial: (_) => Container(),
          loadSuccess: (successState) => BlocProvider(
            create: (context) => getIt<ExperienceLikeActorBloc>()
              ..add(
                ExperienceLikeActorEvent.initialized(
                  experienceId,
                  successState.user.experiencesLikedIds,
                ),
              ),
            child: BlocBuilder<ExperienceLikeActorBloc, ExperienceLikeActorState>(
              builder: (context, state) => AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                transitionBuilder: (child, animation) => ScaleTransition(
                  scale: animation,
                  child: child,
                ),
                child: state.map(
                  initial: (_) => Container(),
                  actionInProgress: (_) => const CircularProgressIndicator(),
                  likes: (_) => DislikeExperienceButton(experienceId: experienceId),
                  neutral: (_) => LikeExperienceButton(experienceId: experienceId),
                  likeSuccess: (_) => DislikeExperienceButton(experienceId: experienceId),
                  likeFailure: (_) => LikeExperienceButton(experienceId: experienceId),
                  dislikeFailure: (_) => DislikeExperienceButton(experienceId: experienceId),
                  dislikeSuccess: (_) => LikeExperienceButton(experienceId: experienceId),
                ),
              ),
            ),
          ),
          loadFailure: (_) => LikeExperienceButton(experienceId: experienceId),
        ),
      ),
    );
  }

  bool _buildWhen(WatchCurrentUserState previous, WatchCurrentUserState current) => current.map(
        initial: (_) => true,
        loadSuccess: (_) {
          final _previousLikesContainsExperience = previous.maybeMap(
            loadSuccess: (successState) => successState.user.experiencesLikedIds.contains(
              experienceId,
            ),
            orElse: () => true,
          );
          final _currentLikesContainsExperience = current.maybeMap(
            loadSuccess: (successState) => successState.user.experiencesLikedIds.contains(
              experienceId,
            ),
            orElse: () => true,
          );
          return _previousLikesContainsExperience != _currentLikesContainsExperience;
        },
        loadFailure: (_) => true,
      );
}
