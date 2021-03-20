import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:worldon/views/core/routes/router.gr.dart';

class StorePageButton extends StatelessWidget {
  const StorePageButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.all(0),
      icon: const Icon(
        Icons.account_balance_wallet_outlined,
        size: 35,
      ),
      onPressed: () => context.navigator.push(
        Routes.storePage,
      ),
    );
  }
}
