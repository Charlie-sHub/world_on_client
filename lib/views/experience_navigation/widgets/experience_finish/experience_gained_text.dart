import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/experience_finish_actor/experience_finish_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ExperiencedGainedText extends StatelessWidget {
  const ExperiencedGainedText({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: AutoSizeText.rich(
            TextSpan(
              text: "${S.of(context).experiencePointsGainedPre}: ",
              children: <TextSpan>[
                TextSpan(
                  text: "${context.bloc<ExperienceFinishActorBloc>().state.maybeMap(
                        finishSuccess: (value) => value.amountXP,
                        orElse: () => 0,
                      )}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: WorldOnColors.primary,
                    shadows: [
                      Shadow(
                        offset: Offset(1, 1),
                        blurRadius: 3,
                      )
                    ],
                  ),
                ),
                TextSpan(text: " ${S.of(context).experiencePointsGainedPost}"),
              ],
            ),
            style: const TextStyle(
              color: WorldOnColors.background,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
