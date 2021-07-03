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
          circularStrokeCap: CircularStrokeCap.round,
          percent: user.percentageToNextLevel,
          progressColor: WorldOnColors.primary,
          backgroundColor: Colors.transparent,
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
          right: 0,
          bottom: 0,
          child: Container(
            decoration: const BoxDecoration(
              color: WorldOnColors.primary,
              shape: BoxShape.circle,
            ),
            height: 28,
            width: 28,
            child: Center(
              child: AutoSizeText(
                user.level.getOrCrash().toString(),
                style: const TextStyle(
                  color: WorldOnColors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
