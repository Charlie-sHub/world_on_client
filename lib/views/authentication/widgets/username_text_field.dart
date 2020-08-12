import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/log_in_form/log_in_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/views/core/misc/string_constants.dart';

class UsernameTextField extends StatelessWidget {
  final Function eventToAdd;

  const UsernameTextField({
    Key key,
    @required this.eventToAdd,
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
      onChanged: (value) => eventToAdd(value),
      validator: (_) => context.bloc<LogInFormBloc>().state.username.value.fold(
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
