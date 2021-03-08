import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class PasswordConfirmationTextField extends StatelessWidget {
  const PasswordConfirmationTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: Password.maxLength,
      onChanged: (value) => context.bloc<RegistrationFormBloc>().add(
            RegistrationFormEvent.passwordConfirmationChanged(value.trim()),
          ),
      validator: (_) => context.bloc<RegistrationFormBloc>().state.passwordConfirmator.value.fold(
            (failure) => failure.maybeMap(
              stringMismatch: (_) => S.of(context).passwordStringMismatch,
              emptyString: (_) => S.of(context).passwordConfirmationEmptyString,
              orElse: () => S.of(context).unknownError,
            ),
            (_) => null,
          ),
      autocorrect: false,
      obscureText: true,
      decoration: InputDecoration(
        labelText: S.of(context).passwordConfirmationLabelText,
        prefixIcon: const Icon(
          Icons.lock_outline,
          color: WorldOnColors.primary,
        ),
      ),
    );
  }
}
