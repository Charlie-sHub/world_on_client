import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/share_experience_internally/share_experience_internally_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

import '../../../../../injection.dart';

class ShareInternallyButton extends StatelessWidget {
  final Experience experience;

  const ShareInternallyButton({
    Key? key,
    required this.experience,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ShareExperienceInternallyBloc>()
        ..add(
          ShareExperienceInternallyEvent.initialized(experience),
        ),
      child: IconButton(
        icon: const Icon(
          Icons.near_me_rounded,
          color: WorldOnColors.white,
          size: 25,
        ),
        padding: const EdgeInsets.all(5),
        constraints: const BoxConstraints(),
        // Open lower drawer with all the following
        // Select users, put in a list
        // Will probably need to create another bloc just for that
        // Or modify the existing one
        // Add the shared event to the bloc
        onPressed: () => null,
      ),
    );
  }
}
