import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/application/core/experience_card_actor/experience_card_actor_bloc.dart';
import 'package:worldon/application/main_feed/main_feed_watcher/main_feed_watcher_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

import '../../../injection.dart';

class MainFeedBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainFeedWatcherBloc>(
      create: (context) => getIt<MainFeedWatcherBloc>()
        ..add(
          const MainFeedWatcherEvent.watchMainFeedStarted(),
        ),
      child: BlocBuilder<MainFeedWatcherBloc, MainFeedWatcherState>(
        // Ideally MainFeedWatcherBloc and ExperienceCardActorBloc would be provided with a MultiBlocProvider
        // But then how to build with MainFeedWatcherBloc and listen with the ExperienceCardActorBloc?
        builder: (context, state) => BlocProvider<ExperienceCardActorBloc>(
          create: (context) => getIt<ExperienceCardActorBloc>(),
          child: state.map(
            initial: (_) => Container(),
            loadInProgress: onLoadInProgress,
            loadSuccess: (state) => BlocListener<ExperienceCardActorBloc, ExperienceCardActorState>(
              // This listener is mostly for development
              listener: (context, state) => state.map(
                initial: (_) => null,
                actionInProgress: (_) => FlushbarHelper.createLoading(
                  message: "Action in progress",
                  linearProgressIndicator: const LinearProgressIndicator(),
                ).show(context),
                additionSuccess: (_) => FlushbarHelper.createSuccess(
                  message: "Success",
                ).show(context),
                additionFailure: (state) => FlushbarHelper.createError(
                  message: state.failure.maybeMap(
                    coreData: (failure) => failure.coreDataFailure.maybeMap(
                      serverError: (failure) => failure.errorString,
                      notFoundError: (failure) => "Nothing was found",
                      cacheError: (failure) => "Unknown Cache Error",
                      orElse: () => "Unknown Error",
                    ),
                    orElse: () => "Unknown Error",
                  ),
                ).show(context),
              ),
              child: ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: state.experiences.size,
                itemBuilder: (context, index) {
                  final _experience = state.experiences[index];
                  if (_experience.isValid) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: <Widget>[
                            Center(
                              child: Stack(
                                children: const <Widget>[
                                      Image(
                                        // TODO: Change to the real image from the experience
                                        image: AssetImage('assets/experience_placeholder_image.jpg'),
                                        fit: BoxFit.fill,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          // TODO: Change to placeholder user image
                                          child: CircleAvatar(
                                            backgroundImage: AssetImage("assets/non_existing_person_placeholder.jpg"),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(10, 10, 40, 10),
                                        child: Align(
                                          // Why doesn't it align properly?
                                          // It stays on the top right of the image, shouldn't the image determine the size of the stack?
                                          alignment: Alignment.bottomRight,
                                          // Just a placeholder
                                          child: Icon(
                                            Icons.place,
                                            size: 30,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    const SizedBox(height: 10),
                                    Text(
                                      _experience.name.getOrCrash(),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: WorldOnColors.background,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      _experience.description.getOrCrash(),
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
                                          onPressed: () =>
                                            context.bloc<NavigationActorBloc>().add(
                                              NavigationActorEvent.experienceNavigationTapped(some(_experience)),
                                            ),
                                          child: const Text(
                                            "Participate",
                                            style: TextStyle(
                                              color: WorldOnColors.white,
                                            ),
                                          ),
                                        ),
                                        RaisedButton(
                                          // The bloc should check if the experience is already in the experience log of the user
                                          // and change the color of the button accordingly
                                          // Perhaps also add the functionality to dismiss from the same button, just as with following or unfollowing users
                                          color: WorldOnColors.background,
                                          onPressed: () =>
                                            context.bloc<ExperienceCardActorBloc>().add(
                                              ExperienceCardActorEvent.addedExperienceToLog(_experience.id),
                                            ),
                                          child: const Text(
                                            "Add to Log",
                                            style: TextStyle(
                                              color: WorldOnColors.white,
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.error_outline,
                                            size: 30,
                                            color: WorldOnColors.background,
                                          ),
                                          onPressed: () =>
                                            FlushbarHelper.createInformation(
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
                                          children: <Widget>[
                                            FaIcon(
                                              FontAwesomeIcons.solidHeart,
                                              color: WorldOnColors.red,
                                            ),
                                            const SizedBox(width: 5),
                                            Text(
                                              // Perhaps this isn't the best way to show this
                                              // perhaps the experience should just have an int with the amount of likes it has (and dislikes too)
                                              _experience.likedBy.length.toString(),
                                              style: const TextStyle(color: WorldOnColors.background),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                              _experience.doneBy.length.toString(),
                                              style: const TextStyle(color: WorldOnColors.background),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            const Text(
                                              "Difficulty: ",
                                              style: TextStyle(color: WorldOnColors.background),
                                            ),
                                            const SizedBox(width: 5),
                                            Text(
                                              _experience.difficulty.getOrCrash().toString(),
                                              style: TextStyle(
                                                color: getColor(_experience.difficulty.getOrCrash()),
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
                        );
                      } else {
                        return Container(
                          color: Colors.red,
                          width: 100,
                          height: 100,
                        );
                      }
                    },
                  ),
                ),
              loadFailure: (state) =>
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.error_outline,
                        color: WorldOnColors.red,
                        size: 50,
                      ),
                      Text(
                        state.failure.maybeMap(
                          coreData: (failure) =>
                            failure.coreDataFailure.maybeMap(
                              serverError: (failure) => failure.errorString,
                              notFoundError: (failure) => "Nothing was found",
                              cacheError: (failure) => "Unknown Cache Error",
                              orElse: () => "Unknown Error",
                            ),
                          orElse: () => "Unknown Error",
                        ),
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
            ),
          ),
      ),
    );
  }
  
  Widget onLoadInProgress(_) =>
    const Center(
      child: SizedBox(
        width: 100,
        height: 100,
        child: CircularProgressIndicator(),
      ),
    );
  
  Color getColor(int difficulty) {
    if (difficulty < 3) {
      return Colors.blue;
    } else if (difficulty >= 3 && difficulty < 7) {
      return Colors.purple;
    } else {
      return Colors.red;
    }
  }
}
