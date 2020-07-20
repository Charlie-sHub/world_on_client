import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/application/tag_management/tag_card_actor/tag_card_actor_bloc.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class TagCard extends StatelessWidget {
  final Tag tag;

  const TagCard({Key key, this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TagCardActorBloc, TagCardActorState>(
      builder: (context, state) {
        context.bloc<TagCardActorBloc>().add(TagCardActorEvent.initialized(tag));
        return Card(
          shape: const RoundedRectangleBorder(),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                AutoSizeText(
                  tag.name.getOrCrash(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: WorldOnColors.background,
                  ),
                ),
                // TODO: Make a separate bloc for determining this
                // one that is provided per card
                state.maybeMap(
                  notInInterests: (_) => IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.heart,
                      color: WorldOnColors.red,
                    ),
                    onPressed: () => context.bloc<TagCardActorBloc>().add(
                          TagCardActorEvent.addedToInterests(tag),
                        ),
                  ),
                  inInterests: (_) => IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.solidHeart,
                      color: Colors.grey,
                    ),
                    onPressed: () => context.bloc<TagCardActorBloc>().add(
                          TagCardActorEvent.dismissedFromInterests(tag),
                        ),
                  ),
                  orElse: () => Container(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
