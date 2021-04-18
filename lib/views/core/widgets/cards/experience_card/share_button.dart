import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:social_share/social_share.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ShareButton extends StatelessWidget {
  final Experience experience;

  const ShareButton({
    Key? key,
    required this.experience,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.share_rounded,
        size: 30,
        color: WorldOnColors.background,
      ),
      onPressed: () => _share(
        context,
        experience,
      ),
    );
  }

  Future<void> _share(BuildContext context, Experience experience) async {
    // I don't really like having to download the image only to be able to share it
    // I'd like to rethink this
    final _response = await get(
      Uri.file(experience.imageURLs.first),
    );
    final _documentDirectory = await getApplicationDocumentsDirectory();
    final file = File(
      join(
        _documentDirectory.path,
        "${experience.title.getOrCrash()}_share_image.png",
      ),
    );
    file.writeAsBytesSync(_response.bodyBytes);
    // TODO: use environment variables instead of hardcoding the link
    SocialShare.shareOptions(
      "${experience.title.getOrCrash()} ${S.of(context).shareMessage} https://play.google.com/store/apps/details?id=com.worldon_app.worldon",
      imagePath: file.path,
    );
    file.delete();
  }
}
