import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class SearchTabBar extends StatelessWidget {
  const SearchTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        // Don't like the idea of having this hardcoded, but i can't find any other way to thing out the tabBar
        height: 52,
        child: TabBar(
          labelPadding: const EdgeInsets.all(2),
          indicatorColor: WorldOnColors.primary,
          tabs: [
            Tab(
              iconMargin: const EdgeInsets.all(2),
              icon: const Icon(Icons.explore),
              text: S.of(context).experiences,
            ),
            Tab(
              iconMargin: const EdgeInsets.all(2),
              icon: const Icon(Icons.account_circle),
              text: S.of(context).searchUsers,
            ),
            Tab(
              iconMargin: const EdgeInsets.all(2),
              icon: const Icon(Icons.local_offer),
              text: S.of(context).searchTags,
            ),
          ],
        ),
      );
}
