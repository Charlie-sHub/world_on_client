import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';

class BirthdayButton extends StatelessWidget {
  const BirthdayButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () async {
        final _birthDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        );
        context.bloc<RegistrationFormBloc>().add(
              RegistrationFormEvent.birthdayChanged(_birthDate),
            );
      },
      // TODO: Show the selected date after selection or the failure
      child: const Text("Select your birthday"),
    );
  }
}
