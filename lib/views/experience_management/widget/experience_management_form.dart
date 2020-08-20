import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/misc/tag_addition_card/tag_addition_card.dart';
import 'package:worldon/views/experience_management/widget/description_form_field.dart';
import 'package:worldon/views/experience_management/widget/difficulty_slider.dart';
import 'package:worldon/views/experience_management/widget/finish_button.dart';
import 'package:worldon/views/experience_management/widget/map.dart';
import 'package:worldon/views/experience_management/widget/objective_creation_card/objective_creation_card.dart';
import 'package:worldon/views/experience_management/widget/pictures_selector.dart';
import 'package:worldon/views/experience_management/widget/reward_creation_card.dart';
import 'package:worldon/views/experience_management/widget/title_form_field.dart';

// TODO: How to initialize this for editing?
// The same way the profiles are, with Option<Experience> experience
// Maybe this Form should be its own page
class ExperienceManagementForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ExperienceManagementFormBloc>(),
      child: BlocConsumer<ExperienceManagementFormBloc, ExperienceManagementFormState>(
        listenWhen: (previous, current) => previous.failureOrSuccessOption != current.failureOrSuccessOption,
        listener: (context, state) => state.failureOrSuccessOption.fold(
          () => null,
          (either) => either.fold(
            (failure) => failure.maybeMap(
              coreData: (failure) => failure.coreDataFailure.maybeMap(
                nameAlreadyInUse: (_) => FlushbarHelper.createError(
                  duration: const Duration(seconds: 2),
                  message: "The title is already in use",
                ).show(context),
                serverError: (failure) => FlushbarHelper.createError(
                  duration: const Duration(seconds: 2),
                  message: failure.errorString,
                ).show(context),
                orElse: () => null,
              ),
              orElse: () => null,
            ),
            (_) => FlushbarHelper.createSuccess(
              duration: const Duration(seconds: 2),
              message: "The experience was created",
            ).show(context),
          ),
        ),
        builder: (context, state) => SingleChildScrollView(
          child: Form(
            autovalidate: state.showErrorMessages,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const Text(
                    "Create a new Experience!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: WorldOnColors.primary,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const TitleFormField(),
                  const SizedBox(height: 10),
                  const DescriptionFormField(),
                  const SizedBox(height: 10),
                  PicturesSelector(),
                  const SizedBox(height: 10),
                  const Map(),
                  const SizedBox(height: 10),
                  const Text(
                    "Set the initial difficulty",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: WorldOnColors.primary,
                      fontSize: 15,
                    ),
                  ),
                  DifficultySlider(),
                  const ObjectiveCreationCard(),
                  const RewardCreationCard(),
                  TagAdditionCard(
                    tagChangeFunction: (KtSet<Tag> tags) => context.bloc<ExperienceManagementFormBloc>().add(
                          ExperienceManagementFormEvent.tagsChanged(tags),
                        ),
                  ),
                  const FinishButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
