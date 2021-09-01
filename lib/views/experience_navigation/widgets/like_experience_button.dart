import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/experience_like_actor/experience_like_actor_bloc.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

class LikeExperienceButton extends StatelessWidget {
  const LikeExperienceButton({
    Key? key,
    required this.experienceId,
  }) : super(key: key);

  final UniqueId experienceId;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.thumb_up,
        color: Colors.grey.shade600,
        size: 30,
      ),
      padding: EdgeInsets.zero,
      onPressed: () => context.read<ExperienceLikeActorBloc>().add(
            ExperienceLikeActorEvent.liked(experienceId),
          ),
    );
  }
}
