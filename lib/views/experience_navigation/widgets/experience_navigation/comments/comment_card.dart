import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/views/core/widgets/misc/user_image.dart';

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
        userId: comment.poster.id,
        imageUrl: comment.poster.imageURL,
        adminPowers: comment.poster.adminPowers,
        avatarRadius: 16,
        checkIconSize: 12,
      ),
      title: AutoSizeText.rich(
        TextSpan(
          text: "@${comment.poster.username.getOrCrash()}",
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
          children: [
            TextSpan(
              text: " ${comment.content.getOrCrash()}",
              style: TextStyle(
                color: Colors.grey.shade600,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
        minFontSize: 10,
        maxFontSize: 14,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
