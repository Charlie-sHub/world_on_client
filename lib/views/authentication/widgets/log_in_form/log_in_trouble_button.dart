import 'package:flutter/material.dart';

class LogInTroubleButton extends StatelessWidget {
  const LogInTroubleButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      // TODO: Add functionality for recovering account
      onPressed: () => null,
      child: const Text("Having trouble logging in? tap here"),
    );
  }
}
