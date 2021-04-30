import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';

class WorldOnCachedImage extends StatelessWidget {
  const WorldOnCachedImage({
    Key? key,
    required String imageURL,
  })   : _imageURL = imageURL,
        super(key: key);

  final String _imageURL;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: _imageURL,
      fit: BoxFit.fill,
      progressIndicatorBuilder: (context, url, progress) => const Padding(
        padding: EdgeInsets.all(15),
        child: WorldOnProgressIndicator(),
      ),
    );
  }
}
