import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/log_in_form/log_in_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/views/core/misc/string_constants.dart';

class PasswordTextField extends StatelessWidget {
  final Function eventToAdd;

  const PasswordTextField({
    Key key,
    @required this.eventToAdd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: Password.maxLength,
      decoration: const InputDecoration(
        labelText: "Password",
        prefixIcon: Icon(Icons.lock),
      ),
      autocorrect: false,
      obscureText: true,
      onChanged: (value) => eventToAdd(value),
      validator: (_) => context.bloc<LogInFormBloc>().state.password.value.fold(
            // TODO: Instead of mapping just return an error string from the failure
            (failure) => failure.maybeMap(
              emptyString: (_) => "The password can't be empty",
              multiLineString: (_) => "The password can't be more than one line",
              stringExceedsLength: (_) => "The password is too long",
              // Rather superfluous
              invalidPassword: (_) => "The password is invalid",
              orElse: () => StringConst.unknownError,
            ),
            (_) => null,
          ),
    );
  }
}
