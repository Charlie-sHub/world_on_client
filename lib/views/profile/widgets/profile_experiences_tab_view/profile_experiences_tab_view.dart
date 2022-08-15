import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_experiences_watcher/profile_experiences_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/core/widgets/error/error_display.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';
import 'package:worldon/views/profile/widgets/profile_experiences_tab_view/profile_experience_card.dart';
import 'package:worldon/views/profile/widgets/profile_experiences_tab_view/profile_experiences_dialer.dart';

class ProfileExperiencesTabView extends StatelessWidget {
  const ProfileExperiencesTabView({
    Key? key,
    required this.user,
    required this.isOwnProfile,
  }) : super(key: key);

  final User user;
  final bool isOwnProfile;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => getIt<ProfileExperiencesWatcherBloc>()
          ..add(
            ProfileExperiencesWatcherEvent.watchExperiencesCreatedStarted(
              user.id,
            ),
          ),
        child: BlocBuilder<ProfileExperiencesWatcherBloc,
            ProfileExperiencesWatcherState>(
          builder: (context, state) => Stack(
            children: [
              state.map(
                initial: (_) => Container(),
                loadInProgress: (_) => const WorldOnProgressIndicator(
                  size: 50,
                ),
                loadSuccess: (state) => GridView.builder(
                  padding: const EdgeInsets.only(
                    bottom: kFloatingActionButtonMargin + 50,
                    left: 5,
                    right: 5,
                    top: 5,
                  ),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  physics: const ClampingScrollPhysics(),
                  itemCount: state.experiences.size,
                  itemBuilder: (context, index) {
                    final experience = state.experiences[index];
                    if (experience.isValid) {
                      return ProfileExperienceCard(
                        experience: experience,
                        key: Key(experience.id.toString()),
                        reloadFunction: () =>
                            context.read<ProfileExperiencesWatcherBloc>().add(
                                  ProfileExperiencesWatcherEvent
                                      .watchExperiencesCreatedStarted(
                                    user.id,
                                  ),
                                ),
                      );
                    } else {
                      return ErrorCard(
                        entityType: S.of(context).experience,
                        valueFailureString: experience.failureOption.fold(
                          () => S.of(context).noError,
                          (failure) => failure.toString(),
                        ),
                      );
                    }
                  },
                ),
                loadFailure: (state) => ErrorDisplay(
                  retryFunction: () =>
                      context.read<ProfileExperiencesWatcherBloc>().add(
                            ProfileExperiencesWatcherEvent
                                .watchExperiencesCreatedStarted(user.id),
                          ),
                  failure: state.failure,
                  specificMessage: none(),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 70, right: 12),
                  child: ProfileExperiencesDialer(
                    user: user,
                    isOwnProfile: isOwnProfile,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
