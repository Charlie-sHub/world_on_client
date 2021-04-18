import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/generated/l10n.dart';

class NameTextFormField extends StatelessWidget {
  final String initialValue;

  const NameTextFormField({
    Key? key,
    required this.initialValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: Name.maxLength,
      initialValue: initialValue,
      onChanged: (value) => context.read<ProfileEditingFormBloc>().add(
            ProfileEditingFormEvent.nameChanged(value.trim()),
          ),
      validator: (_) => context.read<ProfileEditingFormBloc>().state.user.name.value.fold(
            (failure) => failure.maybeMap(
              emptyString: (_) => S.of(context).nameEmptyString,
              multiLineString: (_) => S.of(context).nameMultiLineString,
              stringExceedsLength: (_) => S.of(context).nameStringExceedsLength,
              stringWithInvalidCharacters: (_) => S.of(context).nameStringWithInvalidCharacters,
              orElse: () => S.of(context).unknownError,
            ),
            (_) => null,
          ),
      autocorrect: false,
      decoration: InputDecoration(
        labelText: S.of(context).name,
        prefixIcon: const Icon(Icons.assignment_ind),
      ),
    );
  }
}
