import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/application/store/store_navigation_actor/store_navigation_actor_bloc.dart';
import 'package:worldon/generated/l10n.dart';

class StoreBottomNavigationBar extends StatelessWidget {
  static const _storeIndex = 0;
  static const _myItemsIndex = 1;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) => _onTap(index, context),
      currentIndex: context.read<StoreNavigationActorBloc>().state.map(
            storeView: (context) => _storeIndex,
            myItemsView: (context) => _myItemsIndex,
          ),
      items: [
        BottomNavigationBarItem(
          icon: const FaIcon(FontAwesomeIcons.store),
          label: S.of(context).storeNavigationBarStore,
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: const FaIcon(FontAwesomeIcons.list),
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
