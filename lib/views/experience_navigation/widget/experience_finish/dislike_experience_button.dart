import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/application/experience_navigation/experience_like_actor/experience_like_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';

class DislikeExperienceButton extends StatelessWidget {
  const DislikeExperienceButton({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const FaIcon(
        FontAwesomeIcons.heart,
        color: Colors.grey,
      ),
      onPressed: () => context.bloc<ExperienceLikeActorBloc>().add(
            ExperienceLikeActorEvent.disliked(experience),
          ),
    );
  }
}
