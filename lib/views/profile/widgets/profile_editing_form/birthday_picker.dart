import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';

class BirthdayPicker extends StatelessWidget {
  const BirthdayPicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime.now(),
      ).then(
        (birthDate) {
          if (birthDate != null) {
            context.read<ProfileEditingFormBloc>().add(
                  ProfileEditingFormEvent.birthdayChanged(
                    birthDate,
                  ),
                );
          }
        },
      ),
      child: Text(S.of(context).selectBirthday),
    );
  }
}
