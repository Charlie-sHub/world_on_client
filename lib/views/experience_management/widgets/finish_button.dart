import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class FinishButton extends StatelessWidget {
  const FinishButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: BlocBuilder<ExperienceManagementFormBloc, ExperienceManagementFormState>(
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
            return ElevatedButton(
              onPressed: () => context.read<ExperienceManagementFormBloc>().add(
                    const ExperienceManagementFormEvent.submitted(),
                  ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  WorldOnColors.primary,
                ),
                shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                    side: BorderSide(color: WorldOnColors.primary),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 5,
                ),
                child: Text(
                  S.of(context).experienceFinishButton,
                  style: const TextStyle(
                    color: WorldOnColors.background,
                    fontSize: 30,
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
