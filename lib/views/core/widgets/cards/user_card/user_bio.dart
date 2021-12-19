import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class UserBio extends StatelessWidget {
  const UserBio({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) => AutoSizeText(
        user.description.getOrCrash(),
        style: const TextStyle(
          color: WorldOnColors.background,
        ),
      );
}
