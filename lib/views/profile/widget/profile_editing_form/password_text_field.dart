import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/generated/l10n.dart';

class PasswordTextField extends StatelessWidget {
  final String initialValue;

  const PasswordTextField({
    Key key,
    @required this.initialValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: Password.maxLength,
      onChanged: (value) => context.bloc<ProfileEditingFormBloc>().add(
            ProfileEditingFormEvent.passwordChanged(value.trim()),
          ),
      initialValue: initialValue,
      validator: (_) => context.bloc<ProfileEditingFormBloc>().state.user.password.value.fold(
            (failure) => failure.maybeMap(
              emptyString: (_) => S.of(context).passwordEmptyString,
              multiLineString: (_) => S.of(context).passwordMultiLineString,
              stringExceedsLength: (_) => S.of(context).passwordStringExceedsLength,
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
}
