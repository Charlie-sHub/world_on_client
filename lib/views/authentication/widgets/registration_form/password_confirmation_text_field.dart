import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/views/core/misc/string_constants.dart';

class PasswordConfirmationTextField extends StatelessWidget {
  const PasswordConfirmationTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: Password.maxLength,
      onChanged: (value) => context.bloc<RegistrationFormBloc>().add(
            RegistrationFormEvent.passwordConfirmationChanged(value),
          ),
      validator: (_) => context.bloc<RegistrationFormBloc>().state.passwordConfirmator.value.fold(
            (failure) => failure.maybeMap(
              stringMismatch: (_) => "The passwords are different",
              emptyString: (_) => "Please confirm the password",
              orElse: () => StringConst.unknownError,
            ),
            (_) => null,
          ),
      autocorrect: false,
      obscureText: true,
      decoration: const InputDecoration(
        labelText: "Password Confirmation",
        prefixIcon: Icon(Icons.lock_outline),
      ),
    );
  }
}
