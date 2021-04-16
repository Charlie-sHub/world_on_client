import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/rewards_creation/rewards_creation_bloc.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class CreatedRewardCard extends StatelessWidget {
  const CreatedRewardCard({
    Key key,
    @required this.reward,
  }) : super(key: key);

  final Reward reward;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image(
              image: reward.imageFile.fold(
                () => NetworkImage(reward.imageURL),
                (_imageFile) => FileImage(_imageFile),
              ),
              height: 100,
              width: 100,
            ),
            const SizedBox(width: 5),
            Expanded(
              child: Column(
                children: [
                  AutoSizeText(
                    reward.name.getOrCrash(),
                    style: const TextStyle(
                      fontSize: 18,
                      color: WorldOnColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  AutoSizeText(
                    reward.description.getOrCrash(),
                    style: const TextStyle(
                      fontSize: 15,
                      color: WorldOnColors.background,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              iconSize: 40,
              icon: const Icon(
                Icons.delete_forever,
                color: WorldOnColors.red,
              ),
              onPressed: () => context.read<RewardsCreationBloc>().add(
                    RewardsCreationEvent.removedReward(reward),
                  ),
            )
          ],
        ),
      ),
    );
  }
}
