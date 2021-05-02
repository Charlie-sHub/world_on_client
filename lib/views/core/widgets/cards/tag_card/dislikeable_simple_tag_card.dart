import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/tag_management/tag_card_actor/tag_card_actor_bloc.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class DisLikeableSimpleTagCard extends StatelessWidget {
  const DisLikeableSimpleTagCard({
    Key? key,
    required this.tag,
  }) : super(key: key);

  final Tag tag;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.read<TagCardActorBloc>().add(
            TagCardActorEvent.dismissedFromInterests(tag),
          ),
      child: Chip(
        elevation: 5,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        backgroundColor: WorldOnColors.primary,
        label: Text(
          tag.name.getOrCrash(),
          style: const TextStyle(
            color: WorldOnColors.accent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
