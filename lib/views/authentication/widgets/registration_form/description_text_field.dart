import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/generated/l10n.dart';

class DescriptionTextField extends StatelessWidget {
  const DescriptionTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: EntityDescription.maxLength,
      onChanged: (value) => context.read<RegistrationFormBloc>().add(
            RegistrationFormEvent.descriptionChanged(value.trim()),
          ),
      validator: (_) => context.read<RegistrationFormBloc>().state.user.description.value.fold(
            (failure) => failure.maybeMap(
              emptyString: (_) => S.of(context).descriptionEmptyString,
              stringExceedsLength: (_) => S.of(context).descriptionStringExceedsLength,
              orElse: () => S.of(context).unknownError,
            ),
            (_) => null,
          ),
      autocorrect: false,
      maxLines: 5,
      decoration: InputDecoration(
        labelText: S.of(context).registerDescriptionLabelText,
        prefixIcon: const Icon(Icons.description),
      ),
    );
  }
}
