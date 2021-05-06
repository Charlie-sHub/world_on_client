import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ProfileAvatarStack extends StatelessWidget {
  const ProfileAvatarStack({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircularPercentIndicator(
          radius: 90,
          percent: user.percentageToNextLevel,
          progressColor: WorldOnColors.primary,
          backgroundColor: Colors.transparent,
          circularStrokeCap: CircularStrokeCap.round,
          startAngle: 135,
          center: Hero(
            tag: "userImage",
            child: CircleAvatar(
              radius: 40,
              backgroundImage: CachedNetworkImageProvider(user.imageURL),
            ),
          ),
        ),
        Positioned(
          right: 1,
          bottom: 1,
          child: Container(
            decoration: const BoxDecoration(
              color: WorldOnColors.primary,
              shape: BoxShape.circle,
            ),
            height: 30,
            width: 30,
            child: Center(
              child: AutoSizeText(
                user.level.getOrCrash().toString(),
                style: const TextStyle(
                  color: WorldOnColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
