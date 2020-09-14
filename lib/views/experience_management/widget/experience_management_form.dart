import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
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
        listener: _experienceManagementListener,
        buildWhen: (previous, current) {
          final _previousImages = previous.experience.imageAssetsOption.fold(() => List<Asset>.empty(), id);
          final _currentImages = current.experience.imageAssetsOption.fold(() => List<Asset>.empty(), id);
          final _shouldRebuild = previous.showErrorMessages != current.showErrorMessages ||
              previous.experience.difficulty != current.experience.difficulty ||
              previous.experience.coordinates != current.experience.coordinates ||
              _previousImages != _currentImages;
          return _shouldRebuild;
        },
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
                  const SizedBox(height: 20),
                  const Text(
                    "Set the initial difficulty",
                    textAlign: TextAlign.center,
                    style: TextStyle(
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

  void _experienceManagementListener(BuildContext context, ExperienceManagementFormState state) => state.failureOrSuccessOption.fold(
      () => null,
      (either) =>
      either.fold(
          (failure) =>
          failure.maybeMap(
            coreData: (failure) =>
              failure.coreDataFailure.maybeMap(
                nameAlreadyInUse: (_) =>
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 2),
                    message: "The title is already in use",
                  ).show(context),
                serverError: (failure) =>
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 2),
                    message: failure.errorString,
                  ).show(context),
                orElse: () =>
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 2),
                    message: "Unknown core data error",
                  ).show(context),
              ),
            orElse: () =>
              FlushbarHelper.createError(
                duration: const Duration(seconds: 2),
                message: "Unknown error",
              ).show(context),
          ),
          (_) {
          FlushbarHelper.createSuccess(
            duration: const Duration(seconds: 2),
            message: "The experience was created",
          ).show(context);
          context.bloc<ExperienceManagementFormBloc>().add(
            ExperienceManagementFormEvent.initialized(none()),
          );
        },
      ),
  );
}
