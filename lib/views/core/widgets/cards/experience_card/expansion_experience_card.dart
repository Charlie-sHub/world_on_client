import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/expansion_experience_card_title.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/image_stack.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/participate_button.dart';
import 'package:worldon/views/core/widgets/cards/tag_card/simple_tag_card_builder.dart';
import 'package:worldon/views/core/widgets/misc/difficulty_display.dart';
import 'package:worldon/views/core/widgets/misc/experience_done_counter.dart';
import 'package:worldon/views/core/widgets/misc/experience_points_view.dart';

class ExpansionExperienceCard extends StatelessWidget {
  final Experience experience;
  final Function() reloadFunction;

  const ExpansionExperienceCard({
    Key? key,
    required this.experience,
    required this.reloadFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ImageGalleryStack(
              experience: experience,
              reloadFunction: reloadFunction,
            ),
            ExpansionTile(
              title: ExpansionExperienceCardTitle(experience: experience),
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      AutoSizeText(
                        experience.description.getOrCrash(),
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ExperienceDoneCounter(
                                amount: experience.doneBy.length,
                              ),
                              DifficultyDisplay(
                                difficulty: experience.difficulty.getOrCrash(),
                              ),
                              ExperiencePointsView(
                                difficulty: experience.difficulty.getOrCrash(),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ParticipateButton(
                              experience: experience,
                              size: 60,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
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
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
