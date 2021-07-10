import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/common_functions/world_on_number_display.dart';

class FollowersFollowingCounters extends StatelessWidget {
  const FollowersFollowingCounters({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Container(),
        ),
        Row(
          children: [
            AutoSizeText(
              "${S.of(context).followersCaps} ",
              style: const TextStyle(
                fontSize: 8,
                color: Colors.grey,
              ),
            ),
            AutoSizeText(
              createNumberDisplay(user.followersAmount),
              style: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 10,
              ),
            ),
          ],
        ),
        const SizedBox(width: 40),
        Row(
          children: [
            AutoSizeText(
              "${S.of(context).following} ",
              style: const TextStyle(
                fontSize: 8,
                color: Colors.grey,
              ),
            ),
            AutoSizeText(
              createNumberDisplay(user.followedUsersIds.length),
              style: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 10,
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(),
        ),
      ],
    );
  }
}
