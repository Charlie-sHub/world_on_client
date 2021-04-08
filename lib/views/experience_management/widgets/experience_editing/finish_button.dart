import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/experience_editing_form/experience_editing_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class FinishButton extends StatelessWidget {
  const FinishButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: BlocBuilder<ExperienceEditingFormBloc, ExperienceEditingFormState>(
        buildWhen: (previous, current) => previous.isSubmitting != current.isSubmitting,
        builder: (context, state) {
          if (state.isSubmitting) {
            return const Center(
              child: SizedBox(
                width: 40,
                height: 40,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(WorldOnColors.primary),
                ),
              ),
            );
          } else {
            return RaisedButton(
              onPressed: () => context.read<ExperienceEditingFormBloc>().add(
                    const ExperienceEditingFormEvent.submitted(),
                  ),
              color: WorldOnColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
                side: const BorderSide(color: WorldOnColors.primary),
              ),
              child: Text(
                S.of(context).experienceFinishButton,
                style: const TextStyle(
                  color: WorldOnColors.background,
                  fontSize: 20,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
