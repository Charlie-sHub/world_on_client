import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:number_display/number_display.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class FollowersFollowingCounters extends StatelessWidget {
  const FollowersFollowingCounters({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    final _display = createDisplay(length: 4);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              AutoSizeText(
                _display(user.followersAmount),
                style: const TextStyle(
                  color: WorldOnColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              AutoSizeText(
                " ${S.of(context).followersCaps}",
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              AutoSizeText(
                _display(user.followedUsersIds.length),
                style: const TextStyle(
                  color: WorldOnColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              AutoSizeText(
                " ${S.of(context).following}",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
