import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/experience_navigation/widgets/no_experience_selected/recommended_experiences_body.dart';

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
                    color: WorldOnColors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  S.of(context).experienceNavigationNoneChosenDescription,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 2),
                const Divider(
                  height: 3,
                  color: WorldOnColors.primary,
                ),
                const SizedBox(height: 2),
                Text(
                  S.of(context).recommendations,
                  style: const TextStyle(
                    color: WorldOnColors.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
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
