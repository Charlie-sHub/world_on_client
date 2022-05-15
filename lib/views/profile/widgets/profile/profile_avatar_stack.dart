import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ProfileAvatarStack extends StatelessWidget {
  final GlobalKey<State<StatefulWidget>> showKey;
  final User user;

  const ProfileAvatarStack({
    Key? key,
    required this.user,
    required this.showKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double _radius = 40;
    return Stack(
      alignment: Alignment.center,
      children: [
        CircularPercentIndicator(
          radius: _radius + 4,
          circularStrokeCap: CircularStrokeCap.round,
          percent: user.percentageToNextLevel,
          progressColor: WorldOnColors.primary,
          backgroundColor: Colors.transparent,
          startAngle: 135,
          center: Hero(
            tag: "userImage",
            child: CircleAvatar(
              radius: _radius,
              backgroundImage: CachedNetworkImageProvider(user.imageURL),
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Showcase(
            key: showKey,
            description: S.of(context).userLeverShowCase,
            overlayPadding: const EdgeInsets.all(5),
            shapeBorder: const CircleBorder(),
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
        ),
      ],
    );
  }
}
