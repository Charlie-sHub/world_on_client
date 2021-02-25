import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/generated/l10n.dart';
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
          S.of(context).level + user.level.getOrCrash().toString(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: _getColor(user.level.getOrCrash()),
          ),
        ),
        Expanded(
          child: LinearPercentIndicator(
            lineHeight: 10,
            percent: user.percentageToNextLevel,
            backgroundColor: WorldOnColors.background,
            progressColor: WorldOnColors.primary,
          ),
        ),
      ],
    );
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
}
