import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/views/core/misc/string_constants.dart';

class DescriptionTextField extends StatelessWidget {
  const DescriptionTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: EntityDescription.maxLength,
      onChanged: (value) => context.bloc<RegistrationFormBloc>().add(
            RegistrationFormEvent.descriptionChanged(value.trim()),
          ),
      validator: (_) => context.bloc<RegistrationFormBloc>().state.user.description.value.fold(
            (failure) => failure.maybeMap(
              emptyString: (_) => "The description can't be empty",
              stringExceedsLength: (_) => "The description is too long",
              orElse: () => StringConst.unknownError,
            ),
            (_) => null,
          ),
      autocorrect: false,
      maxLines: 5,
      decoration: const InputDecoration(
        labelText: "Tell us about you!",
        prefixIcon: Icon(Icons.description),
      ),
    );
  }
}
