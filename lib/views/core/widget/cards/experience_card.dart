import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/application/core/experience_card_actor/experience_card_actor_bloc.dart';
import 'package:worldon/application/core/experience_card_like_check/experience_card_like_check_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/common_functions/experience_card_listener.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ExperienceCard extends StatelessWidget {
  final Experience experience;

  const ExperienceCard({Key key, @required this.experience}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ExperienceCardActorBloc>()
            ..add(
              ExperienceCardActorEvent.initialized(experience),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<ExperienceCardLikeCheckBloc>()
            ..add(
              ExperienceCardLikeCheckEvent.initialized(experience),
            ),
        ),
      ],
      child: BlocListener<ExperienceCardActorBloc, ExperienceCardActorState>(
        listener: experienceCardListener,
        child: Card(
          shape: const RoundedRectangleBorder(),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: <Widget>[
                Container(
                  height: 250,
                  child: Stack(
                    children: <Widget>[
                      const Image(
                        // TODO: Change to the real image from the experience
                        image: AssetImage('assets/experience_placeholder_image.jpg'),
                        fit: BoxFit.fill,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: const <Widget>[
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("assets/non_existing_person_placeholder.jpg"),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Icon(
                                  Icons.place,
                                  size: 30,
                                ),
                                const AutoSizeText(
                                  "500m",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: WorldOnColors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    const SizedBox(height: 10),
                    AutoSizeText(
                      experience.name.getOrCrash(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: WorldOnColors.background,
                      ),
                    ),
                    const SizedBox(height: 10),
                    AutoSizeText(
                      experience.description.getOrCrash(),
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontSize: 10,
                        color: WorldOnColors.background,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RaisedButton(
                          color: WorldOnColors.primary,
                          onPressed: () => context.bloc<NavigationActorBloc>().add(
                                NavigationActorEvent.experienceNavigationTapped(some(experience)),
                              ),
                          child: const Text(
                            "Participate",
                            style: TextStyle(
                              color: WorldOnColors.white,
                            ),
                          ),
                        ),
                        BlocBuilder<ExperienceCardActorBloc, ExperienceCardActorState>(
                          builder: (context, state) => state.map(
                            initial: (_) => Container(),
                            actionInProgress: (_) => const CircularProgressIndicator(),
                            inLog: (_) => DismissFromLogButton(experience: experience),
                            notInLog: (_) => AddToLogButton(experience: experience),
                            additionSuccess: (_) => DismissFromLogButton(experience: experience),
                            additionFailure: (_) => AddToLogButton(experience: experience),
                            dismissalSuccess: (_) => AddToLogButton(experience: experience),
                            dismissalFailure: (_) => DismissFromLogButton(experience: experience),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.error_outline,
                            size: 30,
                            color: WorldOnColors.background,
                          ),
                          onPressed: () => FlushbarHelper.createInformation(
                            message: "This is just a placeholder",
                          ).show(context),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            BlocBuilder<ExperienceCardLikeCheckBloc, ExperienceCardLikeCheckState>(
                              builder: (context, state) => state.map(
                                initial: (_) => const CircularProgressIndicator(),
                                likes: (_) => FaIcon(
                                  FontAwesomeIcons.solidHeart,
                                  color: WorldOnColors.red,
                                ),
                                neutral: (_) => FaIcon(
                                  FontAwesomeIcons.heart,
                                  color: WorldOnColors.red,
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              // Perhaps this isn't the best way to show this
                              // perhaps the experience should just have an int with the amount of likes it has (and dislikes too)
                              experience.likedBy.length.toString(),
                              style: const TextStyle(color: WorldOnColors.background),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            // TODO: Implement the user pictures
                            // The avatars of the last 3 users to have done the experience should appear here
                            Container(
                              // I don't like the idea of hard coding this, but it will work for now
                              width: 80,
                              child: Stack(
                                children: const <Widget>[
                                  CircleAvatar(
                                    backgroundImage: AssetImage("assets/non_existing_person_placeholder.jpg"),
                                  ),
                                  Positioned(
                                    left: 20,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage("assets/non_existing_person_placeholder.jpg"),
                                    ),
                                  ),
                                  Positioned(
                                    left: 40,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage("assets/non_existing_person_placeholder.jpg"),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              experience.doneBy.length.toString(),
                              style: const TextStyle(color: WorldOnColors.background),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Text(
                              "Difficulty: ",
                              style: TextStyle(color: WorldOnColors.background),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              experience.difficulty.getOrCrash().toString(),
                              style: TextStyle(
                                color: _getColor(experience.difficulty.getOrCrash()),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AddToLogButton extends StatelessWidget {
  const AddToLogButton({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: WorldOnColors.background,
      onPressed: () => context.bloc<ExperienceCardActorBloc>().add(
            ExperienceCardActorEvent.addedExperienceToLog(experience),
          ),
      child: const Text(
        "Add to Log",
        style: TextStyle(
          color: WorldOnColors.white,
        ),
      ),
    );
  }
}

class DismissFromLogButton extends StatelessWidget {
  const DismissFromLogButton({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: WorldOnColors.red,
      onPressed: () => context.bloc<ExperienceCardActorBloc>().add(
            ExperienceCardActorEvent.dismissedExperienceFromLog(experience),
          ),
      child: const Text(
        "Dismiss from Log",
        style: TextStyle(
          color: WorldOnColors.white,
        ),
      ),
    );
  }
}

Color _getColor(int difficulty) {
  if (difficulty < 4) {
    return Colors.blue;
  } else if (difficulty >= 4 && difficulty < 7) {
    return Colors.purple;
  } else {
    return Colors.red;
  }
}
