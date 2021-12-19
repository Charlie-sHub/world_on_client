import 'package:flutter/material.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/store/widgets/item_store_body/coin_purchase_view.dart';
import 'package:worldon/views/store/widgets/item_store_body/item_list_builder.dart';
import 'package:worldon/views/store/widgets/item_store_body/item_store_header.dart';

class ItemStoreBody extends StatelessWidget {
  const ItemStoreBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          children: [
            const ItemStoreHeader(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: const [
                  SizedBox(height: 10),
                  ItemListBuilder(),
                  SizedBox(height: 10),
                  Divider(color: WorldOnColors.accent),
                  CoinPurchaseView(),
                ],
              ),
            ),
          ],
        ),
      );
}
