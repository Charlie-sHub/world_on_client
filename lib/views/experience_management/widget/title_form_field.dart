import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/generated/l10n.dart';

class TitleFormField extends StatelessWidget {
  const TitleFormField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: Name.maxLength,
      onChanged: (value) => context.bloc<ExperienceManagementFormBloc>().add(
            ExperienceManagementFormEvent.titleChanged(value),
          ),
      validator: (_) => context.bloc<ExperienceManagementFormBloc>().state.experience.title.value.fold(
            (failure) => failure.maybeMap(
              emptyString: (_) => S.of(context).experienceTitleEmptyString,
              multiLineString: (_) => S.of(context).experienceTitleMultiLineString,
              stringExceedsLength: (_) => S.of(context).experienceTitleStringExceedsLength,
              stringWithInvalidCharacters: (_) => S.of(context).experienceTitleStringWithInvalidCharacters,
              orElse: () => S.of(context).unknownError,
            ),
            (_) => null,
          ),
      decoration: const InputDecoration(
        labelText: "Title",
        prefixIcon: Icon(Icons.title),
      ),
    );
  }
}
