import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/common_functions/get_color_by_difficulty.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ExperienceNavigation extends StatelessWidget {
  final Experience experience;

  const ExperienceNavigation({Key key, @required this.experience}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: <Widget>[
          const ExperienceNavigationTabBar(),
          Expanded(
            child: TabBarView(
              children: [
                ExperienceInformationTabView(experience: experience),
                const Center(
                  child: Text("Objectives"),
                ),
                const Center(
                  child: Text("Map"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ExperienceInformationTabView extends StatelessWidget {
  const ExperienceInformationTabView({
    Key key,
    @required this.experience,
  }) : super(key: key);
  
  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: WorldOnColors.white,
      child: ListView(
        children: [
          Container(
            color: WorldOnColors.primary,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: AutoSizeText(
                experience.name.getOrCrash(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: WorldOnColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: AutoSizeText(
              experience.description.getOrCrash(),
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 15,
                color: WorldOnColors.background,
              ),
            ),
          ),
          // TODO: Implement image gallery
          const Image(
            image: AssetImage('assets/experience_placeholder_image.jpg'),
            fit: BoxFit.fill,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Difficulty:",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: WorldOnColors.background,
                    ),
                  ),
                  const SizedBox(width: 3),
                  Text(
                    experience.difficulty.getOrCrash().toString(),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: getColorByDifficulty(experience.difficulty.getOrCrash()),
                    ),
                  ),
                ],
              ),
              Text(
                experience.creationDate.getOrCrash().toLocal().toString(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: WorldOnColors.background,
                ),
              ),
            ],
          ),
        ],
      
        //creationDate
        //rewards
        //tags
        //creator
        //comments
        //likedBy
        //doneBy
      ),
    );
  }
}

class ExperienceNavigationTabBar extends StatelessWidget {
  const ExperienceNavigationTabBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      child: const TabBar(
        labelColor: WorldOnColors.white,
        labelPadding: EdgeInsets.all(2),
        indicatorColor: WorldOnColors.primary,
        tabs: [
          Tab(
            iconMargin: EdgeInsets.all(2),
            icon: FaIcon(FontAwesomeIcons.stream),
            text: "Experience Info",
          ),
          Tab(
            iconMargin: EdgeInsets.all(2),
            icon: FaIcon(FontAwesomeIcons.bullseye),
            text: "Objectives",
          ),
          Tab(
            iconMargin: EdgeInsets.all(2),
            icon: FaIcon(FontAwesomeIcons.mapMarkedAlt),
            text: "Map",
          ),
        ],
      ),
    );
  }
}
