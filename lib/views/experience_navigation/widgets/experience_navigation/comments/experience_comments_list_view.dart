import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/comments/comment_watcher/comment_watcher_bloc.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/common_functions/world_on_number_display.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/core/widgets/error/error_display.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';

import 'comment_card.dart';
import 'comment_form.dart';

class ExperienceCommentsListView extends StatelessWidget {
  const ExperienceCommentsListView({
    Key? key,
    required this.experienceId,
  }) : super(key: key);

  final UniqueId experienceId;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommentForm(experienceId: experienceId),
        BlocBuilder<CommentWatcherBloc, CommentWatcherState>(
          builder: (context, state) => state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const WorldOnProgressIndicator(
              size: 60,
            ),
            loadSuccess: (state) => RefreshIndicator(
              onRefresh: () async => context.read<CommentWatcherBloc>().add(
                    CommentWatcherEvent.watchExperienceCommentsStarted(experienceId),
                  ),
              child: Column(
                children: [
                  Text(
                    "${createNumberDisplay(state.comments.size)} ${S.of(context).experienceInformationCommentsNumber}",
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: kBottomNavigationBarHeight - 15,
                      ),
                      child: ListView.separated(
                        itemCount: state.comments.size,
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        separatorBuilder: (context, index) => const Divider(
                          color: WorldOnColors.accent,
                        ),
                        itemBuilder: (context, index) {
                          final _comment = state.comments[index];
                          if (_comment.isValid) {
                            return CommentCard(
                              comment: _comment,
                              key: Key(_comment.id.toString()),
                            );
                          } else {
                            return ErrorCard(
                              entityType: S.of(context).comment,
                              valueFailureString: _comment.failureOption.fold(
                                () => S.of(context).noError,
                                (failure) => failure.toString(),
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            loadFailure: (state) => ErrorDisplay(
              retryFunction: () => context.read<CommentWatcherBloc>().add(
                    CommentWatcherEvent.watchExperienceCommentsStarted(experienceId),
                  ),
              failure: state.failure,
              specificMessage: some(S.of(context).notFoundErrorComments),
            ),
          ),
        ),
      ],
    );
  }
}
