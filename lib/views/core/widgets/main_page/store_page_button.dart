import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:worldon/views/core/routes/router.gr.dart';

class StorePageButton extends StatelessWidget {
  const StorePageButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      icon: const Icon(
        Icons.local_grocery_store,
        size: 25,
        // color: WorldOnColors.accent,
      ),
      onPressed: () => context.router.push(
        const StorePageRoute(),
      ),
    );
  }
}
