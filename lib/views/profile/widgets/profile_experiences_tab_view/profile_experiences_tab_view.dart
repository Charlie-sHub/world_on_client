import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_experiences_watcher/profile_experiences_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/core/widgets/error/error_display.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';
import 'package:worldon/views/profile/widgets/profile_experiences_tab_view/profile_experience_card.dart';
import 'package:worldon/views/profile/widgets/profile_experiences_tab_view/profile_experiences_dialer.dart';

import '../../../../injection.dart';

class ProfileExperiencesTabView extends StatelessWidget {
  const ProfileExperiencesTabView({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileExperiencesWatcherBloc>()
        ..add(
          ProfileExperiencesWatcherEvent.watchExperiencesCreatedStarted(user),
        ),
      child: BlocBuilder<ProfileExperiencesWatcherBloc, ProfileExperiencesWatcherState>(
        builder: (context, state) => Stack(
          children: [
            state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => const WorldOnProgressIndicator(),
              loadSuccess: (state) => GridView.builder(
                padding: const EdgeInsets.only(
                  bottom: kFloatingActionButtonMargin + 50,
                  left: 5,
                  right: 5,
                  top: 5,
                ),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: MediaQuery.of(context).size.width * 0.7,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                physics: const ClampingScrollPhysics(),
                itemCount: state.experiences.size,
                itemBuilder: (context, index) {
                  final _experience = state.experiences[index];
                  if (_experience.isValid) {
                    return ProfileExperienceCard(
                      experience: _experience,
                      key: Key(_experience.id.toString()),
                      reloadFunction: () => context.read<ProfileExperiencesWatcherBloc>().add(
                            ProfileExperiencesWatcherEvent.watchExperiencesCreatedStarted(user),
                          ),
                    );
                  } else {
                    return ErrorCard(
                      entityType: S.of(context).experience,
                      valueFailureString: _experience.failureOption.fold(
                        () => S.of(context).noError,
                        (failure) => failure.toString(),
                      ),
                    );
                  }
                },
              ),
              loadFailure: (state) => ErrorDisplay(
                retryFunction: () => context.read<ProfileExperiencesWatcherBloc>().add(
                      // TODO: Figure out how to add the right event
                      // the one that caused the failure, not just watchExperiencesCreatedStarted
                      // same with the other watchers
                      ProfileExperiencesWatcherEvent.watchExperiencesCreatedStarted(user),
                    ),
                failure: state.failure,
                specificMessage: none(),
                // TODO: Find way to distinguish what feed was being watched to show the proper not found message
                // "notFoundErrorExperiencesCreated"
                // "notFoundErrorExperiencesLiked"
                // "notFoundErrorExperiencesDone"
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: ProfileExperiencesDialer(user: user),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
