import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/generated/l10n.dart';

class DescriptionFormField extends StatelessWidget {
  const DescriptionFormField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: EntityDescription.maxLength,
      onChanged: (value) => context.bloc<ExperienceManagementFormBloc>().add(
            ExperienceManagementFormEvent.descriptionChanged(value),
          ),
      validator: (_) => context.bloc<ExperienceManagementFormBloc>().state.experience.description.value.fold(
            (failure) => failure.maybeMap(
              emptyString: (_) => S.of(context).descriptionEmptyString,
              stringExceedsLength: (_) => S.of(context).descriptionStringExceedsLength,
              stringWithInvalidCharacters: (_) => S.of(context).description,
              orElse: () => S.of(context).unknownError,
            ),
            (_) => null,
          ),
      maxLines: 5,
      decoration: InputDecoration(
        labelText: S.of(context).description,
        prefixIcon: const Icon(Icons.description),
      ),
    );
  }
}
