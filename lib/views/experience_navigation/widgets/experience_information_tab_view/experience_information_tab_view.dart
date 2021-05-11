import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widgets/cards/tag_card/simple_tag_card_builder.dart';
import 'package:worldon/views/core/widgets/misc/difficulty_display.dart';
import 'package:worldon/views/core/widgets/misc/experience_done_counter.dart';
import 'package:worldon/views/core/widgets/misc/experience_points_view.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_information_tab_view/experience_description.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_information_tab_view/experience_header.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_information_tab_view/experience_image_gallery.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_information_tab_view/user_information.dart';

import 'experience_comments_list_view.dart';

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
              ExperienceHeader(experience: experience),
              const SizedBox(height: 10),
              UserInformation(creator: experience.creator),
              const SizedBox(height: 10),
              ExperienceDescription(experience: experience),
              const SizedBox(height: 10),
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
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    ...experience.tags.getOrCrash().asSet().map(
                          (tag) => SimpleTagCardBuilder(tag: tag),
                        ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  "${experience.comments.length} ${S.of(context).experienceInformationCommentsNumber}",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ExperienceCommentsListView(experience: experience),
            ],
          ),
        )
      ],
    );
  }
}
