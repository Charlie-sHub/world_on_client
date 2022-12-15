import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/experience_management/widgets/description_form_field.dart';
import 'package:worldon/views/experience_management/widgets/difficulty_slider.dart';
import 'package:worldon/views/experience_management/widgets/experience_editing/original_pictures_grid_view.dart';
import 'package:worldon/views/experience_management/widgets/finish_button.dart';
import 'package:worldon/views/experience_management/widgets/helper_methods.dart';
import 'package:worldon/views/experience_management/widgets/map.dart';
import 'package:worldon/views/experience_management/widgets/objective_creation_card/objective_creation_card.dart';
import 'package:worldon/views/experience_management/widgets/pictures_selector.dart';
import 'package:worldon/views/experience_management/widgets/reward_creation_card/reward_creation_card.dart';
import 'package:worldon/views/experience_management/widgets/tag_addition_creation_card.dart';
import 'package:worldon/views/experience_management/widgets/title_form_field.dart';

class ExperienceEditingForm extends StatelessWidget {
  const ExperienceEditingForm({
    required this.experience,
    required this.difficultyShowKey,
    required this.mapShowKey,
    required this.objectivesShowKey,
    required this.tagCreationShowKey,
    required this.scrollController,
    Key? key,
  }) : super(key: key);

  final Experience experience;
  final GlobalKey<State<StatefulWidget>> difficultyShowKey;
  final GlobalKey<State<StatefulWidget>> mapShowKey;
  final GlobalKey<State<StatefulWidget>> objectivesShowKey;
  final GlobalKey<State<StatefulWidget>> tagCreationShowKey;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<ExperienceManagementFormBloc, ExperienceManagementFormState>(
        listenWhen: (previous, current) =>
            previous.failureOrSuccessOption != current.failureOrSuccessOption,
        listener: (context, state) => state.failureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) => onExperienceManagementFailure(
              failure,
              context,
            ),
            (_) => context.router.pop(),
          ),
        ),
        buildWhen: _buildWhen,
        builder: (context, state) => SingleChildScrollView(
          controller: scrollController,
          child: Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  TitleFormField(title: experience.title.getOrCrash()),
                  const SizedBox(height: 5),
                  const Divider(thickness: 2),
                  const SizedBox(height: 5),
                  DescriptionFormField(
                    description: experience.description.getOrCrash(),
                  ),
                  const SizedBox(height: 5),
                  const Divider(thickness: 2),
                  const SizedBox(height: 5),
                  OriginalPicturesGridView(experience: state.experience),
                  Text(
                    S.of(context).addPictures,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  PicturesSelector(),
                  const SizedBox(height: 5),
                  const Divider(thickness: 2),
                  const SizedBox(height: 5),
                  Text(
                    S.of(context).editDifficulty,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  DifficultySlider(
                    showKey: difficultyShowKey,
                  ),
                  const SizedBox(height: 5),
                  const Divider(thickness: 2),
                  const SizedBox(height: 5),
                  Map(
                    showKey: mapShowKey,
                  ),
                  const SizedBox(height: 5),
                  const Divider(thickness: 2),
                  const SizedBox(height: 5),
                  ObjectiveCreationCard(
                    objectiveListOption: some(experience.objectives),
                    objectivesShowKey: objectivesShowKey,
                  ),
                  if (experience.rewards.isNotEmpty)
                    RewardCreationCard(
                      rewardSetOption: some(experience.rewards),
                    ),
                  //Change back to TagAdditionCard if necessary
                  Showcase(
                    key: tagCreationShowKey,
                    description: S.of(context).tagCreationShowCase,
                    targetPadding: const EdgeInsets.all(5),
                    child: TagAdditionCreationCard(
                      tagChangeFunction: (KtSet<Tag> tags) =>
                          context.read<ExperienceManagementFormBloc>().add(
                                ExperienceManagementFormEvent.tagsChanged(tags),
                              ),
                      tagsEitherOption: some(
                        left(experience.tags),
                      ),
                      showErrorMessage: true,
                    ),
                  ),
                  const FinishCreationButton(),
                ],
              ),
            ),
          ),
        ),
      );
}

bool _buildWhen(
  ExperienceManagementFormState previous,
  ExperienceManagementFormState current,
) {
  final previousImages = previous.experience.imageAssetsOption.fold(
    () => List<Asset>.empty(),
    id,
  );
  final currentImages = current.experience.imageAssetsOption.fold(
    () => List<Asset>.empty(),
    id,
  );
  final shouldRebuild =
      previous.showErrorMessages != current.showErrorMessages ||
          previous.experience.difficulty != current.experience.difficulty ||
          previous.experience.coordinates != current.experience.coordinates ||
          previousImages != currentImages ||
          current.isEditing;
  return shouldRebuild;
}
