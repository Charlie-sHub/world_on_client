import 'package:flutter/material.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class NoExperienceView extends StatelessWidget {
  const NoExperienceView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              "No Experience chosen",
              style: TextStyle(
                color: WorldOnColors.red,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Please select an Experience to start the adventure of your life!",
              style: TextStyle(
                color: WorldOnColors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
