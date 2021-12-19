import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/item/item.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ItemTile extends StatelessWidget {
  final Item item;

  const ItemTile({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListTile(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.trending_up_rounded,
              color: WorldOnColors.primary,
              size: 40,
            ),
          ],
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 5),
        title: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: AutoSizeText(
                          item.name.getOrCrash(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: AutoSizeText(
                          item.description.getOrCrash(),
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              color: Colors.grey,
            ),
          ],
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                AutoSizeText(
                  item.value.toString(),
                  style: const TextStyle(
                    color: WorldOnColors.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(width: 5),
                Image.asset(
                  "assets/world_on_coin.png",
                  scale: 10,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.schedule_rounded,
                  size: 20,
                ),
                const SizedBox(width: 5),
                AutoSizeText(
                  item.timeLimitInDays.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: WorldOnColors.accent,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(width: 5),
                AutoSizeText(
                  ": ${S.of(context).days}",
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
