import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/generated/l10n.dart';

class DescriptionTextFormField extends StatelessWidget {
  final String initialValue;

  const DescriptionTextFormField({
    Key key,
    @required this.initialValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: EntityDescription.maxLength,
      onChanged: (value) => context.bloc<ProfileEditingFormBloc>().add(
            ProfileEditingFormEvent.descriptionChanged(value.trim()),
          ),
      initialValue: initialValue,
      validator: (_) => context.bloc<ProfileEditingFormBloc>().state.user.description.value.fold(
            (failure) => failure.maybeMap(
              emptyString: (_) => S.of(context).descriptionEmptyString,
              stringExceedsLength: (_) => S.of(context).descriptionStringExceedsLength,
              stringWithInvalidCharacters: (_) => S.of(context).descriptionStringWithInvalidCharacters,
              orElse: () => S.of(context).unknownError,
            ),
            (_) => null,
          ),
      autocorrect: false,
      maxLines: 5,
      decoration: InputDecoration(
        labelText: S.of(context).description,
        prefixIcon: const Icon(Icons.description),
      ),
    );
  }
}
