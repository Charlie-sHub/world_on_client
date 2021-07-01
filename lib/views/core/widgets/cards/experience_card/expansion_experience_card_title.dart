import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/widgets/misc/experience_likes_counter.dart';
import 'package:worldon/views/core/widgets/misc/user_avatar_follow_checker.dart';

class ExpansionExperienceCardTitle extends StatelessWidget {
  const ExpansionExperienceCardTitle({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            right: 5,
            bottom: 5,
            top: 5,
          ),
          child: UserAvatarFollowChecker(
            userId: experience.creator.id,
            adminPowers: experience.creator.adminPowers,
            imageUrl: experience.creator.imageURL,
            checkIconSize: 17,
            avatarRadius: 25,
          ),
        ),
        Flexible(
          flex: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
                child: AutoSizeText(
                  experience.title.getOrCrash(),
                  minFontSize: 10,
                  maxFontSize: 15,
                  maxLines: 5,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              FittedBox(
                child: AutoSizeText(
                  "@${experience.creator.username.getOrCrash()}",
                  minFontSize: 9,
                  maxFontSize: 14,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(),
        ),
        ExperienceLikesCounter(experience: experience),
      ],
    );
  }
}
