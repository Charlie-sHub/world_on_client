import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/application/experience_navigation/experience_like_actor/experience_like_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class LikeExperienceButton extends StatelessWidget {
  const LikeExperienceButton({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const FaIcon(
        FontAwesomeIcons.solidHeart,
        color: WorldOnColors.red,
      ),
      onPressed: () => context.read<ExperienceLikeActorBloc>().add(
            ExperienceLikeActorEvent.liked(experience),
          ),
    );
  }
}
