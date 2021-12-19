import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/objective_form/objective_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ObjectiveDescriptionTextField extends StatelessWidget {
  final TextEditingController textController;

  const ObjectiveDescriptionTextField({
    Key? key,
    required this.textController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
        controller: textController,
        maxLength: EntityDescription.maxLength,
        onChanged: (value) => context.read<ObjectiveFormBloc>().add(
              ObjectiveFormEvent.descriptionChanged(value),
            ),
        validator: (_) => context
            .read<ObjectiveFormBloc>()
            .state
            .objective
            .description
            .value
            .fold(
              (failure) => failure.maybeMap(
                emptyString: (_) => S.of(context).descriptionEmptyString,
                stringExceedsLength: (_) =>
                    S.of(context).descriptionStringExceedsLength,
                stringWithInvalidCharacters: (_) =>
                    S.of(context).descriptionStringWithInvalidCharacters,
                orElse: () => S.of(context).unknownError,
              ),
              (_) => null,
            ),
        maxLines: 2,
        decoration: InputDecoration(
          labelText: S.of(context).description,
          prefixIcon: const Icon(
            Icons.description,
            color: WorldOnColors.primary,
          ),
        ),
      );
}
