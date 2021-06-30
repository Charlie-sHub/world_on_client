import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/widgets/misc/experience_likes_counter.dart';
import 'package:worldon/views/core/widgets/misc/user_image.dart';

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
          child: UserImage(
            userId: experience.creator.id,
            imageUrl: experience.creator.imageURL,
            adminPowers: experience.creator.adminPowers,
            avatarRadius: 25,
            checkIconSize: 17,
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
