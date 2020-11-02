import 'package:auto_size_text/auto_size_text.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/tag_management/tag_card_actor/tag_card_actor_bloc.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/cards/tag_card/dislike_tag_button.dart';
import 'package:worldon/views/core/widget/cards/tag_card/like_tag_button.dart';

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
        listener: _tagCardListener,
        builder: (context, state) => Card(
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

  void _tagCardListener(BuildContext context, TagCardActorState state) => state.maybeMap(
        additionFailure: (state) => FlushbarHelper.createError(
          duration: const Duration(seconds: 2),
          message: state.failure.maybeMap(
            coreData: (failure) => failure.coreDataFailure.maybeMap(
              serverError: (failure) => failure.errorString,
              orElse: () => "Unknown Error",
            ),
            orElse: () => "Unknown Error",
          ),
        ).show(context),
        dismissalFailure: (state) => FlushbarHelper.createError(
          duration: const Duration(seconds: 2),
          message: state.failure.maybeMap(
            coreData: (failure) => failure.coreDataFailure.maybeMap(
              serverError: (failure) => failure.errorString,
              orElse: () => "Unknown Error",
            ),
            orElse: () => "Unknown Error",
          ),
        ).show(context),
        orElse: () => null,
      );
}
