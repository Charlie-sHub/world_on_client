import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/views/core/misc/string_constants.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: Password.maxLength,
      onChanged: (value) => context.bloc<ProfileEditingFormBloc>().add(
            ProfileEditingFormEvent.passwordChanged(value),
          ),
      initialValue: context.bloc<ProfileEditingFormBloc>().state.user.password.getOrCrash(),
      validator: (_) => context.bloc<ProfileEditingFormBloc>().state.user.password.value.fold(
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
      autocorrect: false,
      obscureText: true,
      decoration: const InputDecoration(
        labelText: "Password",
        prefixIcon: Icon(Icons.lock),
      ),
    );
  }
}
