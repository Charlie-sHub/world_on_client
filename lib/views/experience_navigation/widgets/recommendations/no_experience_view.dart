import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/experience_navigation/widgets/recommendations/adventure_map.dart';
import 'package:worldon/views/experience_navigation/widgets/recommendations/recommended_experiences_bottom_bar.dart';

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
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  S.of(context).experienceNavigationNoneChosenDescription,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const Expanded(
            child: AdventureMap(),
          ),
          const RecommendedExperiencesBottomBar(),
          const SizedBox(height: kBottomNavigationBarHeight - 15),
        ],
      ),
    );
  }
}
