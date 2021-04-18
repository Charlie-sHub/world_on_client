import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/store/buy_coins/buy_coins_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class BuyTenCoinsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          WorldOnColors.primary,
        ),
      ),
      onPressed: () => context.read<BuyCoinsBloc>().add(
            const BuyCoinsEvent.boughtCoins(10),
          ),
      child: Text(
        S.of(context).buy10Coins,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
    );
  }
}
