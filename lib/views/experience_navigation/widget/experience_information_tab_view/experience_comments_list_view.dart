import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/cards/error_card.dart';
import 'package:worldon/views/experience_navigation/widget/comment_card.dart';

class ExperienceCommentsListView extends StatelessWidget {
  const ExperienceCommentsListView({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      color: WorldOnColors.background,
      child: ListView.builder(
        padding: const EdgeInsets.all(5),
        itemCount: experience.comments.length,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          final _comment = experience.comments.elementAt(index);
          if (_comment.isValid) {
            return CommentCard(comment: _comment);
          } else {
            return ErrorCard(
              entityType: "Comment",
              valueFailureString: _comment.failureOption.fold(
                () => "",
                (failure) => failure.toString(),
              ),
            );
          }
        },
      ),
    );
  }
}
