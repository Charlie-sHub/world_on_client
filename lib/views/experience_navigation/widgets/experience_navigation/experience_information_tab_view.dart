import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/cards/tag_card/simple_tag_card_builder.dart';
import 'package:worldon/views/core/widgets/misc/difficulty_display.dart';
import 'package:worldon/views/core/widgets/misc/experience_done_counter.dart';
import 'package:worldon/views/core/widgets/misc/experience_points_view.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_navigation/user_information.dart';

import 'experience_comments_list_view.dart';
import 'experience_description.dart';
import 'experience_header.dart';
import 'experience_image_gallery.dart';

class ExperienceInformationTabView extends StatelessWidget {
  const ExperienceInformationTabView({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ExperienceImageGallery(
          experience: experience,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const SizedBox(height: 10),
              ExperienceHeader(experience: experience),
              const SizedBox(height: 10),
              UserInformation(creator: experience.creator),
              const SizedBox(height: 10),
              ExperienceDescription(experience: experience),
              const SizedBox(height: 5),
              Text(
                experience.getFormattedCreationDateString,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ExperienceDoneCounter(amount: experience.doneBy.length),
                  DifficultyDisplay(difficulty: experience.difficulty.getOrCrash()),
                  ExperiencePointsView(difficulty: experience.difficulty.getOrCrash()),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    ...experience.tags.getOrCrash().asSet().map(
                          (tag) => SimpleTagCardBuilder(tag: tag),
                        ),
                  ],
                ),
              ),
              const Divider(
                color: WorldOnColors.accent,
              ),
              ExperienceCommentsListView(experienceId: experience.id),
            ],
          ),
        )
      ],
    );
  }
}
