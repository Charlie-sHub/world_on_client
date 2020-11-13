import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/views/core/misc/string_constants.dart';

class UsernameTextField extends StatelessWidget {
  const UsernameTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: Name.maxLength,
      decoration: const InputDecoration(
        labelText: "Username",
        prefixIcon: Icon(Icons.account_box),
      ),
      autocorrect: false,
      onChanged: (value) => context.bloc<RegistrationFormBloc>().add(
            RegistrationFormEvent.usernameChanged(value.trim()),
          ),
      validator: (_) => context.bloc<RegistrationFormBloc>().state.user.username.value.fold(
            (failure) => failure.maybeMap(
              emptyString: (_) => "The username can't be empty",
              multiLineString: (_) => "The username can't be more than one line",
              stringExceedsLength: (_) => "The username is too long",
              stringWithInvalidCharacters: (_) => "The username has invalid characters",
              orElse: () => StringConst.unknownError,
            ),
            (_) => null,
          ),
    );
  }
}
