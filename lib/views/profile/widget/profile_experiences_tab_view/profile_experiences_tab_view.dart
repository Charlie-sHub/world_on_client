import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_experiences_watcher/profile_experiences_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/widget/cards/error_card.dart';
import 'package:worldon/views/core/widget/cards/experience_card/experience_card.dart';
import 'package:worldon/views/core/widget/error/error_display.dart';
import 'package:worldon/views/core/widget/misc/world_on_progress_indicator.dart';
import 'package:worldon/views/profile/widget/profile_experiences_tab_view/profile_experiences_unicorn_dialer.dart';

import '../../../../injection.dart';

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
        builder: (context, state) => Scaffold(
          floatingActionButton: ProfileExperiencesUnicornDialer(user: user),
          body: state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => WorldOnProgressIndicator(),
            loadSuccess: (state) => ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: state.experiences.size,
              itemBuilder: (context, index) {
                final _experience = state.experiences[index];
                if (_experience.isValid) {
                  return ExperienceCard(
                    experience: _experience,
                    key: Key(_experience.id.toString()),
                  );
                } else {
                  return ErrorCard(
                    entityType: "Experience",
                    valueFailureString: _experience.failureOption.fold(
                      () => "",
                      (failure) => failure.toString(),
                    ),
                  );
                }
              },
            ),
            loadFailure: (state) => InkWell(
              onTap: () async => context.bloc<ProfileExperiencesWatcherBloc>().add(
                    // TODO: Figure out how to add the right event
                    // the one that caused the failure, not just watchExperiencesCreatedStarted
                    // same with the other watchers
                    ProfileExperiencesWatcherEvent.watchExperiencesCreatedStarted(user),
                  ),
              child: ErrorDisplay(failure: state.failure),
            ),
          ),
        ),
      ),
    );
  }
}
