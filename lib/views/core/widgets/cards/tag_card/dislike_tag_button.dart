import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/tag_management/tag_card_actor/tag_card_actor_bloc.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

@Deprecated("Use the DislikeableSimpleTagCard instead")
class DislikeTagButton extends StatelessWidget {
  @Deprecated("Use the DislikeableSimpleTagCard instead")
  const DislikeTagButton({
    Key? key,
    required this.tag,
  }) : super(key: key);

  final Tag tag;

  @override
  Widget build(BuildContext context) => IconButton(
        icon: const Icon(
          Icons.favorite_rounded,
          color: WorldOnColors.red,
          size: 35,
        ),
        onPressed: () => context.read<TagCardActorBloc>().add(
              TagCardActorEvent.dismissedFromInterests(tag),
            ),
      );
}
