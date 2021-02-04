import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/routes/router.gr.dart';

class SelectCreationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlatButton(
          onPressed: () => context.navigator.push(
            Routes.experienceManagementPage,
            arguments: ExperienceManagementPageArguments(
              experienceOption: none(),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                const FaIcon(
                  FontAwesomeIcons.compass,
                  color: WorldOnColors.primary,
                  size: 40,
                ),
                const SizedBox(width: 20),
                Text(
                  S.of(context).experience,
                  style: const TextStyle(
                    fontSize: 40,
                  ),
                ),
              ],
            ),
          ),
        ),
        // Button to go to the tag creation page, now that the tag creation is part of the experience creation it is rather superfluous
        /*
        FlatButton(
          onPressed: () => context.navigator.push(
            Routes.tagManagementPage,
            arguments: TagManagementPageArguments(
              tagOption: none(),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                const FaIcon(
                  FontAwesomeIcons.tags,
                  color: WorldOnColors.primary,
                  size: 32,
                ),
                const SizedBox(width: 20),
                Text(
                  S.of(context).tag,
                  style: const TextStyle(
                    fontSize: 40,
                  ),
                ),
              ],
            ),
          ),
        ),*/
      ],
    );
  }
}
