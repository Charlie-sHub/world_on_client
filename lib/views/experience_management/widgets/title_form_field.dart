import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class TitleFormField extends StatelessWidget {
  const TitleFormField({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: Name.maxLength,
      onChanged: (value) => context.read<ExperienceManagementFormBloc>().add(
            ExperienceManagementFormEvent.titleChanged(value),
          ),
      validator: (_) => context.read<ExperienceManagementFormBloc>().state.experience.title.value.fold(
            (failure) => failure.maybeMap(
              emptyString: (_) => S.of(context).experienceTitleEmptyString,
              multiLineString: (_) => S.of(context).experienceTitleMultiLineString,
              stringExceedsLength: (_) => S.of(context).experienceTitleStringExceedsLength,
              stringWithInvalidCharacters: (_) => S.of(context).experienceTitleStringWithInvalidCharacters,
              orElse: () => S.of(context).unknownError,
            ),
            (_) => null,
          ),
      initialValue: title,
      decoration: InputDecoration(
        labelText: S.of(context).title,
        prefixIcon: const Icon(
          Icons.title,
          color: WorldOnColors.primary,
        ),
      ),
    );
  }
}
