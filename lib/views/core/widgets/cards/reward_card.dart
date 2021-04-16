import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/misc/world_on_cached_image.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';

class RewardCard extends StatelessWidget {
  final Reward reward;

  const RewardCard({
    Key key,
    @required this.reward,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AutoSizeText(
                  reward.name.getOrCrash(),
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: WorldOnColors.background,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: AutoSizeText(
                    reward.description.getOrCrash(),
                    style: const TextStyle(
                      fontSize: 12,
                      color: WorldOnColors.background,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => showDialog(
                context: context,
                builder: (context) => Dialog(
                  backgroundColor: WorldOnColors.primary,
                  child: InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: WorldOnCachedImage(
                        imageURL: reward.imageURL,
                      ),
                    ),
                  ),
                ),
              ),
              child: CachedNetworkImage(
                imageUrl: reward.imageURL,
                progressIndicatorBuilder: (context, url, progress) => const Padding(
                  padding: EdgeInsets.all(25),
                  child: WorldOnProgressIndicator(),
                ),
                height: 100,
                width: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
