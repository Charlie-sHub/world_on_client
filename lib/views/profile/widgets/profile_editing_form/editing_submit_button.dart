import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class EditingSubmitButton extends StatelessWidget {
  const EditingSubmitButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileEditingFormBloc, ProfileEditingFormState>(
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
            onPressed: () => context.read<ProfileEditingFormBloc>().add(
                  const ProfileEditingFormEvent.submitted(),
                ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                WorldOnColors.primary,
              ),
            ),
            child: Text(
              S.of(context).submitButton,
              style: const TextStyle(
                color: WorldOnColors.background,
                fontSize: 20,
              ),
            ),
          );
        }
      },
    );
  }
}
