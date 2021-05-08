import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/views/core/misc/common_functions/get_color_by_difficulty.dart';

class DifficultySlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Slider(
      min: 1,
      max: 10,
      inactiveColor: Colors.grey,
      label: context.read<ExperienceManagementFormBloc>().state.experience.difficulty.getOrCrash().toString(),
      activeColor: getColorByDifficulty(context.read<ExperienceManagementFormBloc>().state.experience.difficulty.getOrCrash()),
      onChanged: (value) => context.read<ExperienceManagementFormBloc>().add(
            ExperienceManagementFormEvent.difficultyChanged(value.round()),
          ),
      value: context.read<ExperienceManagementFormBloc>().state.experience.difficulty.getOrCrash().ceilToDouble(),
    );
  }
}
