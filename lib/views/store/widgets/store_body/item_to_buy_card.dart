import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/item/item.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/store/widgets/store_body/buy_button_builder.dart';

class ItemToBuyCard extends StatelessWidget {
  final Item item;

  const ItemToBuyCard({
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
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.network(
                  item.imageURL,
                  scale: 7,
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
                          fontSize: 18,
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
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 3,
                      horizontal: 5,
                    ),
                    child: BuyButtonBuilder(item: item),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: AutoSizeText(
                  item.timeLimitInDays.toString(),
                  style: const TextStyle(
                    color: WorldOnColors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: AutoSizeText(
                  S.of(context).lasts,
                  style: const TextStyle(
                    color: WorldOnColors.background,
                    fontSize: 15,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
