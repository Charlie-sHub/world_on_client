import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';

class EULACheckBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: const Text("Do you agree with our terms and services?"),
      // TODO: Create and show the aforementioned terms and services
      value: context.bloc<RegistrationFormBloc>().state.acceptedEULA,
      subtitle: !context.bloc<RegistrationFormBloc>().state.acceptedEULA && context.bloc<RegistrationFormBloc>().state.showErrorMessages
          ? const Text(
              "Please check the EULA",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red),
            )
          : null,
      onChanged: (_) => context.bloc<RegistrationFormBloc>().add(
            const RegistrationFormEvent.tappedEULA(),
          ),
    );
  }
}
