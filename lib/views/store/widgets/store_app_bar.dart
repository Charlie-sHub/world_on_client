import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class StoreAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backwardsCompatibility: false,
      title: Text(
        S.of(context).storePageTitle,
        style: const TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 20,
          color: WorldOnColors.primary,
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight - 15);
}
