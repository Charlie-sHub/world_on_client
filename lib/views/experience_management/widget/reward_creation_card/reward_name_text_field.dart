import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/reward_form/reward_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/views/core/misc/string_constants.dart';

class RewardNameTextField extends StatelessWidget {
  final TextEditingController textController;

  const RewardNameTextField({
    Key key,
    @required this.textController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      maxLength: Name.maxLength,
      onChanged: (value) => context.bloc<RewardFormBloc>().add(
            RewardFormEvent.nameChanged(value),
          ),
      validator: (_) => context.bloc<RewardFormBloc>().state.reward.name.value.fold(
            (failure) => failure.maybeMap(
              emptyString: (_) => "The name can't be empty",
              stringExceedsLength: (_) => "The name is too long",
              stringWithInvalidCharacters: (_) => "The name has invalid characters",
              orElse: () => StringConst.unknownError,
            ),
            (_) => null,
          ),
      decoration: const InputDecoration(
        labelText: "Name",
        prefixIcon: Icon(Icons.priority_high),
      ),
    );
  }
}
