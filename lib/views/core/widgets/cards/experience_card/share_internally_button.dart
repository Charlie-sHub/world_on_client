import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/share/function/internal_share_show_modal_bottom_sheet.dart';

class ShareInternallyButton extends StatelessWidget {
  final Experience experience;

  const ShareInternallyButton({
    Key? key,
    required this.experience,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.near_me_rounded,
        color: WorldOnColors.white,
        size: 25,
      ),
      padding: const EdgeInsets.all(5),
      constraints: const BoxConstraints(),
      // Select users by tapping (adding the user added/removed event)
      // Show what users has been selected on the UI
      // Add the shared event to the bloc one the shared button is pressed
      onPressed: () => internalShareShowModalBottomSheet(context, experience),
    );
  }
}
