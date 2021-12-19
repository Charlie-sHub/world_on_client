import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/generated/l10n.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
        maxLength: Password.maxLength,
        onChanged: (value) => context.read<ProfileEditingFormBloc>().add(
              ProfileEditingFormEvent.passwordChanged(value.trim()),
            ),
        validator: (_) => context
            .read<ProfileEditingFormBloc>()
            .state
            .user
            .password
            .value
            .fold(
              (failure) => failure.maybeMap(
                emptyString: (_) => S.of(context).passwordEmptyString,
                multiLineString: (_) => S.of(context).passwordMultiLineString,
                stringExceedsLength: (_) =>
                    S.of(context).passwordStringExceedsLength,
                // Rather superfluous
                invalidPassword: (_) => S.of(context).invalidPassword,
                orElse: () => S.of(context).unknownError,
              ),
              (_) => null,
            ),
        autocorrect: false,
        obscureText: true,
        decoration: InputDecoration(
          labelText: S.of(context).password,
          prefixIcon: const Icon(Icons.lock),
        ),
      );
}
