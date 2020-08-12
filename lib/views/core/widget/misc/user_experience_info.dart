import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class UserExperienceInfo extends StatelessWidget {
  const UserExperienceInfo({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        AutoSizeText(
          "Level: ${user.level.getOrCrash().toString()}",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: _getColor(user.level.getOrCrash()),
          ),
        ),
        Expanded(
          child: LinearPercentIndicator(
            lineHeight: 10,
            // TODO: Implement a way to measure what percentage to the next level the user is in based on its experience points
            percent: 0.7,
            backgroundColor: WorldOnColors.background,
            progressColor: WorldOnColors.primary,
          ),
        ),
      ],
    );
  }
}

Color _getColor(int level) {
  if (level < 30) {
    return Colors.blue;
  } else if (level >= 30 && level < 70) {
    return Colors.purple;
  } else {
    return Colors.red;
  }
}
