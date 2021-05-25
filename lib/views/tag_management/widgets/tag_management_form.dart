import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/tag_management/tag_management_form/tag_management_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';

class TagManagementForm extends StatelessWidget {
  final TextEditingController textController;

  const TagManagementForm({
    Key? key,
    required this.textController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: context.read<TagManagementFormBloc>().state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
      child: Material(
        elevation: 15,
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
        child: TextFormField(
          controller: textController,
          onChanged: (value) => context.read<TagManagementFormBloc>().add(
                TagManagementFormEvent.nameChanged(value.trim()),
              ),
          validator: (_) => context.read<TagManagementFormBloc>().state.tag.name.value.fold(
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
            hintText: S.of(context).create,
            contentPadding: const EdgeInsets.all(10),
            suffixIcon: IconButton(
              icon: const Icon(
                Icons.add,
                size: 35,
              ),
              onPressed: () => context.read<TagManagementFormBloc>().add(
                    const TagManagementFormEvent.submitted(),
                  ),
            ),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
