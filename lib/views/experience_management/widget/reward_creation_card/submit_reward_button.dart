import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/reward_form/reward_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';

class SubmitRewardButton extends StatelessWidget {
  const SubmitRewardButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => context.bloc<RewardFormBloc>().add(
            const RewardFormEvent.submitted(),
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
