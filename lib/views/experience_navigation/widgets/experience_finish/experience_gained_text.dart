import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/experience_finish_actor/experience_finish_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';

class ExperiencedGainedText extends StatelessWidget {
  const ExperiencedGainedText({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: AutoSizeText.rich(
          TextSpan(
            text: "${S.of(context).experiencePointsGainedPre}: ",
            children: <TextSpan>[
              TextSpan(
                text: context
                    .read<ExperienceFinishActorBloc>()
                    .state
                    .maybeMap(
                      finishSuccess: (value) => value.amountXP,
                      orElse: () => 0,
                    )
                    .toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(text: " ${S.of(context).experiencePointsGainedMid}"),
              TextSpan(
                text: " ${S.of(context).experiencePointsGainedPost}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          minFontSize: 15,
          maxFontSize: 18,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
