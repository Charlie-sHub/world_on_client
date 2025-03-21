import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';

class EULACheckBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(S.of(context).eulaCheckBoxTitle),
      value: context.read<RegistrationFormBloc>().state.acceptedEULA,
      subtitle: !context.read<RegistrationFormBloc>().state.acceptedEULA && context.read<RegistrationFormBloc>().state.showErrorMessages
          ? Text(
              S.of(context).unCheckedEulaMessage,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.red),
            )
          : null,
      onChanged: (_) => context.read<RegistrationFormBloc>().add(
            const RegistrationFormEvent.tappedEULA(),
          ),
    );
  }
}
