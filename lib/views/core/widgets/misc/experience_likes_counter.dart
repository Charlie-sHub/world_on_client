import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/experience_card_like_check/experience_card_like_check_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/common_functions/world_on_number_display.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

import '../../../../injection.dart';

class ExperienceLikesCounter extends StatelessWidget {
  const ExperienceLikesCounter({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ExperienceCardLikeCheckBloc>()
        ..add(
          ExperienceCardLikeCheckEvent.initialized(experience),
        ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          BlocBuilder<ExperienceCardLikeCheckBloc, ExperienceCardLikeCheckState>(
            builder: (context, state) => state.map(
              initial: (_) => const CircularProgressIndicator(),
              likes: (_) => const Icon(
                Icons.favorite_rounded,
                color: WorldOnColors.red,
              ),
              neutral: (_) => const Icon(
                Icons.favorite_border_rounded,
                color: WorldOnColors.red,
              ),
            ),
          ),
          const SizedBox(width: 5),
          Text(
            createWorldOnDisplay(experience.likedBy.length),
          ),
        ],
      ),
    );
  }
}
