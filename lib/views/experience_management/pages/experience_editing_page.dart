import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:worldon/application/experience_management/experience_editing_form/experience_editing_form_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/experience_management/widgets/experience_editing/experience_editing_form.dart';

class ExperienceEditingPage extends StatelessWidget {
  const ExperienceEditingPage({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          S.of(context).experienceEditingTitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: BlocProvider(
        create: (context) => getIt<ExperienceEditingFormBloc>()
          ..add(
            ExperienceEditingFormEvent.initialized(experience),
          ),
        child: BlocConsumer<ExperienceEditingFormBloc, ExperienceEditingFormState>(
          listenWhen: (previous, current) => previous.failureOrSuccessOption != current.failureOrSuccessOption,
          listener: (context, state) => state.failureOrSuccessOption.fold(
            () => null,
            (either) => either.fold(
              (failure) => _onFailure(failure, context),
              (_) => context.navigator.pop(),
            ),
          ),
          buildWhen: _buildWhen,
          builder: (context, state) => ExperienceEditingForm(experience: experience),
        ),
      ),
    );
  }

  void _onFailure(Failure failure, BuildContext context) => failure.maybeMap(
        coreData: (_coreDataFailure) => _coreDataFailure.coreDataFailure.maybeMap(
          nameAlreadyInUse: (_) => FlushbarHelper.createError(
            duration: const Duration(seconds: 2),
            message: S.of(context).experienceTitleAlreadyInUse,
          ).show(context),
          serverError: (failure) => FlushbarHelper.createError(
            duration: const Duration(seconds: 2),
            message: failure.errorString,
          ).show(context),
          orElse: () => FlushbarHelper.createError(
            duration: const Duration(seconds: 2),
            message: S.of(context).unknownCoreDataError,
          ).show(context),
        ),
        orElse: () => FlushbarHelper.createError(
          duration: const Duration(seconds: 2),
          message: S.of(context).unknownError,
        ).show(context),
      );

  bool _buildWhen(ExperienceEditingFormState previous, ExperienceEditingFormState current) {
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
        _previousImages != _currentImages ||
        previous.experience.imageURLs != current.experience.imageURLs;
    return _shouldRebuild;
  }
}
