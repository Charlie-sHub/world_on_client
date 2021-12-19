import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class UsernameTextField extends StatelessWidget {
  const UsernameTextField({
    Key? key,
    required this.initialValue,
  }) : super(key: key);

  final String? initialValue;

  @override
  Widget build(BuildContext context) => TextFormField(
        maxLength: Name.maxLength,
        initialValue: initialValue,
        decoration: InputDecoration(
          labelText: S.of(context).username,
          prefixIcon: const Icon(
            Icons.account_box,
            color: WorldOnColors.primary,
          ),
        ),
        autocorrect: false,
        onChanged: (value) => context.read<RegistrationFormBloc>().add(
              RegistrationFormEvent.usernameChanged(value.trim()),
            ),
        validator: (_) => context
            .read<RegistrationFormBloc>()
            .state
            .user
            .username
            .value
            .fold(
              (failure) => failure.maybeMap(
                emptyString: (_) => S.of(context).usernameEmptyString,
                multiLineString: (_) => S.of(context).usernameMultiLineString,
                stringExceedsLength: (_) =>
                    S.of(context).usernameStringExceedsLength,
                stringWithInvalidCharacters: (_) =>
                    S.of(context).usernameStringWithInvalidCharacters,
                orElse: () => S.of(context).unknownError,
              ),
              (_) => null,
            ),
      );
}
