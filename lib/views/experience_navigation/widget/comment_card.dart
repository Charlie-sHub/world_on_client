import 'package:auto_size_text/auto_size_text.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/cards/user_card/name_username_display.dart';
import 'package:worldon/views/core/widget/misc/user_image.dart';

class CommentCard extends StatelessWidget {
  const CommentCard({
    Key key,
    @required this.comment,
  }) : super(key: key);

  final Comment comment;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5),
                child: UserImage(user: comment.poster),
              ),
              NameUsernameDisplay(user: comment.poster),
              // TODO: Implement report functionality
              IconButton(
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ),
                onPressed: () => FlushbarHelper.createInformation(
                  duration: const Duration(seconds: 2),
                  message: S.of(context).placeholder,
                ).show(context),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: AutoSizeText(
              comment.content.getOrCrash(),
              style: const TextStyle(
                color: WorldOnColors.background,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: () => FlushbarHelper.createInformation(
                  duration: const Duration(seconds: 2),
                  message: S.of(context).placeholder,
                ).show(context),
                child: const Text(
                  "Reply",
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.thumb_up,
                  color: WorldOnColors.accent,
                ),
                onPressed: () => FlushbarHelper.createInformation(
                  duration: const Duration(seconds: 2),
                  message: S.of(context).placeholder,
                ).show(context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
