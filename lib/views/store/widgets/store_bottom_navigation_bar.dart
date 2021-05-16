import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/store/store_app_bar_title/store_app_bar_title_bloc.dart';
import 'package:worldon/application/store/store_navigation_actor/store_navigation_actor_bloc.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class StoreBottomNavigationBar extends StatelessWidget {
  static const _itemStoreIndex = 0;

  // static const _coinStoreIndex = 1;
  static const _promotionPlansIndex = 1;
  static const _myItemsIndex = 2;

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
      height: kBottomNavigationBarHeight - 15,
      gapLocation: GapLocation.none,
      iconSize: 32,
      backgroundColor: WorldOnColors.background,
      onTap: (index) => _onTap(index, context),
      activeIndex: context.read<StoreNavigationActorBloc>().state.map(
            itemStoreView: (_) => _itemStoreIndex,
            coinStoreView: (_) => _itemStoreIndex,
            promotionPlansView: (_) => _promotionPlansIndex,
            myItemsView: (_) => _myItemsIndex,
          ),
      activeColor: WorldOnColors.primary,
      inactiveColor: WorldOnColors.accent,
      icons: const [
        Icons.store,
        // Icons.account_balance_wallet_rounded,
        Icons.date_range_rounded,
        Icons.list_rounded,
      ],
    );
  }

  void _onTap(int index, BuildContext context) {
    switch (index) {
      case _itemStoreIndex:
        context.read<StoreNavigationActorBloc>().add(
              const StoreNavigationActorEvent.itemStoreTapped(),
            );
        context.read<StoreAppBarTitleBloc>().add(
              const StoreAppBarTitleEvent.showedStore(),
            );
        break;
      /*
      case _coinStoreIndex:
        context.read<StoreNavigationActorBloc>().add(
              const StoreNavigationActorEvent.coinStoreTapped(),
            );
        break;
         */
      case _promotionPlansIndex:
        context.read<StoreNavigationActorBloc>().add(
              const StoreNavigationActorEvent.promotionPlansTapped(),
            );
        context.read<StoreAppBarTitleBloc>().add(
              const StoreAppBarTitleEvent.showedPromotions(),
            );
        break;
      case _myItemsIndex:
        context.read<StoreNavigationActorBloc>().add(
              const StoreNavigationActorEvent.myItemsTapped(),
            );
        context.read<StoreAppBarTitleBloc>().add(
              const StoreAppBarTitleEvent.showedMyItems(),
            );
        break;
      default:
        context.read<StoreNavigationActorBloc>().add(
          const StoreNavigationActorEvent.itemStoreTapped(),
            );
        break;
    }
  }
}
