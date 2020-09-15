import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/experience_management/widget/experience_management_form.dart';

class ExperienceManagementPage extends StatelessWidget {
  final Option<Experience> experienceOption;

  const ExperienceManagementPage({
    Key key,
    @required this.experienceOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Create a new Experience!",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: BlocProvider(
        create: (context) => getIt<ExperienceManagementFormBloc>()
          ..add(
            ExperienceManagementFormEvent.initialized(experienceOption),
          ),
        child: BlocConsumer<ExperienceManagementFormBloc, ExperienceManagementFormState>(
          listenWhen: (previous, current) => previous.failureOrSuccessOption != current.failureOrSuccessOption,
          listener: _experienceManagementListener,
          buildWhen: _buildWhen,
          builder: (context, state) => ExperienceManagementForm(),
        ),
      ),
    );
  }

  // This should have a better name
  bool _buildWhen(ExperienceManagementFormState previous, ExperienceManagementFormState current) {
    final _previousImages = previous.experience.imageAssetsOption.fold(() => List<Asset>.empty(), id);
    final _currentImages = current.experience.imageAssetsOption.fold(() => List<Asset>.empty(), id);
    final _shouldRebuild = previous.showErrorMessages != current.showErrorMessages ||
        previous.experience.difficulty != current.experience.difficulty ||
        previous.experience.coordinates != current.experience.coordinates ||
        _previousImages != _currentImages;
    return _shouldRebuild;
  }

  void _experienceManagementListener(BuildContext context, ExperienceManagementFormState state) => state.failureOrSuccessOption.fold(
        () => null,
        (either) => either.fold(
          (failure) => failure.maybeMap(
            coreData: (_coreDataFailure) => _coreDataFailure.coreDataFailure.maybeMap(
              nameAlreadyInUse: (_) => FlushbarHelper.createError(
                duration: const Duration(seconds: 2),
                message: "The title is already in use",
              ).show(context),
              serverError: (failure) => FlushbarHelper.createError(
                duration: const Duration(seconds: 2),
                message: failure.errorString,
              ).show(context),
              orElse: () => FlushbarHelper.createError(
                duration: const Duration(seconds: 2),
                message: "Unknown core data error",
              ).show(context),
            ),
            orElse: () => FlushbarHelper.createError(
              duration: const Duration(seconds: 2),
              message: "Unknown error",
            ).show(context),
          ),
          (_) {
            FlushbarHelper.createSuccess(
              duration: const Duration(seconds: 2),
              message: "The Experience was created",
            ).show(context);
            context.bloc<ExperienceManagementFormBloc>().add(
                  ExperienceManagementFormEvent.initialized(none()),
                );
          },
        ),
      );
}
