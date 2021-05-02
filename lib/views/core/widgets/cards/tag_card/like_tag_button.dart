import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/application/tag_management/tag_card_actor/tag_card_actor_bloc.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';

@Deprecated("Use the LikeableSimpleTagCard instead")
class LikeTagButton extends StatelessWidget {
  const LikeTagButton({
    Key? key,
    required this.tag,
  }) : super(key: key);

  final Tag tag;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const FaIcon(
        FontAwesomeIcons.heart,
        color: Colors.grey,
        size: 35,
      ),
      onPressed: () => context.read<TagCardActorBloc>().add(
            TagCardActorEvent.addedToInterests(tag),
          ),
    );
  }
}
