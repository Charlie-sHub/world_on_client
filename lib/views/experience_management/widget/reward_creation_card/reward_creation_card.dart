import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/application/experience_management/reward_form/reward_form_bloc.dart';
import 'package:worldon/application/experience_management/rewards_creation/rewards_creation_bloc.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/cards/error_card.dart';
import 'package:worldon/views/experience_management/widget/reward_creation_card/created_reward_card.dart';
import 'package:worldon/views/experience_management/widget/reward_creation_card/reward_description_text_field.dart';
import 'package:worldon/views/experience_management/widget/reward_creation_card/reward_name_text_field.dart';
import 'package:worldon/views/experience_management/widget/reward_creation_card/submit_reward_button.dart';

class RewardCreationCard extends HookWidget {
  const RewardCreationCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _descriptionTextEditingController = useTextEditingController();
    final _nameTextEditingController = useTextEditingController();
    return BlocProvider(
      create: (context) => getIt<RewardsCreationBloc>(),
      child: BlocConsumer<RewardsCreationBloc, RewardsCreationState>(
        listener: (context, state) => context.bloc<ExperienceManagementFormBloc>().add(
              ExperienceManagementFormEvent.rewardsChanged(state.rewardsCreated),
            ),
        builder: (context, state) => Card(
          color: WorldOnColors.background,
          shape: const RoundedRectangleBorder(
            side: BorderSide(
              color: WorldOnColors.primary,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(height: 5),
              const Text(
                "Create the Rewards",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
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
                    final _reward = state.rewardsCreated.asSet().elementAt(index);
                    if (_reward.isValid) {
                      return CreatedRewardCard(
                        reward: _reward,
                        key: Key(_reward.id.toString()),
                      );
                    } else {
                      return ErrorCard(
                        entityType: "Reward",
                        valueFailureString: _reward.failureOption.fold(
                          () => "No error",
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
                      _descriptionTextEditingController,
                      _nameTextEditingController,
                    ),
                    builder: (context, state) => Form(
                      autovalidate: state.showErrorMessages,
                      child: Column(
                        children: <Widget>[
                          RewardNameTextField(textController: _nameTextEditingController),
                          RewardDescriptionTextField(textController: _descriptionTextEditingController),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              state.reward.imageFile.fold(
                                () => Column(
                                  children: <Widget>[
                                    IconButton(
                                      iconSize: 80,
                                      icon: const Icon(
                                        Icons.photo_camera,
                                      ),
                                      onPressed: () async => _pickImage(context),
                                    ),
                                    if (context.bloc<RewardFormBloc>().state.showErrorMessages && context.bloc<RewardFormBloc>().state.reward.imageFile.isNone())
                                      const Text(
                                        "Please select a picture",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.red),
                                      )
                                    else
                                      Container(),
                                  ],
                                ),
                                (imageFile) => Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: FlatButton(
                                    onPressed: () async => _pickImage(context),
                                    child: Image(
                                      fit: BoxFit.fitWidth,
                                      image: FileImage(imageFile),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SubmitRewardButton(),
                        ],
                      ),
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
      context.bloc<RewardsCreationBloc>().add(RewardsCreationEvent.addedReward(state.reward));
    }
  }

  Future _pickImage(BuildContext context) async {
    final _imagePicked = await ImagePicker().getImage(source: ImageSource.gallery);
    if (_imagePicked != null) {
      final _imageFile = File(_imagePicked.path);
      context.bloc<RewardFormBloc>().add(RewardFormEvent.imageChanged(_imageFile));
    }
  }
}
