import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/store/store_navigation_actor/store_navigation_actor_bloc.dart';
import 'package:worldon/generated/l10n.dart';

class StoreBottomNavigationBar extends StatelessWidget {
  static const _storeIndex = 0;
  static const _promotionPlansIndex = 1;
  static const _myItemsIndex = 2;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) => _onTap(index, context),
      currentIndex: context.read<StoreNavigationActorBloc>().state.map(
            storeView: (_) => _storeIndex,
            promotionPlansView: (_) => _promotionPlansIndex,
            myItemsView: (_) => _myItemsIndex,
          ),
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.store),
          label: S.of(context).storeNavigationBarStore,
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.date_range_rounded),
          label: S.of(context).storeNavigationBarPromotionPlans,
          backgroundColor: Colors.orange,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.list_rounded),
          label: S.of(context).storeNavigationBarMyItems,
          backgroundColor: Colors.green,
        ),
      ],
    );
  }

  void _onTap(int index, BuildContext context) {
    switch (index) {
      case _storeIndex:
        context.read<StoreNavigationActorBloc>().add(
              const StoreNavigationActorEvent.storeTapped(),
            );
        break;
      case _promotionPlansIndex:
        context.read<StoreNavigationActorBloc>().add(
              const StoreNavigationActorEvent.promotionPlansTapped(),
            );
        break;
      case _myItemsIndex:
        context.read<StoreNavigationActorBloc>().add(
              const StoreNavigationActorEvent.myItemsTapped(),
            );
        break;
      default:
        context.read<StoreNavigationActorBloc>().add(
              const StoreNavigationActorEvent.storeTapped(),
            );
        break;
    }
  }
}
