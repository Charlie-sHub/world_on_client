import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/edit_button.dart';

import 'delete_button.dart';

class ManageMenuButton extends StatelessWidget {
  const ManageMenuButton({
    Key? key,
    required this.experience,
    required this.reloadFunction,
  }) : super(key: key);

  final Experience experience;
  final Function() reloadFunction;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PopupMenuButton(
          padding: const EdgeInsets.all(0),
          itemBuilder: (context) => [
            PopupMenuItem(
              child: EditButton(
                experience: experience,
                reloadFunction: reloadFunction,
              ),
            ),
            PopupMenuItem(
              child: DeleteButton(
                experience: experience,
              ),
            ),
          ],
          child: const Icon(
            FontAwesomeIcons.ellipsisV,
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
