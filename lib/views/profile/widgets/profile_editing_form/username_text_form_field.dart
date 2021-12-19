import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/generated/l10n.dart';

class UsernameTextFormField extends StatelessWidget {
  final String initialValue;

  const UsernameTextFormField({
    Key? key,
    required this.initialValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
        maxLength: Name.maxLength,
        initialValue: initialValue,
        onChanged: (value) => context.read<ProfileEditingFormBloc>().add(
              ProfileEditingFormEvent.usernameChanged(value.trim()),
            ),
        validator: (_) => context
            .read<ProfileEditingFormBloc>()
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
                    S.of(context).usernameStringExceedsLength,
                orElse: () => S.of(context).unknownError,
              ),
              (_) => null,
            ),
        autocorrect: false,
        decoration: InputDecoration(
          labelText: S.of(context).username,
          prefixIcon: const Icon(Icons.account_box),
        ),
      );
}
