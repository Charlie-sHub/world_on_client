import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/experience_like_actor/experience_like_actor_bloc.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/views/experience_navigation/widgets/dislike_experience_button.dart';
import 'package:worldon/views/experience_navigation/widgets/like_experience_button.dart';

class LikeDislikeButtonBuilder extends StatelessWidget {
  const LikeDislikeButtonBuilder({
    Key? key,
    required this.experienceId,
  }) : super(key: key);

  final UniqueId experienceId;
  static const double _size = 30;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: _size,
        width: _size,
        child: BlocBuilder<ExperienceLikeActorBloc, ExperienceLikeActorState>(
          buildWhen: (previous, current) => previous.likes != current.likes,
          builder: (context, state) => state.likes
              ? DislikeExperienceButton(experienceId: experienceId)
              : LikeExperienceButton(experienceId: experienceId),
        ),
      );
}
