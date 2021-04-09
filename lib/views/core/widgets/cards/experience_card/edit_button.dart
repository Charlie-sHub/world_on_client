import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/routes/router.gr.dart';

class EditButton extends StatelessWidget {
  const EditButton({
    Key key,
    @required this.experience,
    @required this.reloadFunction,
  }) : super(key: key);

  final Experience experience;
  final Function(Object param) reloadFunction;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: const EdgeInsets.all(2),
      onPressed: () async {
        Navigator.of(context).pop();
        await context.navigator
            .push(
              Routes.experienceManagementPage,
              arguments: ExperienceManagementPageArguments(
                experienceOption: some(experience),
              ),
            )
            .then(reloadFunction);
      },
      child: Row(
        children: [
          const Icon(
            Icons.edit,
            color: Colors.green,
          ),
          const SizedBox(width: 5),
          Text(
            S.of(context).editButton,
            style: const TextStyle(
              color: WorldOnColors.background,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
