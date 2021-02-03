import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/tag_management/tag_management_form/tag_management_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';

class TagNameField extends StatelessWidget {
  final TextEditingController textController;

  const TagNameField({
    Key key,
    @required this.textController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      onChanged: (value) => context.bloc<TagManagementFormBloc>().add(
            TagManagementFormEvent.nameChanged(value.trim()),
          ),
      validator: (_) => context.bloc<TagManagementFormBloc>().state.tag.name.value.fold(
            (failure) => failure.maybeMap(
              emptyString: (_) => S.of(context).tagCreationNameEmptyString,
              multiLineString: (_) => S.of(context).tagCreationNameMultiLineString,
              stringExceedsLength: (_) => S.of(context).tagCreationNameStringExceedsLength,
              stringWithInvalidCharacters: (_) => S.of(context).tagCreationNameStringWithInvalidCharacters,
              orElse: () => S.of(context).unknownError,
            ),
            (_) => null,
          ),
      decoration: InputDecoration(
        labelText: S.of(context).create,
        prefixIcon: const Icon(Icons.bookmark),
      ),
    );
  }
}
