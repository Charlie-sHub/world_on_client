import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/application/experience_management/reward_form/reward_form_bloc.dart';
import 'package:worldon/application/experience_management/rewards_creation/rewards_creation_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/experience_management/widgets/reward_creation_card/created_reward_card.dart';
import 'package:worldon/views/experience_management/widgets/reward_creation_card/reward_description_text_field.dart';
import 'package:worldon/views/experience_management/widgets/reward_creation_card/reward_name_text_field.dart';
import 'package:worldon/views/experience_management/widgets/reward_creation_card/submit_reward_button.dart';

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
              Text(
                S.of(context).rewardCreationCardTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
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
                        entityType: S.of(context).reward,
                        valueFailureString: _reward.failureOption.fold(
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
                      _descriptionTextEditingController,
                      _nameTextEditingController,
                    ),
                    builder: (context, state) => Form(
                      autovalidateMode: context.bloc<RewardFormBloc>().state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
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
                                      onPressed: () async => _openDialog(context),
                                    ),
                                    if (context.bloc<RewardFormBloc>().state.showErrorMessages && context.bloc<RewardFormBloc>().state.reward.imageFile.isNone())
                                      Text(
                                        S.of(context).pictureSelectionMessage,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(color: Colors.red),
                                      )
                                    else
                                      Container(),
                                  ],
                                ),
                                (imageFile) => Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: FlatButton(
                                    onPressed: () async => _openDialog(context),
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

  Future _openDialog(BuildContext context) async {
    await showDialog<bool>(
      context: context,
      useSafeArea: true,
      barrierDismissible: true,
      builder: (context) => AlertDialog(
        backgroundColor: WorldOnColors.background,
        actions: [
          RaisedButton(
            onPressed: () async {
              await _pickImage(
                ImageSource.camera,
                context,
              );
              Navigator.of(context).pop();
            },
            child: Text(
              S.of(context).camera,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          RaisedButton(
            onPressed: () async {
              await _pickImage(
                ImageSource.gallery,
                context,
              );
              Navigator.of(context).pop();
            },
            child: Text(
              S.of(context).gallery,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future _pickImage(ImageSource source, BuildContext context) async {
    final _imagePicked = await ImagePicker().getImage(
      source: source,
      imageQuality: 50,
    );
    if (_imagePicked != null) {
      final _imageFile = File(_imagePicked.path);
      context.bloc<RewardFormBloc>().add(
            RewardFormEvent.imageChanged(_imageFile),
          );
    }
  }
}
