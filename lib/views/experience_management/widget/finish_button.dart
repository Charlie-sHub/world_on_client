import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class FinishButton extends StatelessWidget {
  const FinishButton({
    Key key,
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
        },
      ),
    );
  }
}
