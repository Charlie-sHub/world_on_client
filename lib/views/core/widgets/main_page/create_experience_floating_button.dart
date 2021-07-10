import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/routes/router.gr.dart';

class CreateExperienceFloatingButton extends StatelessWidget {
  const CreateExperienceFloatingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      width: 46,
      child: FloatingActionButton(
        backgroundColor: WorldOnColors.accent,
        onPressed: () => context.router.push(
          ExperienceManagementPageRoute(
            experienceOption: none(),
          ),
        ),
        elevation: 0,
        child: const Icon(
          Icons.add,
          color: WorldOnColors.white,
          size: 35,
        ),
      ),
    );
  }
}
