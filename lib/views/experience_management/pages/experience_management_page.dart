import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/experience_management/widgets/experience_creation/experience_creation_form.dart';
import 'package:worldon/views/experience_management/widgets/experience_editing/experience_editing_form.dart';

class ExperienceManagementPage extends StatelessWidget {
  const ExperienceManagementPage({
    Key key,
    @required this.experienceOption,
  }) : super(key: key);

  final Option<Experience> experienceOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          experienceOption.fold(
            () => S.of(context).experienceCreationTitle,
            (a) => S.of(context).experienceEditingTitle,
          ),
          textAlign: TextAlign.center,
          style: const TextStyle(
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
        child: experienceOption.fold(
          () => ExperienceCreationForm(),
          (_experience) => ExperienceEditingForm(
            experience: _experience,
          ),
        ),
      ),
    );
  }
}
