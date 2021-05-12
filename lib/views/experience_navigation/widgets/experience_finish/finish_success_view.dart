import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/share_button.dart';
import 'package:worldon/views/core/widgets/misc/world_on_cached_image.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_finish/experience_gained_text.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_finish/finish_button.dart';

import '../like_dislike_button_builder.dart';
import 'experience_points_coin_stack.dart';

class FinishSuccessView extends StatelessWidget {
  final Experience experience;

  const FinishSuccessView({
    Key? key,
    required this.experience,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              ShaderMask(
                blendMode: BlendMode.darken,
                shaderCallback: (bounds) => LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.4),
                  ],
                  stops: const [
                    0,
                    1,
                  ],
                ).createShader(bounds),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width,
                  child: WorldOnCachedImage(imageURL: experience.imageURLs.first),
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Row(
                  children: [
                    ShareButton(experience: experience),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Center(
                  child: AutoSizeText(
                    experience.title.getOrCrash(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  S.of(context).experienceFinishSuccessTitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 15),
                const ExperiencePointsCoinStack(),
                const SizedBox(height: 10),
                ExperiencedGainedText(experience: experience),
                // Does nothing anyway
                // RateDifficultyWidget(experience: experience),
                const SizedBox(height: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    LikeDislikeButtonBuilder(experience: experience),
                    const SizedBox(width: 5),
                    Text(
                      S.of(context).likeQuestion,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const FinishButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
