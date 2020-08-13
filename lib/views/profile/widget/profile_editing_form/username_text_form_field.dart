import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/views/core/misc/string_constants.dart';

class UsernameTextFormField extends StatelessWidget {
  const UsernameTextFormField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: Name.maxLength,
      initialValue: context.bloc<ProfileEditingFormBloc>().state.user.username.getOrCrash(),
      onChanged: (value) => context.bloc<ProfileEditingFormBloc>().add(
            ProfileEditingFormEvent.usernameChanged(value),
          ),
      validator: (_) => context.bloc<ProfileEditingFormBloc>().state.user.username.value.fold(
            (failure) => failure.maybeMap(
              emptyString: (_) => "The username can't be empty",
              multiLineString: (_) => "The username can't be more than one line",
              stringExceedsLength: (_) => "The username is too long",
              stringWithInvalidCharacters: (_) => "The username has invalid characters",
              orElse: () => StringConst.unknownError,
            ),
            (_) => null,
          ),
      autocorrect: false,
      decoration: const InputDecoration(
        labelText: "Username",
        prefixIcon: Icon(Icons.account_box),
      ),
    );
  }
}
