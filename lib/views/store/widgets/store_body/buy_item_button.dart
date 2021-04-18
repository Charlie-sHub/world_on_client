import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/store/buy_item/buy_item_bloc.dart';
import 'package:worldon/domain/core/entities/item/item.dart';
import 'package:worldon/generated/l10n.dart';

class BuyItemButton extends StatelessWidget {
  const BuyItemButton({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.read<BuyItemBloc>().add(
            BuyItemEvent.boughtItem(item),
          ),
      child: Text(
        S.of(context).buyItem,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
