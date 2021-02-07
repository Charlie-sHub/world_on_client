import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/experience_like_actor/experience_like_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_finish/dislike_experience_button.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_finish/like_experience_button.dart';

class LikeDislikeButtonBuilder extends StatelessWidget {
  const LikeDislikeButtonBuilder({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ExperienceLikeActorBloc>()
        ..add(
          ExperienceLikeActorEvent.initialized(experience),
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
            likes: (_) => DislikeExperienceButton(experience: experience),
            neutral: (_) => LikeExperienceButton(experience: experience),
            likeSuccess: (_) => DislikeExperienceButton(experience: experience),
            likeFailure: (_) => LikeExperienceButton(experience: experience),
            dislikeFailure: (_) => DislikeExperienceButton(experience: experience),
            dislikeSuccess: (_) => LikeExperienceButton(experience: experience),
          ),
        ),
      ),
    );
  }
}
