import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/watch_current_user/watch_current_user_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/views/core/misc/common_functions/world_on_number_display.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ExperienceLikesCounter extends StatelessWidget {
  const ExperienceLikesCounter({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        BlocBuilder<WatchCurrentUserBloc, WatchCurrentUserState>(
          buildWhen: (previous, current) => current.map(
            initial: (_) => true,
            loadSuccess: (_) {
              final _previousLikes = previous.maybeMap(
                loadSuccess: (successState) => successState.user.experiencesLikedIds,
                orElse: () => <UniqueId>{},
              );
              final _currentLikes = current.maybeMap(
                loadSuccess: (successState) => successState.user.experiencesLikedIds,
                orElse: () => <UniqueId>{},
              );
              return _previousLikes != _currentLikes;
            },
            loadFailure: (_) => true,
          ),
          builder: (context, state) => state.map(
            initial: (_) => const CircularProgressIndicator(),
            loadSuccess: (state) => state.user.experiencesLikedIds.contains(
              experience.id,
            )
                ? const Icon(
                    Icons.favorite_rounded,
                    color: WorldOnColors.red,
                  )
                : const Icon(
                    Icons.favorite_border_rounded,
                    color: WorldOnColors.red,
                  ),
            loadFailure: (_) => const Icon(
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
    );
  }
}
