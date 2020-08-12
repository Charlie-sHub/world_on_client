import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';
import 'package:worldon/views/core/misc/string_constants.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) => context.bloc<RegistrationFormBloc>().add(
            RegistrationFormEvent.emailAddressChanged(value),
          ),
      validator: (_) => context.bloc<RegistrationFormBloc>().state.user.email.value.fold(
            (failure) => failure.maybeMap(
              invalidEmail: (_) => "Invalid email",
              orElse: () => StringConst.unknownError,
            ),
            (_) => null,
          ),
      initialValue: context.bloc<RegistrationFormBloc>().state.user.email.value.fold(
            (_) => "",
            id,
          ),
      autocorrect: false,
      decoration: const InputDecoration(
        labelText: "Email Address",
        prefixIcon: Icon(Icons.email),
      ),
    );
  }
}
