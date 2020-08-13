import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/views/core/misc/common_functions/get_color_by_difficulty.dart';

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
        label: context.bloc<ExperienceManagementFormBloc>().state.experience.difficulty.getOrCrash().toString(),
        activeColor: getColorByDifficulty(context.bloc<ExperienceManagementFormBloc>().state.experience.difficulty.getOrCrash()),
        onChanged: (value) => context.bloc<ExperienceManagementFormBloc>().add(
              ExperienceManagementFormEvent.difficultyChanged(value.round()),
            ),
        value: context.bloc<ExperienceManagementFormBloc>().state.experience.difficulty.getOrCrash().ceilToDouble(),
      ),
    );
  }
}
