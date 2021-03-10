import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/comments/comment_watcher/comment_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/core/widgets/error/error_display.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';
import 'package:worldon/views/experience_navigation/widgets/comment_card.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_information_tab_view/comment_form.dart';

class ExperienceCommentsListView extends StatelessWidget {
  const ExperienceCommentsListView({
    Key key,
    @required this.experience,
  }) : super(key: key);
  
  final Experience experience;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.loose(
        Size(
          MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height * 0.4,
        ),
      ),
      color: WorldOnColors.background,
      child: BlocProvider(
        create: (context) => getIt<CommentWatcherBloc>()
          ..add(
            CommentWatcherEvent.watchExperienceCommentsStarted(experience.id),
          ),
        child: ListView(
          children: [
            CommentForm(experienceId: experience.id),
            BlocBuilder<CommentWatcherBloc, CommentWatcherState>(
              builder: (context, state) => state.map(
                initial: (_) => Container(),
                loadInProgress: (_) => const WorldOnProgressIndicator(),
                loadSuccess: (state) => RefreshIndicator(
                  onRefresh: () async => context.bloc<CommentWatcherBloc>().add(
                    CommentWatcherEvent.watchExperienceCommentsStarted(experience.id),
                  ),
                  child: ListView.builder(
                    padding: const EdgeInsets.all(5),
                    itemCount: state.comments.size,
                    // TODO: shrinkWrap is an expensive operation, might not be a good idea to use this for the comment list
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
                loadFailure: (state) => ErrorDisplay(
                  retryFunction: () => context.bloc<CommentWatcherBloc>().add(
                        CommentWatcherEvent.watchExperienceCommentsStarted(experience.id),
                      ),
                  failure: state.failure,
                  specificMessage: some(S.of(context).notFoundErrorComments),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
