import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/search/tag_selector/tag_selector_bloc.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/cards/simple_tag_display.dart';
import 'package:worldon/views/core/widget/cards/simple_tag_error_display.dart';

class TagSelection extends StatelessWidget {
  const TagSelection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TagSelectorBloc, TagSelectorState>(
      builder: (context, state) => Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.3,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.start,
                spacing: 5,
                runSpacing: 2,
                children: <Widget>[
                  ...state.tagsSelected.asSet().map(
                    (tag) {
                      if (tag.isValid) {
                        return InkWell(
                          onTap: () => context.bloc<TagSelectorBloc>().add(
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
              if (state.tagsSelected.size >= TagSet.maxLength)
                const Text(
                  "You can't add more than ${TagSet.maxLength} tags",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: WorldOnColors.red,
                    fontWeight: FontWeight.bold,
                  ),
                )
              else if (state.tagsSelected.size <= 0)
                const Text(
                  "No tags selected",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: WorldOnColors.red,
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
