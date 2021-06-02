import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/share_experience_internally/share_experience_internally_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class InternalShareButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.read<ShareExperienceInternallyBloc>().add(
              const ShareExperienceInternallyEvent.shared(),
            );
        context.router.pop();
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          WorldOnColors.primary,
        ),
      ),
      child: Text(
        S.of(context).share,
        style: const TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }
}
