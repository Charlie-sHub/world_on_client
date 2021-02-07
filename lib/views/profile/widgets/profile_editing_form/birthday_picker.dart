import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';

class BirthdayPicker extends StatelessWidget {
  const BirthdayPicker({
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
        context.bloc<ProfileEditingFormBloc>().add(
              ProfileEditingFormEvent.birthdayChanged(_birthDate),
            );
      },
      // TODO: Make it so the text changes to the selected date after selection or the failure
      child: Text(S.of(context).selectBirthday),
    );
  }
}
