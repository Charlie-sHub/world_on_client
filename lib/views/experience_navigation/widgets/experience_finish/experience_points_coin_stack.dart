import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/experience_finish_actor/experience_finish_actor_bloc.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ExperiencePointsCoinStack extends StatelessWidget {
  const ExperiencePointsCoinStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: WorldOnColors.primary,
            shape: BoxShape.circle,
          ),
          height: 100,
          width: 100,
          child: Center(
            child: Text(
              context
                  .read<ExperienceFinishActorBloc>()
                  .state
                  .maybeMap(
                    finishSuccess: (value) => value.amountXP,
                    orElse: () => 0,
                  )
                  .toString(),
              style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: -25,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: WorldOnColors.white,
                  shape: BoxShape.circle,
                ),
                height: 50,
                width: 50,
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(2),
                    child: Image(
                      image: AssetImage("assets/world_on_coin.png"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
