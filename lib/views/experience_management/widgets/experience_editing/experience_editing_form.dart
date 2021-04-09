import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/application/experience_management/experience_editing_form/experience_editing_form_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/experience_management/widgets/experience_editing/finish_button.dart';
import 'package:worldon/views/experience_management/widgets/experience_editing/map.dart';
import 'package:worldon/views/experience_management/widgets/experience_editing/objective_creation_card/objective_creation_card.dart';
import 'package:worldon/views/experience_management/widgets/experience_editing/pictures_selector.dart';
import 'package:worldon/views/experience_management/widgets/experience_editing/reward_creation_card/reward_creation_card.dart';
import 'package:worldon/views/experience_management/widgets/experience_editing/tag_addition_creation_card.dart';
import 'package:worldon/views/experience_management/widgets/experience_editing/title_form_field.dart';

import 'description_form_field.dart';
import 'difficulty_slider.dart';
import 'original_pictures_grid_view.dart';

class ExperienceEditingForm extends StatelessWidget {
  final Experience experience;

  const ExperienceEditingForm({Key key, this.experience}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _managementFormState = context.read<ExperienceEditingFormBloc>().state;
    return SingleChildScrollView(
      child: Form(
        autovalidateMode: _managementFormState.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TitleFormField(
                title: experience.title.getOrCrash(),
              ),
              const SizedBox(height: 10),
              DescriptionFormField(
                description: experience.description.getOrCrash(),
              ),
              const SizedBox(height: 10),
              OriginalPicturesGridView(experience: experience),
              Text(
                S.of(context).addPictures,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              PicturesSelector(),
              const SizedBox(height: 20),
              Text(
                S.of(context).editDifficulty,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              DifficultySlider(),
              const SizedBox(height: 10),
              Map(),
              const SizedBox(height: 10),
              ObjectiveCreationCard(
                objectiveList: experience.objectives,
              ),
              if (_managementFormState.showErrorMessages && !_managementFormState.experience.objectives.isValid())
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
                tagChangeFunction: (KtSet<Tag> tags) => context.read<ExperienceEditingFormBloc>().add(
                      ExperienceEditingFormEvent.tagsChanged(tags),
                    ),
                tagSet: experience.tags,
              ),
              const FinishButton(),
            ],
          ),
        ),
      ),
    );
  }
}
