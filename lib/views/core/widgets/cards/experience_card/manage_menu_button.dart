import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/edit_button.dart';

import 'delete_button.dart';

class ManageMenuButton extends StatelessWidget {
  const ManageMenuButton({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PopupMenuButton(
          padding: const EdgeInsets.all(0),
          color: Colors.white,
          itemBuilder: (context) => [
            PopupMenuItem(
              child: EditButton(
                experience: experience,
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
            color: WorldOnColors.background,
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
