import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/search/tag_selector/tag_selector_bloc.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/cards/simple_tag_display.dart';
import 'package:worldon/views/core/widgets/cards/simple_tag_error_display.dart';

class TagSelection extends StatelessWidget {
  const TagSelection({
    Key? key,
    required this.showErrorMessage,
  }) : super(key: key);

  final bool showErrorMessage;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TagSelectorBloc, TagSelectorState>(
      builder: (context, state) => Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.3,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Wrap(
                spacing: 5,
                runSpacing: 2,
                children: <Widget>[
                  ...state.tagsSelected.asSet().map(
                    (tag) {
                      if (tag.isValid) {
                        return InkWell(
                          onTap: () => context.read<TagSelectorBloc>().add(
                                TagSelectorEvent.removedTag(tag),
                              ),
                          child: SimpleTagDisplay(tag: tag),
                        );
                      } else {
                        return SimpleTagErrorDisplay(tag: tag);
                      }
                    },
                  ),
                ],
              ),
              if (state.tagsSelected.size >= TagSet.maxLength && showErrorMessage)
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    "${S.of(context).tagSelectionLimit} ${TagSet.maxLength}",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              else if (state.tagsSelected.size <= 0)
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    S.of(context).tagSelectionNone,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: WorldOnColors.red,
                    ),
                  ),
                )
              else
                Container(),
            ],
          ),
        ),
      ),
    );
  }
}
