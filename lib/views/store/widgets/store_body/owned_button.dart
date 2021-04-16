import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';

class OwnedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.grey,
      onPressed: () => FlushbarHelper.createInformation(
        message: S.of(context).alreadyOwned,
      ).show(context),
      child: Text(S.of(context).owned),
    );
  }
}
