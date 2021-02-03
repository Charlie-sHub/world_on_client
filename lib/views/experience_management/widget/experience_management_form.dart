import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/experience_management/widget/description_form_field.dart';
import 'package:worldon/views/experience_management/widget/difficulty_slider.dart';
import 'package:worldon/views/experience_management/widget/finish_button.dart';
import 'package:worldon/views/experience_management/widget/map.dart';
import 'package:worldon/views/experience_management/widget/objective_creation_card/objective_creation_card.dart';
import 'package:worldon/views/experience_management/widget/pictures_selector.dart';
import 'package:worldon/views/experience_management/widget/reward_creation_card/reward_creation_card.dart';
import 'package:worldon/views/experience_management/widget/tag_addition_creation_card.dart';
import 'package:worldon/views/experience_management/widget/title_form_field.dart';

class ExperienceManagementForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        autovalidateMode: context.bloc<ExperienceManagementFormBloc>().state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const TitleFormField(),
              const SizedBox(height: 10),
              const DescriptionFormField(),
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
              const ObjectiveCreationCard(),
              if (context.bloc<ExperienceManagementFormBloc>().state.showErrorMessages && !context.bloc<ExperienceManagementFormBloc>().state.experience.objectives.isValid())
                Text(
                  S.of(context).noObjectivesErrorMessage,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.red),
                )
              else
                Container(),
              const RewardCreationCard(),
              //Change back to TagAdditionCard if necessary
              TagAdditionCreationCard(
                tagChangeFunction: (KtSet<Tag> tags) => context.bloc<ExperienceManagementFormBloc>().add(
                      ExperienceManagementFormEvent.tagsChanged(tags),
                    ),
              ),
              const FinishButton(),
            ],
          ),
        ),
      ),
    );
  }
}
