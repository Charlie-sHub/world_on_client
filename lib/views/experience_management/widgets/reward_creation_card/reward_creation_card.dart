import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/application/experience_management/reward_form/reward_form_bloc.dart';
import 'package:worldon/application/experience_management/rewards_creation/rewards_creation_bloc.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/experience_management/widgets/reward_creation_card/created_reward_card.dart';
import 'package:worldon/views/experience_management/widgets/reward_creation_card/reward_creation_form.dart';

class RewardCreationCard extends HookWidget {
  const RewardCreationCard({
    Key? key,
    required this.rewardSetOption,
  }) : super(key: key);

  final Option<RewardSet> rewardSetOption;

  @override
  Widget build(BuildContext context) {
    final descriptionTextEditingController = useTextEditingController();
    final nameTextEditingController = useTextEditingController();
    return BlocProvider(
      create: (context) => getIt<RewardsCreationBloc>()
        ..add(
          RewardsCreationEvent.initialized(rewardSetOption),
        ),
      child: BlocConsumer<RewardsCreationBloc, RewardsCreationState>(
        listener: (context, state) => context.read<ExperienceManagementFormBloc>().add(
              ExperienceManagementFormEvent.rewardsChanged(state.rewardsCreated),
            ),
        builder: (context, state) => Card(
          color: WorldOnColors.background,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: WorldOnColors.primary,
            ),
            borderRadius: BorderRadius.circular(3),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(height: 5),
              Text(
                context.read<ExperienceManagementFormBloc>().state.isEditing ? S.of(context).editRewards : S.of(context).rewardCreationCardTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.5,
                ),
                child: ListView.builder(
                  padding: const EdgeInsets.all(10),
                  itemCount: state.rewardsCreated.size,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final reward = state.rewardsCreated.asSet().elementAt(index);
                    if (reward.isValid) {
                      return CreatedRewardCard(
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
              Padding(
                padding: const EdgeInsets.all(10),
                child: BlocProvider(
                  create: (context) => getIt<RewardFormBloc>(),
                  child: BlocConsumer<RewardFormBloc, RewardFormState>(
                    listener: (context, state) => _rewardFormListener(
                      context,
                      state,
                      descriptionTextEditingController,
                      nameTextEditingController,
                    ),
                    builder: (context, state) => RewardCreationForm(
                      nameTextEditingController: nameTextEditingController,
                      descriptionTextEditingController: descriptionTextEditingController,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _rewardFormListener(
    BuildContext context,
    RewardFormState state,
    TextEditingController descriptionTextEditingController,
    TextEditingController nameTextEditingController,
  ) {
    if (state.isSubmitting) {
      descriptionTextEditingController.clear();
      nameTextEditingController.clear();
      context.read<RewardsCreationBloc>().add(RewardsCreationEvent.addedReward(state.reward));
    }
  }
}
