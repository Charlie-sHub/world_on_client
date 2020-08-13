import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/objective_form/objective_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/views/core/misc/string_constants.dart';

class DescriptionTextField extends StatelessWidget {
  const DescriptionTextField({
    Key key,
    this.textController,
  }) : super(key: key);
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    // TODO: Find a better way to reset this field after submitting
    // I don't like having to use a stateful widget only for resetting the description
    // but couldn't think of anything else, at least nothing elegant
    // Maybe i could try again with changing the value of the text controller depending on the bloc state
    return TextFormField(
      controller: textController,
      maxLength: EntityDescription.maxLength,
      onChanged: (value) => context.bloc<ObjectiveFormBloc>().add(
            ObjectiveFormEvent.descriptionChanged(value),
          ),
      validator: (_) => context.bloc<ObjectiveFormBloc>().state.objective.description.value.fold(
            (failure) => failure.maybeMap(
              emptyString: (_) => "The description can't be empty",
              stringExceedsLength: (_) => "The description is too long",
              stringWithInvalidCharacters: (_) => "The description has invalid characters",
              orElse: () => StringConst.unknownError,
            ),
            (_) => null,
          ),
      maxLines: 2,
      decoration: const InputDecoration(
        labelText: "Description",
        prefixIcon: Icon(Icons.description),
      ),
    );
  }
}
