import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/tag_management/tag_card_actor/tag_card_actor_bloc.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';

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
      child: BlocProvider(
        create: (context) => getIt<TagCardActorBloc>()
          ..add(
            TagCardActorEvent.initialized(tag),
          ),
        child: BlocConsumer<TagCardActorBloc, TagCardActorState>(
          listener: (context, state) {},
          builder: (context, state) => state.map(
            initial: (_) => Container(),
            actionInProgress: (_) => const CircularProgressIndicator(),
            notInInterests: (_) => LikeableSimpleTagCard(tag: tag),
            additionSuccess: (_) => DisLikeableSimpleTagCard(tag: tag),
            additionFailure: (_) => LikeableSimpleTagCard(tag: tag),
            inInterests: (_) => DisLikeableSimpleTagCard(tag: tag),
            dismissalSuccess: (_) => LikeableSimpleTagCard(tag: tag),
            dismissalFailure: (_) => DisLikeableSimpleTagCard(tag: tag),
          ),
        ),
      ),
    );
  }
}
