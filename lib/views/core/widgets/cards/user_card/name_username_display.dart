import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class NameUsernameDisplay extends StatelessWidget {
  const NameUsernameDisplay({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AutoSizeText(
              user.name.getOrCrash(),
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: WorldOnColors.background,
              ),
            ),
            AutoSizeText(
              user.username.getOrCrash(),
              style: const TextStyle(
                fontSize: 15,
                color: WorldOnColors.background,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
