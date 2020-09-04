import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/cards/error_card.dart';
import 'package:worldon/views/core/widget/cards/reward_card.dart';

class RewardsListView extends StatelessWidget {
  const RewardsListView({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      color: WorldOnColors.background,
      child: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: experience.rewards.getOrCrash().size,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          final _reward = experience.rewards.getOrCrash().asSet().elementAt(index);
          if (_reward.isValid) {
            return RewardCard(
              reward: _reward,
              key: Key(_reward.id.toString()),
            );
          } else {
            return ErrorCard(
              entityType: "Reward",
              valueFailureString: _reward.failureOption.fold(
                () => "",
                (failure) => failure.toString(),
              ),
            );
          }
        },
      ),
    );
  }
}
