import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/item/item.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ItemCard extends StatelessWidget {
  final Item item;

  const ItemCard({
    Key key,
    @required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.white,
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          color: WorldOnColors.primary,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Image.network(
                    item.imageURL,
                    scale: 6,
                  ),
                ),
                Row(
                  children: [
                    AutoSizeText(
                      item.value.toString(),
                      style: const TextStyle(
                        color: WorldOnColors.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Image.asset(
                      "assets/world_on_coin.png",
                      scale: 7,
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: AutoSizeText(
                    item.name.getOrCrash(),
                    style: const TextStyle(
                      color: WorldOnColors.background,
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: AutoSizeText(
                    item.description.getOrCrash(),
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      color: WorldOnColors.background,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
