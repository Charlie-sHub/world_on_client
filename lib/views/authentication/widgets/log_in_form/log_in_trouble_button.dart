import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';

class LogInTroubleButton extends StatelessWidget {
  const LogInTroubleButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      // TODO: Add functionality for recovering account
      onPressed: () => null,
      child: Text(
        S.of(context).logInTrouble,
        textAlign: TextAlign.center,
      ),
    );
  }
}
