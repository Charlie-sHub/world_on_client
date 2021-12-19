import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';

class EmailTextField extends StatelessWidget {
  final String initialValue;

  const EmailTextField({
    Key? key,
    required this.initialValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
        onChanged: (value) => context.read<ProfileEditingFormBloc>().add(
              ProfileEditingFormEvent.emailAddressChanged(value.trim()),
            ),
        initialValue: initialValue,
        validator: (_) =>
            context.read<ProfileEditingFormBloc>().state.user.email.value.fold(
                  (failure) => failure.maybeMap(
                    invalidEmail: (_) => S.of(context).invalidEmail,
                    orElse: () => S.of(context).unknownError,
                  ),
                  (_) => null,
                ),
        autocorrect: false,
        decoration: InputDecoration(
          labelText: S.of(context).emailAddress,
          prefixIcon: const Icon(Icons.email),
        ),
      );
}
