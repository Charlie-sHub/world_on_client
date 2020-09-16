import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/tag_management/tag_management_form/tag_management_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/views/core/misc/string_constants.dart';

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
      maxLength: Name.maxLength,
      onChanged: (value) => context.bloc<TagManagementFormBloc>().add(
            TagManagementFormEvent.nameChanged(value.trim()),
          ),
      validator: (_) => context.bloc<TagManagementFormBloc>().state.tag.name.value.fold(
            (failure) => failure.maybeMap(
              emptyString: (_) => "The tag can't be empty",
              multiLineString: (_) => "The tag can't be more than one line",
              stringExceedsLength: (_) => "The tag is too long",
              stringWithInvalidCharacters: (_) => "The tag has invalid characters",
              orElse: () => StringConst.unknownError,
            ),
            (_) => null,
          ),
      decoration: const InputDecoration(
        labelText: "Tag",
        // TODO: Find a way to center the icon
        prefixIcon: Icon(Icons.bookmark),
      ),
    );
  }
}
