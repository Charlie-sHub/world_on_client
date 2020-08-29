import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';

class ObjectiveCoordinatePicker extends StatelessWidget {
  const ObjectiveCoordinatePicker({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Implement the map for selecting the coordinates
    return Expanded(
      child: IconButton(
        iconSize: 80,
        icon: const Icon(Icons.map),
        onPressed: () => FlushbarHelper.createInformation(
          message: "This is just a placeholder",
        ).show(context),
      ),
    );
  }
}
