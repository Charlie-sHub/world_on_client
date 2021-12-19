import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class SubmitRegisterButton extends StatelessWidget {
  const SubmitRegisterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<RegistrationFormBloc, RegistrationFormState>(
        buildWhen: (previous, current) =>
            previous.isSubmitting != current.isSubmitting,
        builder: (context, state) => state.isSubmitting
            ? const Center(
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: CircularProgressIndicator(
                    valueColor:
                        AlwaysStoppedAnimation<Color>(WorldOnColors.primary),
                  ),
                ),
              )
            : ElevatedButton(
                onPressed: () => context.read<RegistrationFormBloc>().add(
                      const RegistrationFormEvent.submitted(),
                    ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    WorldOnColors.primary,
                  ),
                ),
                child: Text(
                  S.of(context).submitRegister,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
      );
}
