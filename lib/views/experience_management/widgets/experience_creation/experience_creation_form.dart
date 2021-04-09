import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/experience_management/widgets/map.dart';
import 'package:worldon/views/experience_management/widgets/objective_creation_card/objective_creation_card.dart';
import 'package:worldon/views/experience_management/widgets/reward_creation_card/reward_creation_card.dart';

import '../description_form_field.dart';
import '../difficulty_slider.dart';
import '../finish_button.dart';
import '../pictures_selector.dart';
import '../tag_addition_creation_card.dart';
import '../title_form_field.dart';

class ExperienceCreationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _managementFormState = context.read<ExperienceManagementFormBloc>().state;
    return SingleChildScrollView(
      child: Form(
        autovalidateMode: _managementFormState.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const TitleFormField(
                title: "",
              ),
              const SizedBox(height: 10),
              const DescriptionFormField(
                description: "",
              ),
              const SizedBox(height: 10),
              PicturesSelector(),
              const SizedBox(height: 20),
              Text(
                S.of(context).setExperienceDifficulty,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              DifficultySlider(),
              const SizedBox(height: 10),
              // TODO: Figure out why the map can't be constant
              // adding const freezes the map, meaning the marker can't change position
              Map(),
              const SizedBox(height: 10),
              ObjectiveCreationCard(
                objectiveListOption: none(),
              ),
              if (_managementFormState.showErrorMessages && !_managementFormState.experience.objectives.isValid())
                Text(
                  S.of(context).noObjectivesErrorMessage,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.red),
                )
              else
                Container(),
              RewardCreationCard(
                rewardSetOption: none(),
              ),
              //Change back to TagAdditionCard if necessary
              TagAdditionCreationCard(
                tagChangeFunction: (KtSet<Tag> tags) => context.read<ExperienceManagementFormBloc>().add(
                      ExperienceManagementFormEvent.tagsChanged(tags),
                    ),
                tagSetOption: none(),
              ),
              const FinishButton(),
            ],
          ),
        ),
      ),
    );
  }
}
