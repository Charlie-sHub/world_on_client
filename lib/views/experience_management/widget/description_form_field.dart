import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/views/core/misc/string_constants.dart';

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
              emptyString: (_) => "The description can't be empty",
              stringExceedsLength: (_) => "The description is too long",
              stringWithInvalidCharacters: (_) => "The description has invalid characters",
              orElse: () => StringConst.unknownError,
            ),
            (_) => null,
          ),
      maxLines: 5,
      decoration: const InputDecoration(
        labelText: "Description",
        prefixIcon: Icon(Icons.description),
      ),
    );
  }
}
