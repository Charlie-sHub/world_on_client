import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/views/core/misc/string_constants.dart';

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
              emptyString: (_) => "The title can't be empty",
              multiLineString: (_) => "The title can't be more than one line",
              stringExceedsLength: (_) => "The title is too long",
              stringWithInvalidCharacters: (_) => "The title has invalid characters",
              orElse: () => StringConst.unknownError,
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
