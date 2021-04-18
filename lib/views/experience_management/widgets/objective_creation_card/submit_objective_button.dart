import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/objective_form/objective_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';

class SubmitObjectiveButton extends StatelessWidget {
  const SubmitObjectiveButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.read<ObjectiveFormBloc>().add(
            const ObjectiveFormEvent.submitted(),
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Icon(Icons.check),
          const SizedBox(width: 5),
          Text(S.of(context).submitButton),
        ],
      ),
    );
  }
}
