import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/routes/router.gr.dart';

class SelectCreationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: WorldOnColors.white,
                primary: WorldOnColors.background,
                elevation: 5,
              ),
              onPressed: () => context.router.push(
                ExperienceManagementPageRoute(
                  experienceOption: none(),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.explore_rounded,
                          color: WorldOnColors.primary,
                          size: 50,
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
                    const SizedBox(height: 15),
                    Text(
                      S.of(context).experienceButtonExplanation,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Button to go to the tag creation page, now that the tag creation is part of the experience creation it is rather superfluous
          /*
        TextButton(
          onPressed: () => context.router.push(
            Routes.tagManagementPage,
            arguments: TagManagementPageArguments(
              tagOption: none(),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                const Icon(
                  Icons.tags,
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
