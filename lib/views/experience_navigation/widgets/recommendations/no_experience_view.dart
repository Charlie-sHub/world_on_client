import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/experience_navigation/widgets/recommendations/recommended_experiences_body.dart';

class NoExperienceView extends StatelessWidget {
  const NoExperienceView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Text(
                  S.of(context).experienceNavigationNoneChosenTitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 19,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  S.of(context).experienceNavigationNoneChosenDescription,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Divider(
                  color: WorldOnColors.accent,
                ),
                Text(
                  S.of(context).recommendations,
                  style: const TextStyle(
                    color: WorldOnColors.primary,
                    fontWeight: FontWeight.w800,
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const Expanded(
            child: RecommendedExperiencesBody(),
          ),
        ],
      ),
    );
  }
}
