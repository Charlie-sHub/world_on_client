import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';

class BirthdayButton extends StatelessWidget {
  const BirthdayButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: () => showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        ).then(
          (birthDate) {
            if (birthDate != null) {
              context.read<RegistrationFormBloc>().add(
                    RegistrationFormEvent.birthdayChanged(
                      birthDate,
                    ),
                  );
            }
          },
        ),
        child: Text(S.of(context).selectBirthday),
      );
}
