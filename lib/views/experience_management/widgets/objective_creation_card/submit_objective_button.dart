import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/objective_form/objective_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';

class SubmitObjectiveButton extends StatelessWidget {
  const SubmitObjectiveButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: () {
          FocusScope.of(context).unfocus();
          context.read<ObjectiveFormBloc>().add(
                const ObjectiveFormEvent.submitted(),
              );
        },
        child: Text(S.of(context).createObjective),
      );
}
