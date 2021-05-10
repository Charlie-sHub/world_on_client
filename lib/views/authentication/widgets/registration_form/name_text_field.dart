import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/registration_form/registration_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class NameTextField extends StatelessWidget {
  const NameTextField({
    Key? key,
    required this.initialValue,
  }) : super(key: key);

  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: Name.maxLength,
      initialValue: initialValue,
      onChanged: (value) => context.read<RegistrationFormBloc>().add(
            RegistrationFormEvent.nameChanged(value.trim()),
          ),
      validator: (_) => context.read<RegistrationFormBloc>().state.user.name.value.fold(
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
        prefixIcon: const Icon(
          Icons.assignment_ind,
          color: WorldOnColors.primary,
        ),
      ),
    );
  }
}
