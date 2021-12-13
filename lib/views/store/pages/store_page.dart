import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/store/load_user/load_user_bloc.dart';
import 'package:worldon/application/store/store_app_bar_title/store_app_bar_title_bloc.dart';
import 'package:worldon/application/store/store_navigation_actor/store_navigation_actor_bloc.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/store/widgets/item_store_body/item_store_body.dart';
import 'package:worldon/views/store/widgets/my_items_body/my_items_body.dart';
import 'package:worldon/views/store/widgets/promotion_plans_body/promotion_plans_body.dart';
import 'package:worldon/views/store/widgets/store_app_bar.dart';
import 'package:worldon/views/store/widgets/store_bottom_navigation_bar.dart';

class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<StoreNavigationActorBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<LoadUserBloc>()
              ..add(
                const LoadUserEvent.loadedUser(),
              ),
          ),
          BlocProvider(
            create: (context) => getIt<StoreAppBarTitleBloc>(),
          ),
        ],
        child: BlocBuilder<StoreNavigationActorBloc, StoreNavigationActorState>(
          builder: (context, state) => Scaffold(
              appBar: StoreAppBar(),
              body: IndexedStack(
                index: context.read<StoreNavigationActorBloc>().state.map(
                      itemStoreView: (_) => 0,
                      coinStoreView: (_) => 0,
                      promotionPlansView: (_) => 1,
                      myItemsView: (_) => 2,
                    ),
                children: const [
                  ItemStoreBody(),
                  // CoinStoreBody(),
                  PromotionPlansBody(),
                  MyItemsBody(),
                ],
              ),
              bottomNavigationBar: StoreBottomNavigationBar(),
            ),
        ),
      );
}
