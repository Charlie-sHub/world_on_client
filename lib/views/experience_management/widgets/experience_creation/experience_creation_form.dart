import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/experience_management/widgets/helper_methods.dart';
import 'package:worldon/views/experience_management/widgets/map.dart';
import 'package:worldon/views/experience_management/widgets/objective_creation_card/objective_creation_card.dart';

import '../description_form_field.dart';
import '../difficulty_slider.dart';
import '../finish_button.dart';
import '../pictures_selector.dart';
import '../tag_addition_creation_card.dart';
import '../title_form_field.dart';

class ExperienceCreationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExperienceManagementFormBloc, ExperienceManagementFormState>(
      listenWhen: (previous, current) => previous.failureOrSuccessOption != current.failureOrSuccessOption,
      listener: (context, state) => state.failureOrSuccessOption.fold(
        () {},
        (either) => either.fold(
          (failure) => onExperienceManagementFailure(failure, context),
          (_) => context.router.pop(),
        ),
      ),
      buildWhen: _buildWhen,
      builder: (context, state) => SingleChildScrollView(
        child: Form(
          autovalidateMode: state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
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
                const SizedBox(height: 5),
                const Divider(thickness: 2),
                const SizedBox(height: 5),
                PicturesSelector(),
                const SizedBox(height: 10),
                const Divider(thickness: 2),
                const SizedBox(height: 5),
                Text(
                  S.of(context).setExperienceDifficulty,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                DifficultySlider(),
                const SizedBox(height: 5),
                const Divider(thickness: 2),
                const SizedBox(height: 5),
                Map(),
                const SizedBox(height: 5),
                const Divider(thickness: 2),
                const SizedBox(height: 5),
                ObjectiveCreationCard(
                  objectiveListOption: none(),
                ),
                /*
                RewardCreationCard(
                  rewardSetOption: none(),
                ),
                 */
                const SizedBox(height: 5),
                const Divider(thickness: 2),
                const SizedBox(height: 5),
                TagAdditionCreationCard(
                  tagChangeFunction: (KtSet<Tag> tags) => context.read<ExperienceManagementFormBloc>().add(
                        ExperienceManagementFormEvent.tagsChanged(tags),
                      ),
                  tagsEitherOption: none(),
                  showErrorMessage: true,
                ),
                const SizedBox(height: 5),
                const Divider(thickness: 2),
                const SizedBox(height: 5),
                const FinishButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool _buildWhen(ExperienceManagementFormState previous, ExperienceManagementFormState current) {
    final _previousImages = previous.experience.imageAssetsOption.fold(
      () => List<Asset>.empty(),
      id,
    );
    final _currentImages = current.experience.imageAssetsOption.fold(
      () => List<Asset>.empty(),
      id,
    );
    final _shouldRebuild = previous.showErrorMessages != current.showErrorMessages ||
        previous.experience.difficulty != current.experience.difficulty ||
        previous.experience.coordinates != current.experience.coordinates ||
        _previousImages != _currentImages;
    return _shouldRebuild;
  }
}
