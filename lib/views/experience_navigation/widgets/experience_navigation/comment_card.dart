import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/views/core/widgets/misc/user_image.dart';

// TODO: Implement report functionality, edit and delete
class CommentCard extends StatelessWidget {
  const CommentCard({
    Key? key,
    required this.comment,
  }) : super(key: key);

  final Comment comment;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: UserImage(
        user: comment.poster,
        avatarRadius: 16,
        checkIconSize: 12,
      ),
      title: AutoSizeText.rich(
        TextSpan(
          text: "@${comment.poster.username.getOrCrash()}",
          style: const TextStyle(
            fontSize: 14,
          ),
          children: [
            TextSpan(
              text: " ${comment.content.getOrCrash()}",
              style: TextStyle(
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
        minFontSize: 10,
        maxFontSize: 14,
        textAlign: TextAlign.justify,
      ),
      /*
      trailing: IconButton(
        icon: const Icon(
          Icons.more_vert,
          color: Colors.grey,
        ),
        onPressed: () => FlushbarHelper.createInformation(
          duration: const Duration(seconds: 2),
          message: S.of(context).placeholder,
        ).show(context),
      ),
       */
    );
  }
}
