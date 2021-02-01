import 'package:flutter/material.dart';
import 'package:social_share/social_share.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ShareButton extends StatelessWidget {
  final Experience experience;

  const ShareButton({
    Key key,
    @required this.experience,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.share_rounded,
        size: 30,
        color: WorldOnColors.background,
      ),
      onPressed: () => SocialShare.shareOptions(
        experience.title.getOrCrash(),
      ),
    );
  }
}
