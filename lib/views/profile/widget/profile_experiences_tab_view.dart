import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:unicorndial/unicorndial.dart';
import 'package:worldon/application/profile/profile_experiences_watcher/profile_experiences_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/cards/experience_card.dart';
import 'package:worldon/views/core/widget/cards/experience_error_card.dart';
import 'package:worldon/views/core/widget/critical_error_display.dart';
import 'package:worldon/views/core/widget/world_on_progress_indicator.dart';

import '../../../injection.dart';

class ProfileExperiencesTabView extends StatelessWidget {
  const ProfileExperiencesTabView({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileExperiencesWatcherBloc>()
        ..add(
          ProfileExperiencesWatcherEvent.watchExperiencesCreatedStarted(user),
        ),
      child: BlocConsumer<ProfileExperiencesWatcherBloc, ProfileExperiencesWatcherState>(
        listener: (context, state) {},
        builder: (context, state) => state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => WorldOnProgressIndicator(),
          loadSuccess: (state) => Scaffold(
            floatingActionButton: ProfileExperiencesUnicornDialer(user: user),
            body: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: state.experiences.size,
              itemBuilder: (context, index) {
                final _experience = state.experiences[index];
                if (_experience.isValid) {
                  return ExperienceCard(experience: _experience);
                } else {
                  return ExperienceErrorCard(experience: _experience);
                }
              },
            ),
          ),
          loadFailure: (state) => InkWell(
            onTap: () async => context.bloc<ProfileExperiencesWatcherBloc>().add(
                  // TODO: Figure out how to add the right event
                  // the one that caused the failure, not just watchExperiencesCreatedStarted
                  // same with the other watchers
                  ProfileExperiencesWatcherEvent.watchExperiencesCreatedStarted(user),
                ),
            child: CriticalErrorDisplay(failure: state.failure),
          ),
        ),
      ),
    );
  }
}

class ProfileExperiencesUnicornDialer extends StatelessWidget {
  const ProfileExperiencesUnicornDialer({
    Key key,
    @required this.user,
  }) : super(key: key);
  
  final User user;
  
  @override
  Widget build(BuildContext context) {
    return UnicornDialer(
      hasBackground: false,
      parentButtonBackground: WorldOnColors.primary,
      orientation: UnicornOrientation.VERTICAL,
      parentButton: Icon(Icons.format_list_bulleted),
      childButtons: [
        UnicornButton(
          currentButton: FloatingActionButton(
            mini: true,
            onPressed: () =>
              context.bloc<ProfileExperiencesWatcherBloc>().add(
                ProfileExperiencesWatcherEvent.watchExperiencesCreatedStarted(user),
              ),
            child: Icon(Icons.create),
          ),
        ),
        UnicornButton(
          currentButton: FloatingActionButton(
            mini: true,
            onPressed: () =>
              context.bloc<ProfileExperiencesWatcherBloc>().add(
                ProfileExperiencesWatcherEvent.watchExperiencesDoneStarted(user),
              ),
            child: Icon(Icons.done),
          ),
        ),
        UnicornButton(
          currentButton: FloatingActionButton(
            mini: true,
            onPressed: () =>
              context.bloc<ProfileExperiencesWatcherBloc>().add(
                ProfileExperiencesWatcherEvent.watchExperiencesLikedStarted(user),
              ),
            child: FaIcon(FontAwesomeIcons.solidHeart),
          ),
        ),
      ],
    );
  }
}
