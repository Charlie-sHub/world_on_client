import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'package:worldon/views/core/misc/string_constants.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) => context.bloc<ProfileEditingFormBloc>().add(
            ProfileEditingFormEvent.emailAddressChanged(value),
          ),
      initialValue: context.bloc<ProfileEditingFormBloc>().state.user.email.getOrCrash(),
      validator: (_) => context.bloc<ProfileEditingFormBloc>().state.user.email.value.fold(
            (failure) => failure.maybeMap(
              invalidEmail: (_) => "Invalid email",
              orElse: () => StringConst.unknownError,
            ),
            (_) => null,
          ),
      autocorrect: false,
      decoration: const InputDecoration(
        labelText: "Email Address",
        prefixIcon: Icon(Icons.email),
      ),
    );
  }
}
