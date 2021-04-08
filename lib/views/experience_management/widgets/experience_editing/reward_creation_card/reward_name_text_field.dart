import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/reward_form/reward_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/generated/l10n.dart';

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
      onChanged: (value) => context.read<RewardFormBloc>().add(
            RewardFormEvent.nameChanged(value),
          ),
      validator: (_) => context.read<RewardFormBloc>().state.reward.name.value.fold(
            (failure) => failure.maybeMap(
              emptyString: (_) => S.of(context).nameEmptyString,
              multiLineString: (_) => S.of(context).nameMultiLineString,
              stringExceedsLength: (_) => S.of(context).nameStringExceedsLength,
              stringWithInvalidCharacters: (_) => S.of(context).nameStringWithInvalidCharacters,
              orElse: () => S.of(context).unknownError,
            ),
            (_) => null,
          ),
      decoration: InputDecoration(
        labelText: S.of(context).name,
        prefixIcon: const Icon(Icons.priority_high),
      ),
    );
  }
}
