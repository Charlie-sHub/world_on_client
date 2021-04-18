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
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.read<RegistrationFormBloc>().add(
            const RegistrationFormEvent.submitted(),
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
      child: Text(
        S.of(context).submitRegister,
        style: const TextStyle(
          color: WorldOnColors.background,
          fontSize: 20,
        ),
      ),
    );
  }
}
