import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/application/tag_management/tag_card_actor/tag_card_actor_bloc.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/common_functions/tag_card_listener.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class TagCard extends StatelessWidget {
  final Tag tag;

  const TagCard({Key key, this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TagCardActorBloc>()
        ..add(
          TagCardActorEvent.initialized(tag),
        ),
      child: BlocConsumer<TagCardActorBloc, TagCardActorState>(
        listener: tagCardListener,
        builder: (context, state) => Card(
          shape: const RoundedRectangleBorder(),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                AutoSizeText(
                  tag.name.getOrCrash(),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: WorldOnColors.background,
                  ),
                ),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 200),
                  transitionBuilder: (child, animation) => ScaleTransition(
                    scale: animation,
                    child: child,
                  ), // Mapping every state seems a tad too much for me but it's the best solution from the UI point of view, maybe not from the performance one though
                  child: state.map(
                    initial: (_) => Container(),
                    actionInProgress: (_) => const CircularProgressIndicator(),
                    notInInterests: (_) => LikeTagButton(tag: tag),
                    additionSuccess: (_) => DislikeTagButton(tag: tag),
                    additionFailure: (_) => LikeTagButton(tag: tag),
                    inInterests: (_) => DislikeTagButton(tag: tag),
                    dismissalSuccess: (_) => LikeTagButton(tag: tag),
                    dismissalFailure: (_) => DislikeTagButton(tag: tag),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DislikeTagButton extends StatelessWidget {
  const DislikeTagButton({
    Key key,
    @required this.tag,
  }) : super(key: key);

  final Tag tag;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: FaIcon(
        FontAwesomeIcons.heart,
        color: Colors.grey,
      ),
      onPressed: () => context.bloc<TagCardActorBloc>().add(
            TagCardActorEvent.dismissedFromInterests(tag),
          ),
    );
  }
}

class LikeTagButton extends StatelessWidget {
  const LikeTagButton({
    Key key,
    @required this.tag,
  }) : super(key: key);

  final Tag tag;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: FaIcon(
        FontAwesomeIcons.solidHeart,
        color: WorldOnColors.red,
      ),
      onPressed: () => context.bloc<TagCardActorBloc>().add(
            TagCardActorEvent.addedToInterests(tag),
          ),
    );
  }
}
