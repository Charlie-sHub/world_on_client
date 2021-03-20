import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/reward_form/reward_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/generated/l10n.dart';

class RewardDescriptionTextField extends StatelessWidget {
  final TextEditingController textController;

  const RewardDescriptionTextField({
    Key key,
    @required this.textController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      maxLength: EntityDescription.maxLength,
      onChanged: (value) => context.read<RewardFormBloc>().add(
            RewardFormEvent.descriptionChanged(value),
          ),
      validator: (_) => context.read<RewardFormBloc>().state.reward.description.value.fold(
            (failure) => failure.maybeMap(
              emptyString: (_) => S.of(context).descriptionEmptyString,
              stringExceedsLength: (_) => S.of(context).descriptionStringExceedsLength,
              stringWithInvalidCharacters: (_) => S.of(context).descriptionStringWithInvalidCharacters,
              orElse: () => S.of(context).unknownError,
            ),
            (_) => null,
          ),
      maxLines: 2,
      decoration: InputDecoration(
        labelText: S.of(context).description,
        prefixIcon: const Icon(Icons.description),
      ),
    );
  }
}
