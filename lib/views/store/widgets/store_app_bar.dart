import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/store/store_app_bar_title/store_app_bar_title_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class StoreAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: BlocBuilder<StoreAppBarTitleBloc, StoreAppBarTitleState>(
        builder: (context, state) => Text(
          state
              .map(
                initial: (_) => "World On",
                store: (_) => S.of(context).storePageTitle,
                promotions: (_) => S.of(context).promotionPlans,
                myItems: (_) => S.of(context).storeNavigationBarMyItems,
              )
              .toUpperCase(),
          style: const TextStyle(
            fontWeight: FontWeight.w900,
            color: WorldOnColors.primary,
          ),
        ),
      ),
      centerTitle: true,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight - 15);
}
