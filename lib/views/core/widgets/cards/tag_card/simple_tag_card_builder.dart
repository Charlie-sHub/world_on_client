import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/watch_current_user/watch_current_user_bloc.dart';
import 'package:worldon/application/tag_management/tag_card_actor/tag_card_actor_bloc.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';

import '../../../../../injection.dart';
import 'dislikeable_simple_tag_card.dart';
import 'likeable_simple_tag_card.dart';

class SimpleTagCardBuilder extends StatelessWidget {
  const SimpleTagCardBuilder({
    Key? key,
    required this.tag,
  }) : super(key: key);
  final Tag tag;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: BlocBuilder<WatchCurrentUserBloc, WatchCurrentUserState>(
        buildWhen: _buildWhen,
        builder: (context, state) => state.map(
          initial: (_) => const WorldOnProgressIndicator(size: 15),
          loadSuccess: (successState) => BlocProvider(
            create: (context) => getIt<TagCardActorBloc>()
              ..add(
                TagCardActorEvent.initialized(
                  tag,
                  successState.user.interestsIds,
                ),
              ),
            child: BlocBuilder<TagCardActorBloc, TagCardActorState>(
              builder: (context, state) => state.map(
                initial: (_) => Container(),
                actionInProgress: (_) => const WorldOnProgressIndicator(size: 15),
                notInInterests: (_) => LikeableSimpleTagCard(tag: tag),
                additionSuccess: (_) => DisLikeableSimpleTagCard(tag: tag),
                additionFailure: (_) => LikeableSimpleTagCard(tag: tag),
                inInterests: (_) => DisLikeableSimpleTagCard(tag: tag),
                dismissalSuccess: (_) => LikeableSimpleTagCard(tag: tag),
                dismissalFailure: (_) => DisLikeableSimpleTagCard(tag: tag),
              ),
            ),
          ),
          loadFailure: (_) => LikeableSimpleTagCard(tag: tag),
        ),
      ),
    );
  }

  bool _buildWhen(WatchCurrentUserState previous, WatchCurrentUserState current) => current.map(
        initial: (_) => true,
        loadSuccess: (_) {
          final _previousInterestContainsTag = previous.maybeMap(
            loadSuccess: (successState) => successState.user.interestsIds.contains(
              tag.id,
            ),
            orElse: () => true,
          );
          final _currentInterestContainsTag = current.maybeMap(
            loadSuccess: (successState) => successState.user.interestsIds.contains(
              tag.id,
            ),
            orElse: () => true,
          );
          return _previousInterestContainsTag != _currentInterestContainsTag;
        },
        loadFailure: (_) => true,
      );
}
