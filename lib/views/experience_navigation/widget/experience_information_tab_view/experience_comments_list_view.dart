import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/comments/comment_watcher/comment_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/cards/error_card.dart';
import 'package:worldon/views/core/widget/error/error_display.dart';
import 'package:worldon/views/core/widget/misc/world_on_progress_indicator.dart';
import 'package:worldon/views/experience_navigation/widget/comment_card.dart';

class ExperienceCommentsListView extends StatelessWidget {
  const ExperienceCommentsListView({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      color: WorldOnColors.background,
      child: BlocProvider(
        create: (context) => getIt<CommentWatcherBloc>(),
        child: BlocBuilder<CommentWatcherBloc, CommentWatcherState>(
          builder: (context, state) => state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => WorldOnProgressIndicator(),
            loadSuccess: (state) => ListView.builder(
              padding: const EdgeInsets.all(5),
              itemCount: state.comments.size,
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemBuilder: (context, index) {
                final _comment = state.comments[index];
                if (_comment.isValid) {
                  return CommentCard(
                    comment: _comment,
                    key: Key(_comment.id.toString()),
                  );
                } else {
                  return ErrorCard(
                    entityType: "Comment",
                    valueFailureString: _comment.failureOption.fold(
                      () => "",
                      (failure) => failure.toString(),
                    ),
                  );
                }
              },
            ),
            loadFailure: (state) => ErrorDisplay(
              retryFunction: () => context.bloc<CommentWatcherBloc>().add(
                    CommentWatcherEvent.watchExperienceCommentsStarted(experience.id),
                  ),
              failure: state.failure,
            ),
          ),
        ),
      ),
    );
  }
}
