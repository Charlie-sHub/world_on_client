import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/application/experience_management/objectives_creation/objectives_creation_bloc.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/common_functions/get_color_by_difficulty.dart';
import 'package:worldon/views/core/misc/string_constants.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/misc/tag_addition_card.dart';

// TODO: How to initialize this for editing?
// The same way the profiles are, with Option<Experience> experience
// Maybe this Form should be its own page
class ExperienceManagementForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ExperienceManagementFormBloc>(),
      child: BlocConsumer<ExperienceManagementFormBloc, ExperienceManagementFormState>(
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
            // TODO: What to do when an Experience is successfully created?
            // reinitialize the form for starters
            (_) => null,
          ),
        ),
        builder: (context, state) => SingleChildScrollView(
          child: Form(
            autovalidate: state.showErrorMessages,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const ExperienceCreationTitle(),
                  const SizedBox(height: 10),
                  const TitleFormField(),
                  const SizedBox(height: 10),
                  const DescriptionFormField(),
                  const SizedBox(height: 10),
                  PicturesSelector(),
                  const SizedBox(height: 10),
                  const Map(),
                  const SizedBox(height: 10),
                  const DifficultyTitle(),
                  // Ideally the DifficultySlider would also be const
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

class RewardCreationCard extends StatelessWidget {
  const RewardCreationCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: const <Widget>[
          Text(
            "Rewards",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: WorldOnColors.background,
              fontSize: 15,
            ),
          ),
          // TODO: implement rewards creation
        ],
      ),
    );
  }
}

class ObjectiveCreationCard extends StatelessWidget {
  const ObjectiveCreationCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ObjectivesCreationBloc>(),
      child: BlocConsumer<ObjectivesCreationBloc, ObjectivesCreationState>(
        listener: (context, state) => context.bloc<ExperienceManagementFormBloc>().add(
              ExperienceManagementFormEvent.objectivesChanged(state.objectivesCreated),
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
              Container(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height * 0.1,
                  maxHeight: MediaQuery.of(context).size.height * 0.5,
                ),
                child: ListView.builder(
                  padding: const EdgeInsets.all(10),
                  itemCount: state.objectivesCreated.size,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final _objective = state.objectivesCreated.asSet().elementAt(index);
                    if (_objective.isValid) {
                      return const Text("Objective Creation Card");
                    } else {
                      return const Text("Objective Form");
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: RaisedButton(
                  onPressed: () => context.bloc<ObjectivesCreationBloc>().add(
                        ObjectivesCreationEvent.addedObjective(
                          Objective.empty(),
                        ),
                      ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Icon(Icons.add),
                      SizedBox(width: 5),
                      Text("Add Objective"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FinishButton extends StatelessWidget {
  const FinishButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => context.bloc<ExperienceManagementFormBloc>().add(
            const ExperienceManagementFormEvent.submitted(),
          ),
      color: WorldOnColors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
        side: const BorderSide(color: WorldOnColors.primary),
      ),
      child: const Text(
        "Finish",
        style: TextStyle(
          color: WorldOnColors.background,
          fontSize: 20,
        ),
      ),
    );
  }
}

class TitleFormField extends StatelessWidget {
  const TitleFormField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: 50,
      onChanged: (value) => context.bloc<ExperienceManagementFormBloc>().add(
            ExperienceManagementFormEvent.titleChanged(value),
          ),
      validator: (_) => context.bloc<ExperienceManagementFormBloc>().state.experience.title.value.fold(
            (failure) => failure.maybeMap(
              emptyString: (_) => "The title can't be empty",
              multiLineString: (_) => "The title can't be more than one line",
              stringExceedsLength: (_) => "The title is too long",
              stringWithInvalidCharacters: (_) => "The title has invalid characters",
              orElse: () => StringConst.unknownError,
            ),
            (_) => null,
          ),
      decoration: InputDecoration(
        labelText: "Title",
        prefixIcon: Icon(Icons.title),
      ),
    );
  }
}

class DescriptionFormField extends StatelessWidget {
  const DescriptionFormField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: 300,
      onChanged: (value) => context.bloc<ExperienceManagementFormBloc>().add(
            ExperienceManagementFormEvent.descriptionChanged(value),
          ),
      validator: (_) => context.bloc<ExperienceManagementFormBloc>().state.experience.description.value.fold(
            (failure) => failure.maybeMap(
              emptyString: (_) => "The description can't be empty",
              stringExceedsLength: (_) => "The description is too long",
              stringWithInvalidCharacters: (_) => "The description has invalid characters",
              orElse: () => StringConst.unknownError,
            ),
            (_) => null,
          ),
      maxLines: 5,
      decoration: InputDecoration(
        labelText: "Description",
        prefixIcon: Icon(Icons.description),
      ),
    );
  }
}

class PicturesSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // height: MediaQuery.of(context).size.height * 0.4,
    return context
      .bloc<ExperienceManagementFormBloc>()
      .state
      .experience
      .imageAssetsOption
      .fold(
        () =>
        IconButton(
          iconSize: 80,
          icon: Icon(
            Icons.photo_camera,
          ),
          onPressed: () async => pickImages(context),
        ),
        (imageAssets) =>
        Container(
          height: MediaQuery
            .of(context)
            .size
            .height * 0.4,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: GridView.count(
                  padding: const EdgeInsets.all(10),
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  crossAxisCount: 3,
                  children: List.generate(
                    imageAssets.length,
                      (index) {
                      return Card(
                        shape: const RoundedRectangleBorder(),
                        child: AssetThumb(
                          asset: imageAssets[index],
                          width: 150,
                          height: 150,
                        ),
                      );
                    },
                  ),
                ),
              ),
              IconButton(
                iconSize: 40,
                icon: Icon(
                  Icons.photo_camera,
                ),
                onPressed: () async => pickImages(context),
              ),
            ],
          ),
        ),
    );
  }

  Future pickImages(BuildContext context) async {
    final imagesPicked = await MultiImagePicker.pickImages(
      maxImages: 15,
      enableCamera: true,
      selectedAssets: context
        .bloc<ExperienceManagementFormBloc>()
        .state
        .experience
        .imageAssetsOption
        .fold(
          () => [],
        id,
      ),
      materialOptions: const MaterialOptions(
        actionBarTitle: "World On",
        allViewTitle: "All Photos",
        useDetailsView: false,
      ),
    );
    context.bloc<ExperienceManagementFormBloc>().add(ExperienceManagementFormEvent.imagesChanged(imagesPicked));
  }
}

class Map extends StatelessWidget {
  const Map({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery
        .of(context)
        .size
        .height * 0.5,
      child: Icon(
        Icons.map,
        size: 150,
      ),
    );
  }
}

class DifficultyTitle extends StatelessWidget {
  const DifficultyTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Set the initial difficulty",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: WorldOnColors.primary,
        fontSize: 15,
      ),
    );
  }
}

class DifficultySlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        trackHeight: 5,
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12),
        overlayShape: const RoundSliderOverlayShape(),
        showValueIndicator: ShowValueIndicator.always,
      ),
      child: Slider(
        min: 1,
        max: 10,
        label: context
          .bloc<ExperienceManagementFormBloc>()
          .state
          .experience
          .difficulty
          .getOrCrash()
          .toString(),
        activeColor: getColorByDifficulty(context
          .bloc<ExperienceManagementFormBloc>()
          .state
          .experience
          .difficulty
          .getOrCrash()),
        onChanged: (value) =>
          context.bloc<ExperienceManagementFormBloc>().add(
            ExperienceManagementFormEvent.difficultyChanged(value.round()),
          ),
        value: context
          .bloc<ExperienceManagementFormBloc>()
          .state
          .experience
          .difficulty
          .getOrCrash()
          .ceilToDouble(),
      ),
    );
  }
}

class ExperienceCreationTitle extends StatelessWidget {
  const ExperienceCreationTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Create a new Experience!",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: WorldOnColors.primary,
        fontSize: 25,
      ),
    );
  }
}
