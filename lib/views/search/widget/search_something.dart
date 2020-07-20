import 'package:flutter/material.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class SearchSomething extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Search for something!",
        style: TextStyle(
          fontSize: 25,
          color: WorldOnColors.white,
        ),
      ),
    );
  }
}
