import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/reward_form/reward_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/views/core/misc/string_constants.dart';

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
      onChanged: (value) => context.bloc<RewardFormBloc>().add(
            RewardFormEvent.descriptionChanged(value),
          ),
      validator: (_) => context.bloc<RewardFormBloc>().state.reward.description.value.fold(
            (failure) => failure.maybeMap(
              emptyString: (_) => "The description can't be empty",
              stringExceedsLength: (_) => "The description is too long",
              stringWithInvalidCharacters: (_) => "The description has invalid characters",
              orElse: () => StringConst.unknownError,
            ),
            (_) => null,
          ),
      maxLines: 2,
      decoration: const InputDecoration(
        labelText: "Description",
        prefixIcon: Icon(Icons.description),
      ),
    );
  }
}
