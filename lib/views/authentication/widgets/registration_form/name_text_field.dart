import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/views/core/misc/string_constants.dart';

class NameTextField extends StatelessWidget {
  const NameTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: Name.maxLength,
      onChanged: (value) => context.bloc<RegistrationFormBloc>().add(
            RegistrationFormEvent.nameChanged(value),
          ),
      validator: (_) => context.bloc<RegistrationFormBloc>().state.user.name.value.fold(
            (failure) => failure.maybeMap(
              emptyString: (_) => "The name can't be empty",
              multiLineString: (_) => "The name can't be more than one line",
              stringExceedsLength: (_) => "The name is too long",
              stringWithInvalidCharacters: (_) => "The name has invalid characters",
              orElse: () => StringConst.unknownError,
            ),
            (_) => null,
          ),
      initialValue: context.bloc<RegistrationFormBloc>().state.user.name.value.fold(
            (_) => "",
            id,
          ),
      autocorrect: false,
      decoration: const InputDecoration(
        labelText: "Name",
        prefixIcon: Icon(Icons.assignment_ind),
      ),
    );
  }
}
