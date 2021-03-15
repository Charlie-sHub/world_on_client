import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class FollowersFollowingCounters extends StatelessWidget {
  const FollowersFollowingCounters({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "${user.followersAmount} ${S.of(context).followers}",
          style: const TextStyle(
            color: WorldOnColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "${user.followedUsersIds.length} ${S.of(context).following}",
          style: const TextStyle(
            color: WorldOnColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
