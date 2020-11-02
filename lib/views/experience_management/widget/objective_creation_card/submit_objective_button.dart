import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/objective_form/objective_form_bloc.dart';

class SubmitObjectiveButton extends StatelessWidget {
  const SubmitObjectiveButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => context.bloc<ObjectiveFormBloc>().add(
            const ObjectiveFormEvent.submitted(),
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Icon(Icons.check),
          SizedBox(width: 5),
          Text("Submit"),
        ],
      ),
    );
  }
}
