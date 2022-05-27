import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/objective_form/objective_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ObjectiveTitleFormField extends StatelessWidget {
  const ObjectiveTitleFormField({
    required this.textController,
    Key? key,
  }) : super(key: key);

  final TextEditingController textController;

  @override
  Widget build(BuildContext context) => TextFormField(
        controller: textController,
        maxLength: Name.maxLength,
        onChanged: (value) => context.read<ObjectiveFormBloc>().add(
              ObjectiveFormEvent.titleChanged(value),
            ),
        validator: (_) => context
            .read<ObjectiveFormBloc>()
            .state
            .objective
            .title
            ?.value
            .fold(
              (failure) => failure.maybeMap(
                emptyString: (_) => S.of(context).experienceTitleEmptyString,
                multiLineString: (_) =>
                    S.of(context).experienceTitleMultiLineString,
                stringExceedsLength: (_) =>
                    S.of(context).experienceTitleStringExceedsLength,
                stringWithInvalidCharacters: (_) =>
                    S.of(context).experienceTitleStringWithInvalidCharacters,
                orElse: () => S.of(context).unknownError,
              ),
              (_) => null,
            ),
        decoration: InputDecoration(
          labelText: S.of(context).title,
          prefixIcon: const Icon(
            Icons.title,
            color: WorldOnColors.primary,
          ),
        ),
      );
}
