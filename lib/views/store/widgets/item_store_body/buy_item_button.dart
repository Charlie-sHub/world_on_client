import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:worldon/application/store/buy_item/buy_item_bloc.dart';
import 'package:worldon/domain/core/entities/item/item.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class BuyItemButton extends StatelessWidget {
  const BuyItemButton({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return SlidableAction(
      backgroundColor: WorldOnColors.primary,
      onPressed: (context) => context.read<BuyItemBloc>().add(
            BuyItemEvent.boughtItem(item),
          ),
      label: S.of(context).buyItem,
    );
  }
}
