import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:worldon/generated/l10n.dart';

class OwnedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlidableAction(
      backgroundColor: Colors.grey,
      onPressed: (context) => FlushbarHelper.createInformation(
        message: S.of(context).alreadyOwned,
      ).show(context),
      label: S.of(context).owned,
    );
  }
}
