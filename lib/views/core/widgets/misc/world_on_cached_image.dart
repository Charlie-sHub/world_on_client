import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:worldon/views/core/widgets/misc/world_on_plasma.dart';

class WorldOnCachedImage extends StatelessWidget {
  const WorldOnCachedImage({
    Key? key,
    required String imageURL,
  })  : _imageURL = imageURL,
        super(key: key);

  final String _imageURL;

  @override
  Widget build(BuildContext context) => CachedNetworkImage(
        imageUrl: _imageURL,
        fit: BoxFit.cover,
        progressIndicatorBuilder: (context, url, progress) => WorldOnPlasma(),
      );
}
