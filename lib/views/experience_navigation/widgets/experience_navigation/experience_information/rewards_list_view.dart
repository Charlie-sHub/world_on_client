import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/core/widgets/cards/reward_card.dart';

class RewardsListView extends StatelessWidget {
  const RewardsListView({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.25,
          color: WorldOnColors.background,
          child: ListView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: experience.rewards.getOrCrash().size,
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              final reward =
                  experience.rewards.getOrCrash().asSet().elementAt(index);
              if (reward.isValid) {
                return RewardCard(
                  reward: reward,
                  key: Key(reward.id.toString()),
                );
              } else {
                return ErrorCard(
                  entityType: S.of(context).reward,
                  valueFailureString: reward.failureOption.fold(
                    () => S.of(context).noError,
                    (failure) => failure.toString(),
                  ),
                );
              }
            },
          ),
        ),
      );
}
