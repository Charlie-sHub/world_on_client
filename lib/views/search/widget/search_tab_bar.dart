import 'package:flutter/material.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class SearchTabBar extends StatelessWidget {
  const SearchTabBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Don't like the idea of having this hardcoded, but i can't find any other way to thing out the tabBar
      height: 52,
      child: const TabBar(
        labelPadding: EdgeInsets.all(2),
        indicatorColor: WorldOnColors.primary,
        tabs: [
          Tab(
            iconMargin: EdgeInsets.all(2),
            icon: Icon(Icons.explore),
            text: "Experiences",
          ),
          Tab(
            iconMargin: EdgeInsets.all(2),
            icon: Icon(Icons.account_circle),
            text: "Users",
          ),
          Tab(
            iconMargin: EdgeInsets.all(2),
            icon: Icon(Icons.local_offer),
            text: "Tags",
          ),
        ],
      ),
    );
  }
}
